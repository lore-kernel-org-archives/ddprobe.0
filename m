Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E02F38735C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774592694; cv=none; b=tG0afyj3Lken+c60wwjfUyC3u8sRxIdHGpMlyfSq+0I56spPcIGWmBWXf0wTAU7z+Ib70yN6cJrOxqyfNNPIlIkS7KFM51RZ/LdxxqfOZCO5M4QeV3p/hvYtWhRjlRaPWPko/j6S3gEJg+akjK7WviUX114vl/w8o9oCjq6JJVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774592694; c=relaxed/simple;
	bh=ki3dxop6iqswfduKxCqDLYii0Tv+j76uoYNVINfSNhA=;
	h=To:Subject:From:Message-Id:Date; b=CFKTo7t8WT1De4us2TMnougyNb5EeS/I9xiIs8yVK5eeX6rhLvDcSboOQnwwYKsXFGqdmyaSdNGznYnvezw31oaQpCwKrCAKGzQxbQ924rHyp3cDhv09KV16HbBu+MEFvb7PJ4ctTqCnetVkagdpSo6mswyM1GcWeGxKvsOC1Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur8SE6FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur8SE6FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A244EC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774592693;
	bh=ki3dxop6iqswfduKxCqDLYii0Tv+j76uoYNVINfSNhA=;
	h=To:Subject:From:Date:From;
	b=Ur8SE6FHqzsp0jrooMuvydrBpvqChpeQL+uSX+87U5H3Cmz7qCtEDR70CdWL0iyZ3
	 81tiSuS6S/R3btxblp5hOfCITD8M3gyboEjxcD1I2Al7G/zs2K6Gcj+CazYDmEqZxk
	 ShRlDSgcstiLn1KJG2Mqt6ZjV5OanL0qG0oDMoXlhVje19PwotlIXWCR0UCm+L0eie
	 kN3rYB2WQWTSYJyt5jgYF43+N8ak/UQbaPcsHV1TyRvit8mRJRQaa4N56nBhzn7CcI
	 x0+bWV/OihHbnmvl7fLV7vRWwZZ7blTJh0lTxaP98a7CHvwpBpjUnKbaFq48qzbsDq
	 sGFCsa38IOZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8B10BA426
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459269359.16326.8677945193401720352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659ba299cb585666c70c359fe8d1256fbb67e461f53fb5ac2ac1cac215f70844
Date: Fri, 27 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774592693
