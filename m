Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1404030BF69
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762172994; cv=none; b=PLPa1WdH9Y2zXaeu0ysAz/pzLoYda8oY408fuhPg6WJ0t8ZwzoC0PAkykuZa8UKiQn9670FZ3q0L1zhbIEOq+GRsa/ZvtFJjShW/sE/zMRZEL2Vw6WMQjltkxRT2uMm0NO905wzZ7aNFPJGzJZmSR7rQUAGiX3DAuCR2pQGlwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762172994; c=relaxed/simple;
	bh=wE4lWjbl3v5nQHmkA9GY4Mf73av+gLNbU3fQLLqQNxU=;
	h=To:Subject:From:Message-Id:Date; b=HFdnVSBPwMQnMtCzJm3/G0ayY6vljNG50hRPWuDk6IeR1MNUM90IOt5un2fA3hONCwhdysd5zltYy/xx65wXLH11cHFHw2uQmiMM7MJs5R59lZA3x6hInZNhKf6/lwXcD2mFXO+qw/LRHp3IaUYQrK1By5OLb8QtX0BWajMPabU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCcQJjph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCcQJjph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2CC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762172993;
	bh=wE4lWjbl3v5nQHmkA9GY4Mf73av+gLNbU3fQLLqQNxU=;
	h=To:Subject:From:Date:From;
	b=BCcQJjphrSdVULKpG8herOsjsMOm8c8ERvJYLGu5EyVPRANpupHEj7546kGm/TBtg
	 K0YfJcJcTxU18+O5T17zOGoNN+0QwbnBqpBdcEXrOgnP+m2IGnAlRr8PeUjCfURhTV
	 uqYUoW6SjdzVfY07M70yJ1N7/ZK34+lUiYTNH/lrQgoZ/yaEIujbpC/f7UZNyou/QY
	 qtWgKvlRPfy5/2COYZyCw3bIldQgHzwR4ppNqSgrB84adzMp4R3gjD2ytuIERhAChk
	 zdRVPXRwOTJiwZ92JuGnuTwZW+TDT0lUtsIGoqJ3chMYmN9ecpbmGb/bja26vFustC
	 RKWsi01oj7JMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393ACCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217299359.3185.6722922978148267351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6e64c181326b1da651a2cbe73859327c2d77b94f291867aee7112db91c7464
Date: Mon, 03 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762172993
