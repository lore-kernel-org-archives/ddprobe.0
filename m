Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB15FC01
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716219743; cv=none; b=EGMWjPFpbQaS980t596IdlVGSqzBU3Qb+zQ5b5EqzE59icxcwVqEbVduniAQ0Uq+2jTKjBfeeO+oS5d2C+VUhc9A8BwCG4rLf0eLwAdWA4Wrkf3LrRTxUfVQa9qbUzHYWTq7fBI82ldiql7PEclU2I/P5RLoQ5hEeJarZFCMWLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716219743; c=relaxed/simple;
	bh=Xl4hFS9BW3Ub2y8ObU18hNk2FzFTROm4S7iCNidIP/g=;
	h=To:Subject:From:Message-Id:Date; b=C+UW063cwqUt2l5ysClKFmdUoxvkK7JKgn3XtVt4hfcXvFJSolhM4eeqQvQKDpw6lCXsrs9z1xeTyL2wqc8jLzkRNfNkObC6UL5tFi7hW/cOKkepElin9+6Cetox7PFuKDOEotjEOsEq7NAaDLoKNCgy3mtyve8VmR/3PoC48nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjjczgQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjjczgQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4607C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716219742;
	bh=Xl4hFS9BW3Ub2y8ObU18hNk2FzFTROm4S7iCNidIP/g=;
	h=To:Subject:From:Date:From;
	b=mjjczgQvtvFnzzqXa2wmBoJB9G4Tk7NrnJV0bWk1OovUh2lZGvO9kG6/v2qDC7tmB
	 /Bul2BEzgrxHI2eGIAErznPawBouW5IDlb7dkqfu87O8ezp59gZV7RUpIec56Oq6GS
	 +teDFxxv7CZc45VMD4Pq4Z2VwQE4xh6iXxwyn94wuM+Zrnv+TbvfCEb87RRlUt8pWc
	 oe9Po7K5E2Z54+MHSYwP9mCjfA0oE7jpKE/anf1PkBW+GIXTvNjLXdJ0/8HTZopPvX
	 zkP2u22m/lzEeUde7hZcRdg9zjByAV/X0QS9G5RqTlblQvb2D6SIaembtprLj6qbl8
	 h+fJ9jtm6LGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D63C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621974280.16995.1537458862860199040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3794dd988674b0475fe02d4aa8deeb433d10cada073e8187a9293340272a779d
Date: Mon, 20 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716219742
