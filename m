Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F7317FE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736076954; cv=none; b=rsqGYsbT2lV8KxkwL5HZ42W1N6IEDwVoDtH6wQn8jYo9uu+AQkyfnwpTnZO6mfFpznUJdWBOGwxPubyz46FZ4b2NAse4PSJhRM88rzIlItQEgvu776vNkzFMHyOJon/+ae4insGqwtCoG2BDeCAtU4bdusNGtt3cKdMdHycP2QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736076954; c=relaxed/simple;
	bh=J4mJWN7yRgWjizTK62hbvcH6HfFA8RPYBogSiFJZZYc=;
	h=To:Subject:From:Message-Id:Date; b=YL+/7rVn74rBporj68W7uIw13CSskG0Fdl0dkkU3j+f1QU3alarKDNkpeHeWBv22+owqmPx7RQgTS0dhmMDsFouOhYcoaLWrMEFL7gW+mzlRhCtoNTOTovLxCNvfy+2m79v56G+3P5MMNMmdf85dEBlC3/Li9xoH7b8v66ffPjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvRcfHro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvRcfHro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B326C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736076954;
	bh=J4mJWN7yRgWjizTK62hbvcH6HfFA8RPYBogSiFJZZYc=;
	h=To:Subject:From:Date:From;
	b=IvRcfHroOJz67/T9HO7H59zsEu2L7lnG5WuPJoL9DgV1gSBaix3qJl+bUdrXZdoeu
	 Em2EVGoy7f0gQ+mD/0X8HRZeaP5m5Rq6nap9dFkUQ0VVzm05r2xia164bx8aky0DuM
	 skLCa/VFGeRWx7lpGwJqnWK8PIjvyMN9bwO3vS10qPfeYPgFoB7fcTh1DLlJ6+w4Oa
	 eGQ0pQ5B3VBuQxIg9TNCLLFH66VmGMY5LQpVL7n8ntxIWl9InPm/Zvjprvr6ytjx4C
	 39ROTdxeL462LWkMjUbGT1edVV7pJ/PqHYiUGO3FVhBDR8sVskxdf+5icfrWuwWPwy
	 ZO+dO/RPd6oQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1974E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607695385.12301.5181442489520757152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9a0ddaf96053bfb73e95cb98c6acee798962e5d9d3c3dc5e2fb7c4604319b5
Date: Sun, 05 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736076953
