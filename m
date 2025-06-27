Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6232F1FCB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751068194; cv=none; b=o6Ec/b1npEANS4dZm8vdM0mBs+CpuUxvLIMRTEMVxiIbnhfDwGGVAgVvSlGaRdWHvkd+ykhb29EL6HJmQBBjx9GkrRiUa2uUs2ligqIx3y7xMUtyNh1Cynjme9zVlGcaBvZjItqY2hY6KxR1pUFjEXwsEXy7h1YQZVdhc/XMQ0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751068194; c=relaxed/simple;
	bh=5PXX2v2JlQkJQrYtiPY5AQIliBX0wyC3PB/6T3DWUJ8=;
	h=To:Subject:From:Message-Id:Date; b=PWL9WxuWZynvqoMNARs/akg2g4mB4W4YOBibPHF6gXFtpNDMQCzR0h1tZyn0JKNd+2kkrPZdNWsKmGs/6zYUyap+aJyrevXTaSIaqSHKFFngwvM3Y83v7N4R/f1CiCe4Fu7JQfy57NLStbGY/yeRX7l1IC+1wjiNXiWGXUmeiXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZvDoP+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZvDoP+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69ABC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751068193;
	bh=5PXX2v2JlQkJQrYtiPY5AQIliBX0wyC3PB/6T3DWUJ8=;
	h=To:Subject:From:Date:From;
	b=IZvDoP+0Ag44lM5GJKrQssy3HmyMjQuGZzOXH4dQ/eKzNFWNqLjJhhE/sseSzcBTU
	 P+cqj+dmnw8tFAqvgWNydUphtQduumZpYFYqOCIfXuDe6z/NqzzAVM5CJdeou9j6L+
	 Rh7iX1p9mRUt8qr3mqSaIfXsL6edl2Gwv4xGhGxAsu+dXXn54T65NO9dInIB+qM7FH
	 oZfqq3GXMqoqXIDTi3ZM2ldfKo29v3ZEJhoR/7qq2Htgd5jwVQCpi466HxyHNZaKFA
	 izoezdZ8lgjMUSbcG6Nn8WtrhEcNo/hIH1yPtP1ipgcgepZL4Kr7wc3xRE86KZOTDP
	 au+WLwRheSL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106819358.8721.15660082805779960064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c07305b18542e670db051486dd5430adca500b5e97c437a5b1adedeb203c66c
Date: Fri, 27 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751068193
