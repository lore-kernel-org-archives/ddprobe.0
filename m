Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F6D184540
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763280654; cv=none; b=fWdV57Q13i0jiUZ3KxK3lGnyq7hOR8XZHBGgMmjVIFXFMgmeL795X4QRwdijjWCASUiyBmNhRezflQMpTWMACsevkGRO34gkugO3ZUfc7ez831o0gsOm8AjFcpH/P7l4WZnQODSiYxpXtaYr/uvuGfQ1lrgmQaBazMcGTGBB60Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763280654; c=relaxed/simple;
	bh=ihdedWktN2qlG/uSK5DXc/tzy4dG3r3EQDmtQtX0pAU=;
	h=To:Subject:From:Message-Id:Date; b=BDNTUE1f9iPOCnt3EEcvhPjGSbCXfJEDU0iM9GuvnAIMR9h247UIT3Z2BOecbQ6v1kgvXxTzlRTEXNBF9lqImNZY6tpslP2Mkbz0R4Cq+AU3/TC3ipMQzcYitTL2ZUCWZ+G4/MKH1NmyQ+7rr8uYCM3i1RItnLLwW80YmNgYXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRqYdMhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRqYdMhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C0FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763280653;
	bh=ihdedWktN2qlG/uSK5DXc/tzy4dG3r3EQDmtQtX0pAU=;
	h=To:Subject:From:Date:From;
	b=SRqYdMhd5z9uOJibchLbVqLJ3vCXt8VZYjuUSycZmq/1QaMKAGaFfr0VeNSXenIag
	 Op1uTokBWiFJCyAuC/SoCWZb/938T3vRm/DO/MmyZ4lIwGTuvFiCvt/kw5Q/j2qrmd
	 IropCuS3Da2UndePTZH5EEBVMdSFFO2N6udbC08ThZpbCixwVS8y6biRetUOxBFTwl
	 JPnI+HJmL4GgU/6XMsjMu9aVMygJq9d7c/rhNKFoArPI2Jjp9JjjUqsfI3jOBFNXJH
	 yjUeBR0W+0kI9C9fso/7DzP/V+ZRwKDi5NyBZ+xO+0wuH8Llgv4Gj0KadlzP9n64Z0
	 HmOpch3yqCsbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C0ECEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328065369.16529.12071667934205460550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27f2c36bbf8d3314ecd7db0b3d8532a62e5040b2f7202637e261acb2ce2ca8b
Date: Sun, 16 Nov 2025 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763280653
