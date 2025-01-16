Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D35143736
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737034553; cv=none; b=gqRf6VkCaL1Yfkgz4c1h58oCzMxuQ1sUv2SdaGHlcWigy6EjDyraSjT5TiqeC71X66pVRW0kX0suM82gcpwjg0Y6+kfNv0aBN4bNAvTCJyAU1GOK/Q6X9zNkf7NwPoVcUkqVzh06xseSRGv9Bm9sQr0K33SKAc+zII+ewmmFmW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737034553; c=relaxed/simple;
	bh=uCL3LcAm7GXcoaJ5xZyzEBjZiMKg3yVDTrKypcQwN3I=;
	h=To:Subject:From:Message-Id:Date; b=d7xLDV7ZZrNH3O4CrdBuCLkodgP/4z4gPIzAm9A2Gwg+yXLvZsw175phpY3/90ozd3wdXlL9A9KMeR4n8SMx+7HX/RZ8XoV3vf/uiUaPJ+4E2qA9+XLSKcVtIigmqSiVbaJniohE3kSOjR6LDNeVZhrABn43j/iVBNqHm5m9xWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIqijZQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIqijZQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8DC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737034553;
	bh=uCL3LcAm7GXcoaJ5xZyzEBjZiMKg3yVDTrKypcQwN3I=;
	h=To:Subject:From:Date:From;
	b=nIqijZQ0jqv6dv0Pu24AoprNqvnXspfzFpY8Q4PXIKRJq3w8FcLT16NlWqsN2Xeew
	 2MefYVX1MDayvpeCxtwEzv9S4Mbxe2EcIruDnByLRchcgsUn5nh4BivU0P5/6dtLhI
	 RD+2mGGzHhsX5iLsIv/SdCSGyyzCBOWHxeqIe8pSaEOimXLeX/2Z79vCAr3gwi6D7L
	 2Y0chugC1MyiTWDQ85GXHTi9oqihSyQSBiHW3NJdw4qKboqp+Ttrj4PwyX1F9AFO/U
	 v37PpbPEqXAs2z8pXbHtB/Nf2aziQHNXNCWz1Yu4UILWvbA4HPUU/vwXLCTahN1Dxk
	 43uLvylioJLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960EDC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703455360.31460.12974553148995768310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b78c8104d91267536ba43bc83f01c77931d60aba76a87fad3d83f7dc17a7db2
Date: Thu, 16 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737034553
