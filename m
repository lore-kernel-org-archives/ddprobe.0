Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A623FFD
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765684974; cv=none; b=p21nqsFqJw4lXZ7ProaWczgKq0m0mbKQLe79ga5UZpB57PvX/x4eWpUqcU5dVRx9mHflMwztbHOotlBDinyu0NG+SnllAt0e9PKKrX3icFTuPBISifjsEW6wR2XfawzX7VWmMyAJum4guZUgIa0zNb/5lntIdZaRK08xh4KAYFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765684974; c=relaxed/simple;
	bh=U0W7CFZQr4dpVIyMjJJA73k6jMPuKJhdUa94VlLP+ec=;
	h=To:Subject:From:Message-Id:Date; b=GkAUOD3i8ngErnGp5HlDcdF/ct8qivcFsSFm5bH2YfpK1HDttv84nNQTw8lJwFpFxKcyb7nSTyHCeZ7Y0HR6/Woew01bzUd0vrVaazqSFG7MiSQdjdSfAo9dHl8idjANNbv8HwyLK8rJJrCiJbYdLCToeis/1iBdR+YoT/0kaUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuR3LUSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuR3LUSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1A8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765684973;
	bh=U0W7CFZQr4dpVIyMjJJA73k6jMPuKJhdUa94VlLP+ec=;
	h=To:Subject:From:Date:From;
	b=EuR3LUSEjhzqSI7YU9Yzp/VRB0Aa1iXxuufQfXGe7pPEqhBhz2rtdyaq1z80l+O2s
	 04wO67qdwecqYLmOuVT6KxxlhEpmovk8Jq0TZZd8ybZlDAkJ86b40aUkNtA6SACwFb
	 RpL6ePgGhq8EA5pkkayWDYleCCeOgY73ZASpf4FzUZw6QTEX08naLnDSWgY/QPj4zl
	 caPkYYKedOFI9vR3OuNgRnrX5YTc7fjtzIFIonQZar5HpQ/L/KsJ0oALdMjc2T/AuA
	 eQO6cKjFTvoT9tFjIR9qHnxT8CmOhIEP+w328WgIQ9C/ZJFdsPhFmEyVzcnoN1baZN
	 WBDn2RAnNAMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605ACFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568497359.29543.7951659057692226577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a15572729c37bc6db0ee8c3247c7047b7af80681f6ac18c5313c6289ca924b1
Date: Sun, 14 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765684973
