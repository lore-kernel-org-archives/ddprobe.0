Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7140463D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719896723; cv=none; b=OTKv2d/uigVLcoStQ4D3QtercCHuMWHpTqUE6BNgLkv2KKnPYxkGFO7dx8fcmAqSBoiocgu1A3EJYdQg2hkVHm6r4g/DqAD9WspvFuguvFUWT8QYs7zBoODArZs5lMPnHwUHFUYkW7B0X4dQrns+5WCih5cQPT1on0t9rNmkvVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719896723; c=relaxed/simple;
	bh=WJ+mEIqM7AjQM1eojyBR6fKFyBWAe2b5H0UYh5vzM9E=;
	h=To:Subject:From:Message-Id:Date; b=jNVj4Bha5etj+ke4J8hHB8Pl2EoNoNBzUs4er0Z3ZENJAH5nORC5NMroTdmQzI9yoF7cR9iI/b09yHuyjilNhN6kBMKwfc5FM0WZUu0IHXpzMDMFdQjZd9jVmY1DIBprui6cO7NSTqFGPDEfn1LRwJ2QFqv9qECYydR4M/RNkt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVAJ/har; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVAJ/har"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73CDC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719896722;
	bh=WJ+mEIqM7AjQM1eojyBR6fKFyBWAe2b5H0UYh5vzM9E=;
	h=To:Subject:From:Date:From;
	b=eVAJ/harRdivEwguySaBeYF0O2DG+MpHMGDAxL3BMPU5hYZrr/X+HDOadmuxz7Utx
	 8+NAse5j2/7KOMRhYS7pDLyBjd6hBFqOPdALfH9OnCLOjyQ506qkVZTY2btSHVPovD
	 JX13xFKfd1GQD7UsQSlMdQcCyhsd3eOmng33sPgO25MbpchoF1/EdRmkyshlwN4K+g
	 GFJz0Kzn4gUyJ6Reztz99Rz+Q9NrKHifrVE9DwOd4dDjueZsEJMeOWmJLVnxdQt53p
	 o36e7XlAJXSy28/17+R+ismMUQpRzAgdXyxvUvGMpGXRUC83dq4/RzF0Imc+j6fOm6
	 k/1cf3outQctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17ABC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989672278.4110.284026527297922259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1c422d59cdecb8b3d2bb11cf07185a8e6c5234c0444e234dc744e566bea898
Date: Tue, 02 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719896722
