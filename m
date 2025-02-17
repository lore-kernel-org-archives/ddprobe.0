Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3856421CA14
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739797134; cv=none; b=GMRqtbeJm6NhdiLaNg3L+8BUqS6QqTlad5Y84Zim3KBBDJGnx1hYFmki7vkorODTTYVGzZYhOevoWFWoISLwhqkqZFtJE+nlIcKwOz89p05wMwEUi/uDaGxeQDTB9fWNN11WzRxoL8PbTiualwcfKgq2StRNlQlU0BPjZvEd4Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739797134; c=relaxed/simple;
	bh=RYZu26eDbcjOkmKS2KjHfv7JNKZzVOzYf2w4w5VCnaE=;
	h=To:Subject:From:Message-Id:Date; b=OMD4BAJCIUv3UwlPlBbvntPpxR5EjWGAeMYna/dsyCTBYKThfQrNqz5AokeiTfkC9NoEcWiaJao+tu3RG4QIfikmxTQL9AF2nsD94YVIs77YL7yxM0ezyJrHTYle1VY+5dOXLcud4c5NERBnp7Vg3I44LgXARXvuZQMC1fk/3Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlEvZGRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlEvZGRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63C8C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739797133;
	bh=RYZu26eDbcjOkmKS2KjHfv7JNKZzVOzYf2w4w5VCnaE=;
	h=To:Subject:From:Date:From;
	b=nlEvZGRVrGOjemKL0fIJ2Wzk86nhuBkpHY63I78NxoAgib8fw1CygCoGe/0Ld2pwL
	 FKDrU5nb2Vva6ZK17sn4+IheCshZj/VfQRATgrOG3veyz6AVL5/jK2ppHnGwlff9OV
	 rKG9gC5jfC2R+e9BFOOapQJWSANv4fas5mgFob+tir46hFC8uvoPNUYfF1xS45TsH4
	 U6Dn0hhluLCdpeEKO8i6XtWQoOVyj4e9C3qvQf9ucmnm1YYs6TTkoFgLe9LZ6c63wD
	 PjU5a+J0R3ZLfnZP5kxdrcj+47plKXc48XDKs0s3UO+5HL9JbrIIUBR2uxRgR4uIBK
	 0G9H6rBLAzFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D2BC021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979713365.23064.3474141495041693261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12f7d568c565c4eb5f385dcbee03bddcf6c1ca1cb5aec14d600a33358a231e2
Date: Mon, 17 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739797133
