Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307B235042
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746803394; cv=none; b=WzRBWx5r8JqEMNR8iF9G2Q6QkqSOO58TZCV7RJ4wHEofYgkold4EM5kaXtcmyUDy9dX33DIT7UYbU7qykIyQ3QIVV3aYnibINybJoPXyF7r8MvtgLzMimDSNq85rPkEgNxVfVHG7DSb9VkHS9MxG0Y3l3SktPupvMIOLtYsdcXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746803394; c=relaxed/simple;
	bh=xZuivdjixeGC7JGWji+EbnvHcRKhXEmSBIy2RPf5BBc=;
	h=To:Subject:From:Message-Id:Date; b=n4Jz+VCAL84WNmwYdsoLK0m7mmk1USo+2hdGFjpsdDIA2RbjBlw1xKNZW1GCuk4p9wu/ux8WgwIx84if255xHxtBuVd5cFppNEPy4Z14CQfM+s0XVXEKS3eGsGMI433VrrUHd7IDKI7aDLGBneTkkucaDsNmK5+w3t5tZ9yQd/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iW2O6sln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iW2O6sln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1351C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746803393;
	bh=xZuivdjixeGC7JGWji+EbnvHcRKhXEmSBIy2RPf5BBc=;
	h=To:Subject:From:Date:From;
	b=iW2O6slnFyo84iH0/4JJGt6WNhm5SMHo0lyqzHaUGCtgpsHNB8WsRbcmIB/SBJZSD
	 yPcwtf9tyTxsBfeZ3DOhU44yWPgDy5drVo0YZrvvMvIttIlFrw3kTRlkgxcg6e0I8d
	 xbecmDU7RP8wdC6iUTpdAGlrWO1d2csrHZlOUcGdtg9TB0DILnsky7XWIwd9E3l+b+
	 i+2pRghCG4XFiHNe6fI0W/zVHJRCjTkc+/VdFcMUgGO2BKC0csEgo9wR0NLynERjon
	 wvgLVghhOGt8pEbXf6a/YJbRcD2m+IVru9CBPWl8W3/Mu1Lz9r3XVxDIMvKKjCO/t9
	 zIEt4KtU3ue9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92167C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680339357.9697.16882604162871501062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0036e0bf1421693cee8df468ab95c0bb7660dd6959a76a1d9efbd4a6e5db6993
Date: Fri, 09 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746803393
