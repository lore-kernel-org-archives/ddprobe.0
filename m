Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAF71ABEA5
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748854194; cv=none; b=e6bo5uih8w8t4Xbqu9+poAd2vzZvi37rZGNUsi5d3TCm1/mN9qK3StY+bMimrGMFzMhjlku8p0vjDqQODReN+c93VB9mTFodlTF3kfiOqtwDkomYdBqDav4xUKBoSZKbCp9BTsd2Jm5NT5//FPuHjHZBiU0W5HmJu+NEf99kA2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748854194; c=relaxed/simple;
	bh=SRLRaQuO6f2SMCCyvA+DHUai/Jp5QrQU/y9vFoA8oqk=;
	h=To:Subject:From:Message-Id:Date; b=KusNGPZPAYxkW92ViIS2m3Ma+eQfskojsDBmBLT1/PxEgV83/Uw6UDgQfBVx2P2vcwn1S8sXW/0t0/ttAGKI4rzf+LARgs7yGZsJTHzgnmAfhp/pCF3DyhjtCowu4gwpx++QzVWyu1guYsSEJE4bx+TJO5Bu1lITXmVgAdAAUw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoPKtE+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoPKtE+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC38AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748854193;
	bh=SRLRaQuO6f2SMCCyvA+DHUai/Jp5QrQU/y9vFoA8oqk=;
	h=To:Subject:From:Date:From;
	b=LoPKtE+ifnaXB+pAOMlInQRuRLkb1rQFmtAHRYBZ/53nXgrlCOMc/tuW8cYxXaru6
	 jEX0aG/BR56wbCl70c00mQc+esPguza8wp7I9FCoTomoWWiaozHAuajRD7GWn5uvZJ
	 rR7mLIwPdZPFurCr2x0sTgj0srOA4wFypyk0xYK48IS8sonIar3qWsy4lia463edhn
	 OyvQGItTB7qLTc8PChapY9WT8rOp8bFvnTskJSJzT2kxvdXzNvUcHc36HMTRV40qnO
	 8hT3giJCHO1jdXNejL2B1jDmwVBuF2pobN2VZCYQP+tfw8PB/ugHaUW9CsRfSOOBDG
	 2i2Q7gQ2w0BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8566C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885419366.6037.7867547252251888639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a3749a5ed5017320b2112dcddbc0be9e3cd3a3baa85426dbc4ebf239fa2492
Date: Mon, 02 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748854193
