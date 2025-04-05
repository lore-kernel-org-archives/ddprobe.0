Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47151B4121
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743893393; cv=none; b=pwq7pMfdxejzQBC3Jx+XTNxw3Wnun75/2NDz8PD/huZVbIJ/Acf9vI566vp6mSEP8TCpxDchMz4Im9k1p/uY+rZVx5XzuWKPoBpz3aID8SQQgMG84fARHlBKZF712WPPrS/ktBYA0z91nuGaO0CTJZhYdnpohO1/g4CsIcAbhwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743893393; c=relaxed/simple;
	bh=/5Uz6pMgHxhbsT1J4LkfUbvSVRWta0/R7B8P7GAJSWw=;
	h=To:Subject:From:Message-Id:Date; b=LDDj4TzcI2aBI/X1Etp/l4ujPaP+bxzsIZaRDXdkXE+YvhZE3xOZ93ruFI891rX+F5TQiiXyY1i3PglUGli32C8rEzuYi/ZpMtMbBUU6XBaIv4jYMh3ysCbGcjZtsvu5DOVFeVoLlzyMhhP3w1JRVhWSWMTpKQGbFJgxE7hpjKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NByGKgn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NByGKgn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8854C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743893393;
	bh=/5Uz6pMgHxhbsT1J4LkfUbvSVRWta0/R7B8P7GAJSWw=;
	h=To:Subject:From:Date:From;
	b=NByGKgn6zzUTzhicedrUnCnGNKaTNFode+Lqb4QoGVYrD0O3elE/DWyqbTpi+QUmP
	 KtK2wFCt4pWMvWohhv6FVxvgAMgikBe0HwR8unace9BD6EYM9PR3MOEWkcyCLWg3Gf
	 /JlYsuVgzT5GgOAmfkXi8poA8FPITfs0KG4D/eMRVT6P169LURTYZNp3CD5P1CYMBd
	 70sv3wwsl9696k9OBkWI0UE5gjLFMPFHVgOU35eBcVxWLRWV3FtI5YLPBzdi3nE0r0
	 eRhK0QSdkhmPYmNFWQDI04JQR2GJqb5r1ROfXnp3/H7OcMth+BteL6+1058MoTIpEe
	 BIBiENGlel/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2BC3601A
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389339359.19875.17411735705126918842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a48cf8745e8de1f5fe596f969bb1ed5ebd68a6edd23ff5a7f0aca26508c04a
Date: Sat, 05 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743893393
