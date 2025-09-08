Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5291A3167
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757304594; cv=none; b=J38r4z/j4DhTPHL4pl+a5QHdtbbTnvSC4VMhwuG33EbBN4jTgRU+Dctuu5zDLimcHac9KW+fmEkKZTOALMl66ZcDFgzVv8BK+AzL423x7QuQKsPrKAXg1hLSDZ3+GFRXoBQjj/jG0p7V43JkzERk/1ry4qo+FI/IwL97BzF7t1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757304594; c=relaxed/simple;
	bh=tgKldMZh3fNm1jquKj8cMmVsUCV4DhGadgqJgP1iEOg=;
	h=To:Subject:From:Message-Id:Date; b=qYAXAcB8I6lnPCGhJ2yUiN5D09lH4k/VDAhSs3efKwEOcs93JkUDtcd2bcnGtrseE8B59QSKaz+9kSDKzdgbAvFBvb1fwT7JtBScNo3h/ft4BUDvA2SV0JWvdbHvW46VSnVy7dPlN/rYZ0953+JniC7doidN5zoaZha4CvAGmew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tigz99Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tigz99Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757304593;
	bh=tgKldMZh3fNm1jquKj8cMmVsUCV4DhGadgqJgP1iEOg=;
	h=To:Subject:From:Date:From;
	b=Tigz99Wsn+5OrBOZ9VPtC4GnwmegAr6oebyeM7bnr7+PTFR0YsbkN/K7WuxCJ9ByJ
	 +XoZgcMrqdLDgGc6jFvChLTc2t+zLt5d79IIPGKHU1JPjWDyP83pWnApR6zBDEn7YA
	 pRZ3FH2m9MmCn4DtIKYTsCyqHB5vnjpZhpR9/8cK8J7ibL65MTNWRb6tKzkfJTWc93
	 L9yG6SxOmoAZrlly34wQ9dlhXHfQ69NPnaxQAAkk7TrvSc1zWmxGN+1xlcy7qp90pS
	 LT9MvGBwzRrQDH11jFKtk+bLf2CDZgDzKjF7T8j+hScR0lQjgAOvRVww4yk6Oo9ohn
	 f0uClGkQM5rxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91218CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730459357.27767.18173597520452703787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0f5048d9bd24c65344a9817bfeed7b761160aab52f89342ab063090075cbbc
Date: Mon, 08 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757304593
