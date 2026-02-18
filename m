Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D54D1EBFF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771432494; cv=none; b=Kzi3jcyVMBvHTWZQOOjJgH3Xn/exnyoyrYGrzWnnWvaP76oRvF5hjJeTeHCwcRNZR+DFaV4+3ZThfsVWUFbE9W6PO8AADRcrFseSPciSCEjHPh/xbowrc38OhkAO3Q9+XFvQJdVSRiXGWIBDYeCHaJpAbZwctEhsQFRdTQsBqvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771432494; c=relaxed/simple;
	bh=zXkGKnnyM7BIndfl5P3iWG2ctAVJWbNQfwS6tdrFJ5A=;
	h=To:Subject:From:Message-Id:Date; b=oWUWP0VMAeV3RU5Qsm3xf0+AywRYalG9owqrAy7yORWkk7N7jGwaFYRXNU6wYHIDZoI2bZB/sjD8n023+whWWwj0H1eBFfVX0IfUSTfqbg6LtRBJV3n1Ep2Tm35f3fogaUQnZ9DsJ9V8DeHCbrb/AP4PXzUAja5ybFEF08j+5ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN/LNds0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN/LNds0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85FFC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771432493;
	bh=zXkGKnnyM7BIndfl5P3iWG2ctAVJWbNQfwS6tdrFJ5A=;
	h=To:Subject:From:Date:From;
	b=NN/LNds0gqrIxZr1emVPy0GKZ0cm2LJsBIl5zukW9XYxwbzD5DITlsf7p292DBEdn
	 yRf+lwXp73E2+d4lcp6PO3EGwn/GvTlyHkN+QgQmcQAix6iDxGDDM0OROVXQRwtS1C
	 cMkVYsA9sAadyiW8qeuPq/Uk69zW6UgvjITxkB2/y2djjo5wYOuXz4DQ94r7Sb240m
	 06FxTdiMyHnXP1bA2v588LC/ZKGPJ+Omd9uacEJN/LX1jauxQzRCjPtHFprhyjBDX/
	 aAy1XpPvF/o6CPmAcYPBnDsB6wrelsI3AnsC51X0P/ADjsl09wMdGIM01Ld0J0Rajh
	 yUKqKwRdoGGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B550E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143249359.4625.9818831757032833587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30407800850d74df13208ea0e7969db583d04bd2553bc39494c6b5f8fdae601
Date: Wed, 18 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771432493
