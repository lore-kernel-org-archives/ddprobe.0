Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36308327C08
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779527554; cv=none; b=sgELS7+0M1XsfkBDakjzwYGF7ENWYARf4VFg3DsFUNO/zbpeC2mTo3Wn+k8oSplCecAbMg5pgXY01ygaCVLNK4EG9c0Ajh7CibrNeNTutrHF4lA5fa3dAEfolwK7v/p2rzVDsiaU/pe3NumPXl4DjRgJ0ycet/dYvmjk3459To4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779527554; c=relaxed/simple;
	bh=tm2YkrkU007OErUv+9oBO+MHXhD4KWdqh5zbmDAQShk=;
	h=To:Subject:From:Message-Id:Date; b=emgn+zXgyYWCsBchXuFDN478+sdDGdcawRAgLkL7l7sVpPjjWk59xHoDa10NHVWJk5w7skamU7AowCW1tD9lfa/DSr4qQZUwHdRjwjJCw90cxbhKS511e87zw0Ghev8XksQZhLBT6iYTaodDp3bMmBKLRLJ0AyRGKAbZX7OD+YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwnGWhbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwnGWhbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD77C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779527553;
	bh=tm2YkrkU007OErUv+9oBO+MHXhD4KWdqh5zbmDAQShk=;
	h=To:Subject:From:Date:From;
	b=kwnGWhbGP/6nHq5EXCeMLLiZ14Qjmcrw+XlyNAZtoT2MwOYiZpWELr1NYta//3XV2
	 8UQBzdOkSaDoxwKzDAOd2uMjpKrJltGRg5S+NipAYfLf90bGcvqiEsSh/13Zbqudot
	 YJIGGMJSUMBnG5I1HM0Yof2cFXqGhUDGSCPx2mt6X5d9fBYYgnzmlj+OhyG0Lu4vK/
	 9X/LYk8Sh7CQql3VwvoqbkPhR4M5sm6Hy6sU9aBTVClNwvm5k6yMohEHEcOLguYt63
	 P3nPHjQWtPD8Qvmzzj6nCFqdcuP/YyVKP07keep5lXjpAgWyC6gRh+3qEzl79C/cOm
	 g7dxA3/fL0Chw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A876FCD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952755368.23231.1299631967856624635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69fada16bbf3000a83ab357dd278d6a428e3c3b646015aa1a860ef8b56cc596f
Date: Sat, 23 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779527553
