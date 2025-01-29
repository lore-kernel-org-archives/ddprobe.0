Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEFE179BC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738141554; cv=none; b=fgg96NKL1r7yvxKQ1ePVlx9EVzfxDOubteG9gxtx4wH6TbAmsjRfnCliLq9YBkMUqsEFTwz51fm+GUZzLP+sg/Ivjm3K9Wa4zm1Iyt5FCVh/d5AxYwsVdjfbpWh8Q8103/9qlRkJAzt02uu5wHsHtktPUVQY9ru+6IGy4bQjR5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738141554; c=relaxed/simple;
	bh=8G7ueVZiEUgbYyQJ0Ljml8j7HhnMcwZtXNE4jA0z3C8=;
	h=To:Subject:From:Message-Id:Date; b=pGRA0Xa5CdGpgQ8+8cKKpQKTgiA1V4BMFBmqD5GyBQFONtmOWRrhkrjIv//xnFsIv9ZZhnVy//tm9va8NXLxSkiYnrLGUI3GSmiK8W0pHuyKNcggzHBPULVZPBA7PawnhF3LN4TpZkCzWLaubpma07V6AYR7nUZPXRh3YGD2PFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTzIT78s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTzIT78s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D49C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738141553;
	bh=8G7ueVZiEUgbYyQJ0Ljml8j7HhnMcwZtXNE4jA0z3C8=;
	h=To:Subject:From:Date:From;
	b=QTzIT78sfMKZEuEAHPzqj+73X9BxzukRBA2SzrY4hMY9o4pJQAISAX9b0ebS3dujf
	 E1qscWF2hp1FM3gTcKvxqcEd1vh8IZQczfdzZ7bt/OOqV5Z5wy52/9vLv5BfkgkcDQ
	 S2H9QlI2NXptlCrqhf9pGDjbYDiDJXAgQoKINL+EhIXeRcDuvDFdWi6NKDu9MUsdlG
	 pIZRj1zj4ujKikxg4aJoHqadVBJYKVmEmcsMu3ILVL5GF3gDlfWalZfRS3jmv2DGJE
	 CKRJhI5eg/sWcrQf9AtGoaiSkJpOZOV9cNzisSiWC1iLvQCy+Ld241Eih68mGSLIRG
	 F1cQVUEMdmijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2444C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814155368.8334.17637933006257329803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d17226599e8dcf9c26e8cd11a0d8345b303b2f63c6a4c9f4e60a815af00a618
Date: Wed, 29 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738141553
