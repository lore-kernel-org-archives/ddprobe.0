Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F6D23B62A
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766227434; cv=none; b=hL2aIimi+TC3yxS/D6qOgL8Pkr9UoeCwec6hlqvvMGvCqY+pJBDE5OMRH/Lq3cgnpt+hcoj2KW/5l0TGPy4uF16cEeCuvWtoqZHZutxNXWQQRM7abXX/iC1G78Zi1yvsG9UhqNnxbSxhPQD7d8tHUgEOD/RG0SZjT2LmYo6Bv7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766227434; c=relaxed/simple;
	bh=d+JBwitRsfzdNgNcOVb5RniJNkLoh4gG88p4+cV3a+Y=;
	h=To:Subject:From:Message-Id:Date; b=pnPe2zXBVpV/pmnyWnABgAVOPxqAx/dossYVrQfkRT3chZXE5cudZizUmu4KZMjfmLDdwLbWuCBg4BAHXg3LAs+7eLfjZW+jWgPcODfHgmsrQr384ctwAA0sQQK+JF2wNBMUQ39QnQHEZf77RRWBexsGGu5voN1eLXlZ91uxbDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+rvHXds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+rvHXds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66AFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766227433;
	bh=d+JBwitRsfzdNgNcOVb5RniJNkLoh4gG88p4+cV3a+Y=;
	h=To:Subject:From:Date:From;
	b=r+rvHXdsdLkDHP+KqdrA3gbDPntatDzpAFoliJ1D03rdkGmklnGtzDmKDrq4rPrXk
	 zcLt441lzugfCn1sN+4QPUaB9clQrbyUI6a/rZTu91PUX5Xaza/P+iKfib1jvOcznF
	 IRh+TFojl5Lgr3rlPrYINWN1dmcWLidJ3rVDQXB6cq9AOYbZvQQBkQiOf7xGvdfjst
	 4X6fDUUwQ255FBycw0OE35FtEQkT+czl/FtnTF7FyZTBEm4rgml0qHOlXpNjjuhiV9
	 ZodPBPnUymO88MeeAge0lG/sVc7uphdOebf9w0lmrocmF+gzcuvFnBGK/ONtt9y5+m
	 9yn2mth/tg4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9603AD637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622743358.18982.678473436127414535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d4f2c0056ccf24778af756519713d425bee6111f1b2d5c51eeab494a9a5026
Date: Sat, 20 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766227433
