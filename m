Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C74163
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762058394; cv=none; b=SCOuXBZvNL8HcjrMiO4hGQvSnW5znEqb48/778WWes7HLBJS7Lx/Pj3jhMX2bqOfOJwCyFr6bEYoyKgqPSASmzn0wwG1dASCcS+JBT3IXm+iihqdRLQnsib/aSprRgyGl0xEGlVICK1EofaYGRyvsRNja2V+FyuB0YLrDRBCvtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762058394; c=relaxed/simple;
	bh=4q45bG/h5dl20ecr1KClSF/gpDzpoV1cqmiYRCjtbxM=;
	h=To:Subject:From:Message-Id:Date; b=b0esTUsTxPXVr05IC6LMcvWjSqCD0PEDVtxTEYT716CQoxuCDNEys0z+YzuUOM67HcCAn3e/LZLqOyf6ltmLfVQhJeQm4ydcpx0LUp8O+mREDagMAZAuF3NDC+xK1mhVvFsStOBLLz3Lt1R2xgolwu6Tuwz40s0np+wO+Y/Vo4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMChkXyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMChkXyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B068BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762058393;
	bh=4q45bG/h5dl20ecr1KClSF/gpDzpoV1cqmiYRCjtbxM=;
	h=To:Subject:From:Date:From;
	b=ZMChkXyZIL785XLrE9cwNmIlrf7JH9qj+SZ6eVBIDg65YzXiEEjllaJlS2QzL1L9U
	 ftXWyjv6QCv8GI3LKCRivhgwJ9/YnFfU71eTA+B7c2Vi3mR/O8Brp1kx0S+7OdH6DH
	 hifSc810m62rU83O0MFeksm5/cNNkRgDR8Qhb5lgBtnlsFpACmwMnIFUXzWPWKq1HW
	 mjFiDF16Yqi1mY0c68k0bMsYI/hMdvs4G3I5E89SUEeDHDWphcEjy5DlWMIfuOgXBS
	 xCQ1opeTWmlFOOU1o9Qo0ccIfhymwYM9cmWHgjmfERSTSWkdExodtxjPqql9bTJurZ
	 QXAZORjiez5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BADBCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205839361.13488.858558553527007366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf31abc60fa1af5b92c036385284f7b5ebf36c82d96d5f6429a9a24a690f84a
Date: Sun, 02 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762058393
