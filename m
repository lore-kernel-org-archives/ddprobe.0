Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1734C3126B1
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777829254; cv=none; b=s+a6Vi90UClQsMHTL9FDMQNPqf6OJNZ/1eoY8IozmMvhdG1dYUrpwM3WIyVnVUNmMI8FJM82xig20+8oPqSnVYE0TV0dYm3DVMmMR7VwbYjiTJNqhW45f/HMR5VQmBCSkuc8y0SrzuCrMgiAjULIFl6vXPSIdVS+nEL2MKVNxSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777829254; c=relaxed/simple;
	bh=jk6zusLx8E7Dy6+rTOT0pZLWcCTZnAZB1O6nutGaWzg=;
	h=To:Subject:From:Message-Id:Date; b=CZlBmO/8i4RNTcFV3e8/DKscBGVSQQ8ObdoxFlfxr4iicuDML6Xa9zTXkVATnvvgY76/c9zfC+Yaoy47ii/izMogDwk432oR/qxNrnp9IRWxe0XCydQ1zUio3P5kpX0pZ0sIczwpYF97yQdo+Gm9pHN5p/xmWfsMPaWA+HbAPxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9YsC8G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9YsC8G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9F0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777829253;
	bh=jk6zusLx8E7Dy6+rTOT0pZLWcCTZnAZB1O6nutGaWzg=;
	h=To:Subject:From:Date:From;
	b=a9YsC8G1PkeS6vbePVj0G/Gc9SBHBezC2I3WtBzl/1pdlHNuNQAuRRXzZH9SuIl2s
	 Feq6pcHN5CUnKsrMLdwnDixEcb5S11ev8OYo69ns/WNv2DUlQ/509dAhsxJSqMTESc
	 8ricGpfPSgOLGx4Axvm3DkmVR38Hl5XfIcCC2jzLcHkCGKjdDPP6MpRFnWA1qEl/HW
	 al9k+S+uawuaKayduwMrjz4vt+mxkvikzHayLXLco2iP875o44yVhpciJMbjK5tUMO
	 arbdoLaPQTxrbaa2xBN5A+KRLBTk3SIE+su16gxyxxToNAlLTo7Zj+Itdf2yoAmlfw
	 AVIw5mBzyAN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB42DFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782925369.29654.10650530559811608049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa06e87cfc876b289f03d343cf7081ffb754d5d831626193572a476d35cbbf64
Date: Sun, 03 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777829253
