Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB3826563B
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751917194; cv=none; b=OkwBjYz/UL8IAG1/0nIRYCmokzOrOanTlYMYz3xga5yK5T9AWkuzkSshRPGVcS3RUpDzxEfAR1uurZBUj57ntdy95GKHTB0UhXUxeik+/aUr/oiD78HfUBFDHugEBBFj+yaWUQFXMfZe3YpJL7igzAZV0wMbnmHfM10KgXose6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751917194; c=relaxed/simple;
	bh=PK8txr3+25Ru8xZVKRGGG87LBevUSsVuNkItoKJ1pgc=;
	h=To:Subject:From:Message-Id:Date; b=vDrRsIAj0Mjh+kiXyVuV94zTeETM4rI/3HenH/mqoTy46NMGXnh32mnJPyGmrfXFPECNog9D26bOPzFpBPeF3tg8Ss89PMpAd4b6N3qn4KHpZGJ8UpFzFw/gs+4G5B/4O+8Wd0xVdBoD80Q8MTBHtyV4so4AhBYMHa3zL6Sic6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6QndQN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6QndQN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC7AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751917193;
	bh=PK8txr3+25Ru8xZVKRGGG87LBevUSsVuNkItoKJ1pgc=;
	h=To:Subject:From:Date:From;
	b=D6QndQN2Sfb2gt3gerrGDvXVowMzamBAFf7VVx6tKRHAMOIm5IBl4hTYtuBk8ApnS
	 PO/+j6VVmhsautMXwJU02+UJ8DurRrNdExV0oPqpxZhrBINju/VjcEOwZdMbwTvKUr
	 aKlmHt0Z796VP/76hvy28OFZppmqkDhAMYxUoJ4f/ww2mxFedeNpTZU5mgVC8PUi1R
	 XQzyZKIUzRGIhjXXe/RtW5BTQXjxCiqgGV2vmzP5OPD1+Ny16xNP1KdjVmtv/iCYas
	 mcUKE7fGC4NW9EIWI2AcC1v4MGhkEhydvhkfDEiE8kbUJcOsdH8h4zJNmp7tJswGzl
	 UkKWJcIQxBZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE89C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191719358.7328.5482991574892141313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec333dec53bb6e079cd664941fc53309d24f3897185d34cdc8b90a05ad854d8
Date: Mon, 07 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751917193
