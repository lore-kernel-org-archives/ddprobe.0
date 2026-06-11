Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5723E5EEC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781221594; cv=none; b=rc6H4TCutWLXwx13tn2viOQWPPiIQOrCQW5kIPCpM4hKjp2a8HbmrgaP2XE05nee5Fqfmu3bB4K9rlryDoT3Zf3BJvKwq84fFtxukQIkK94+F6r95pCdriLZqO4NeIMZC0PNWCcwrzhXi+cS1uNoUGJxeRO8Leuy57dPf5eTmTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781221594; c=relaxed/simple;
	bh=UWacDxxiiKD+LaR/iy2aVxlVFtexJ1guc+U7zzF+qqE=;
	h=To:Subject:From:Message-Id:Date; b=mLfhZpiXZ6bM+Fo91F1bzhDf3VAOZcLGdpHd0BNyRCtxyuU/MGU+rDJFKBwX9RKaJBBKodKCmuYMG6Fhx24FB+0lAkQg1lj9a+raR6tciqcvf3dbtaWG6GwBhEBqrfJIMcpuPPZ9d9nXc0bMVk0QtTWK945+BeoZK2TutKIUddI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uF/fCOBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uF/fCOBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2992C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781221593;
	bh=UWacDxxiiKD+LaR/iy2aVxlVFtexJ1guc+U7zzF+qqE=;
	h=To:Subject:From:Date:From;
	b=uF/fCOBwTK1y4X4aKjezCTFVfMvMsETSG03FgIuq028aObGogNLfuV2xT4cpMx6Y8
	 ibGD9CVNn5cFQRZ9nGIR9+SPor4q0EpvuBdjxRzqK3JeG3mbchJj0N9WmaK2KrknMq
	 GEUjU/bKQ/pNufli3Hk8/b0F5Io2Ae5CNAJEmoVEE+9dnwRsiwbq0ha5hmNXekNr5j
	 7kE9L2dn6HXWPcyUDcia0Fy2x8ElOPZIr2isC3qOD1bk7Kzs45SX5nNeYewdPueXlF
	 5Y1dkVhko7lg7ID0ybu28djydapy34UnmJaBye5T134/oX2JNLTLhl+xyVJtVvptmG
	 pDSNGLFyxetUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9918CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122159368.12426.3838153171600445234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0316698f81f32a75182cc5d22909a2c7da685b81ad8b918de0719d160d104e85
Date: Thu, 11 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781221593
