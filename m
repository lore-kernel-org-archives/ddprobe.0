Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BDD3FE5
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753009794; cv=none; b=RwiF5BQNRSTq5WAO4bfgOrgJCZuZKYbnhvM3SJdMRxLWYCCqmREFAKa+RruSRD/V63XPFx9honQ22SH3Lfj+7s22m5t7uA7xZZRIyFZrqhzygPh3nw38sYjkmXkTiN8EcFb5edbBCFkAbz91ENhjQ598nwNM1KiNe2Or+dufUZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753009794; c=relaxed/simple;
	bh=4cHTMMay4e2Pm1+FOxWo+uwLL09zy4mqVyI5ywBImhY=;
	h=To:Subject:From:Message-Id:Date; b=A7E6B8SYHjFj4W2n4L0S7wKl1/42UPYgmlsYZjJERGKFgp5iGElkdjyoh0VpBN96r6DoqsC2Kzv91ayiMVxHt5nAQF2r3AV23F4rcCEG0HlO8Nkuo2l8HiAXahauX1wIpcveklfXy0DQXotoKEO1XonqS2RfWvhxtnlpeSo8mvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOVlZs1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOVlZs1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE82C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753009793;
	bh=4cHTMMay4e2Pm1+FOxWo+uwLL09zy4mqVyI5ywBImhY=;
	h=To:Subject:From:Date:From;
	b=HOVlZs1PnU/P6sJZPBV1AER38GNstMA4jpSQSgk1W9yLlA4uvr2K6Fkpe3nMxBS9o
	 FCnPwhpclqm9XpwIul7c0NnWUUYJO0H3cA0waS4vHOKuMyCAt94I2V0+w/f+YhWVP9
	 yOU45KFmKr8xrc+VeLV0KXtFFhc6eG5Wua29ezmDBD42jVJpmFCEg3CtYvyCBgQwsV
	 ZvxWbNptAV4drfDr1TQkCtx06ByWb6aORqwPRDBwi5/gJimwtarkD9sdrkkttAXq9V
	 sPvWj59XRC4qNZFTQxquHA4edsaHd2pvzSQHs/RF41RQ4fTRZaQawU75gCxHrjREsf
	 6YPlXzH2qEeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AC2C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300979359.32271.14634316723950719005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2e3b5de90403ee1c3881a26e298bcd69b8a96b703adef47b932ec7be2158a9
Date: Sun, 20 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753009793
