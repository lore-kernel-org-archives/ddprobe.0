Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBBC143736
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734722754; cv=none; b=MRGBrwWmYrC8rVf6h5HmjXgCEfYmtMKi8uoYVhGD3IdhCR3DctEbcxQnsl8vdmJ2ZzsN0sCgDkbTQSGooN0+V7Nin1BTiyGuMcMiZ3+xN5+veklcQG7s7H4/GvoC2RcdtmqTgC+LoFUgf5Sbn2BdYjphHIZ9Xos11wk800Vt00I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734722754; c=relaxed/simple;
	bh=KrJfe0eGjVOTyhceaHHVhe11AE3UPrCQv4Orxe8T/H4=;
	h=To:Subject:From:Message-Id:Date; b=O4B0mj46ngCevC7DB/JBJtjJDSuuF+QnTEv2nlLAp3HIPQA7jZdTEeyZ6nmu+bRErO2drl/xTxVNUrCDVX+WkkkoD71pqjfvlS5bDB/FKhd5yy2k0rbeYWvyH3mC956p0eM4oXH77C0hqRK3cwEo66LFRVbWAOCCIJf4zAsTL5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9xWiw8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9xWiw8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B420EC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734722753;
	bh=KrJfe0eGjVOTyhceaHHVhe11AE3UPrCQv4Orxe8T/H4=;
	h=To:Subject:From:Date:From;
	b=L9xWiw8i12g/B7pKx/vh8A/3cTBAlVcIOJmAwO1kZjvRgwkycLxoheZ+EbyRHorXK
	 wbCsoENGSuRZuenrRlLgAx4rCPE3pBfvFwLVAt54VAWV5P0PoVsw1VAy+MefftM5iw
	 Mu+nsEDIqQP9YR/vuQ/coYgifZgpxPr2viK3btWyVOHoNByF6NH9lc0rBeKLfq1zWE
	 /sbUGZu9tu1/If23V14IM1XD8irVggBiqETK2DxmB1ooD59AkR8Op4hDz6TdNFP949
	 FuwYJhzmeat+Mo2INZcEAMXFMnP4D3ROU8h8rTa9frmYlQ73uASbyYUzLFMIOVNUvc
	 vNOCQsp8cwPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8EAE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472275362.27164.10482430710490565885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b228e1312dac52eaa370f55e67313aa2fc2d6ea6a05b26cb1601497b2c23565
Date: Fri, 20 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734722753
