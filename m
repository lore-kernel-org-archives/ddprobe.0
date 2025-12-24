Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89403148D9
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766574234; cv=none; b=KTuFTcqqjScj8WohayU18+boSxpmTAJnypSGQtMpGRxzda7NTbpuI+egmFQX4N4gm1Vl1ql+6aGUZjv7xt2XZm+OZvtl/iidcIxPTwVqqwgFF6tW9uli8ku6ds9wUZIzkzo680kiDiUEna1U7BwDxN4Cag9rVA814PZ0urozreo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766574234; c=relaxed/simple;
	bh=gGsORKg4YQA+TNImHsdRmr+kEaD7VVUNmlWzDlR/Z8c=;
	h=To:Subject:From:Message-Id:Date; b=p4NbQMLN6B8XQQDSxmla7FveXnaDFGo3lnaw1PseVXNsISfeDdprQtmlhezNy27a1EjklrRyMqUbjTExnXGS8CAhRGosdSKEnY61Fr5GXFXAVtzaA00jFUVXhUIo7WiwRw3m85zuoHdS2gS8A7bY2MpxOUa5pI4x8SLi/b/FI5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhjdV7Kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhjdV7Kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A595DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766574233;
	bh=gGsORKg4YQA+TNImHsdRmr+kEaD7VVUNmlWzDlR/Z8c=;
	h=To:Subject:From:Date:From;
	b=IhjdV7KlsxjAWxL3fxx0DJRgodZizyzd2iiCBL6wwCbO8VGRnF444k3DtoMHloN3p
	 mo0P6i+7Ijd9F1obk7mws0lEnnA89Isn1t6j1eFQeHotWldnFMviOuG9DYMLtqvZpa
	 tfoa0UktLBvPt9rkrBUyKtVlDjAf1hbKTLMGS2aQM9Ag0ec9BzTR/2HxdubNXYltsE
	 yh1k39njGLMIXJBju6+KpynQ3VywAFs/xxCopD1hEvssGjnaOS7BA9MxfE2wqPu2nR
	 oqwAFQPrmeMX1xqtO/xmYqIfnNe2uxPbRGJicoGPptE0zCEb8VsuJy+RoIZoAsfI8S
	 5pAqa1nbmM1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469CE75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657423357.11532.17033877912358222593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2178bda326f5513a4f45a6db81d065b89832df79fc63d2d64fb2252942215db1
Date: Wed, 24 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766574233
