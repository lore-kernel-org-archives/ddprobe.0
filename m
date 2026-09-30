Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326863624AB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790734834; cv=none; b=R5mKqWZfuk/0lQZYMM4vQQxUn3vJekk7q2ftuYDEuCmI10qxNGJ/jEcZPRQDsS1q/qsSXTvlwVrYh0JPyi3tMKQAOj7W14uA89vqqK4fQWaQhnxwGlIamVSKVqULW7JUOzxGejzukQ0BQLy6olVPqwb4jXJN67AQzTqhJXV4XKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790734834; c=relaxed/simple;
	bh=czqkC6gQxozQAwi8xO2oQbUAjmGuiZqllWlcA9J+O5k=;
	h=To:Subject:From:Message-Id:Date; b=ciSXNx9G3cBKqa2gpBeMe0b20nhGoR8MBw3+ms3u8nt226ni9FbjLnHNObJSwijvVoBmesvNVjhSUrU1y1t956M5ourN5mBENglss4oWq8/ICnDwn+09gg0N6AxMxgKiTAIApVkrB9BLrXL7Hduh8Zk8dKK71qQ2/vM8RH3Lv68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pj6olXwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pj6olXwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70D0C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790734833;
	bh=czqkC6gQxozQAwi8xO2oQbUAjmGuiZqllWlcA9J+O5k=;
	h=To:Subject:From:Date:From;
	b=Pj6olXwjzZXsZ7FSkmu8p7NhmJqvjU/eWwB1dUdQg5+BJVXUGb7PxyFnGtwIks2al
	 jfS0X9g2lfoJRRp7oY26NP6MotClIGnjxgNDra3VZ/iUiKnEoiGU3VKEBzQOhnMI3Z
	 iCwvbLXXHuADqoiBtcwbAGPdr37KcWI85Besw5mU7YL1fMm4QoIWUVmMJ3H84uwykA
	 D6ZnurtTscQac5EfzzglKYVJc6dDL233Lbc5SDABfuZnF/wCkMUwCm7LRYDE8Mb1Pz
	 Izra9fGDGboWlHzPQphS/qcwzg3PKiStbEi896coIL56g4OZW56uUPWCNEsn7R8pas
	 puEtFnnZqKMIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD509CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073483368.29799.17921198647028479327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc852b3b87ec2c01055b8d9bbabea46dd915ec835a461cfc49a2ebf5efdab70
Date: Wed, 30 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790734833
