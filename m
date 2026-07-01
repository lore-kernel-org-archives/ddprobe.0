Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAA225B08A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782884314; cv=none; b=O7/Qrjz92KxoHN0TVl+0iXmEAkf8ksXAXDlkNPhOtKHJzlFQXPlIUl96vcgnlTioE7Xp2Woytv1W/06uMtxWqP2F71A34PtMCGlGiXxu5Ce/1sZ/CA8yI+z/IAhGUnOCUXCrwfFiebxXlI8vMijZynKB2RLMSXa22BoA+p6I9ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782884314; c=relaxed/simple;
	bh=mZCkCoP4vLGu86rLcmZaCn1ByOu1PXOIsCtkc6KD5nQ=;
	h=To:Subject:From:Message-Id:Date; b=KxcRlyK84nYqjrXfQcZGNA3Jpd/WACQQLRmC5qhCI8Qlu2vrffRePY2E7zuccpQY2OObWHKfgD8X0eb4BcTT/8uZ8DOG452HwjSnmSiqtyqqWSrBaieU9NTQcLQquqPoF38+U6rSWQUQSdjkvXztBAEmPukXYGmTXNQG69m1bNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNBKcOU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNBKcOU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA02C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782884313;
	bh=mZCkCoP4vLGu86rLcmZaCn1ByOu1PXOIsCtkc6KD5nQ=;
	h=To:Subject:From:Date:From;
	b=GNBKcOU9F5jMotCbBnLz8qz5dx5S5Ckq8FtdqbasxSjrpc1YQtozfx8OaaKvhwlzP
	 vLp6uYRFJ3c1/d6Q4lnDgfe4c0l6Zje+r6LIM0+cJp3KCy4pd3nBr1fGzKj3PsZLA9
	 C8qxAanJUCDcfhnpz6VHefShdu0kCSFg0kFJv0TqiGGKDmh9yTwXIQNqtVE6wt+Ts3
	 2lNUwvSxMnJ8rtytegpj95z14g4TUFHZa0QfekQ9QdgwYYpSux4fahZdU5w728jU6A
	 sR7ZpXSz037N9Bz7KMrpeFO+lBTAuT3z4BFC0SF0p9J28pDEVKVhyk3BOP/RKc84pG
	 MXPsOgMV9YIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9397C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288431368.22915.6010951227335212581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7364e3023fcfe094a4efdf5791251a8e9c4dfffcdf5f66bce9e9c1dc14215b4
Date: Wed, 01 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782884313
