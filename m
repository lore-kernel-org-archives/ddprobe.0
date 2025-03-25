Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B37C255E3D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902794; cv=none; b=P4SEQEKDjPF5ftfg01HiLleUzb9NRb+pba9ugzn6cuBrC9bg3fM+uLI6bXIV5cKEkcbKYvhEb8jAPN+3jXAWPXk67vVJiq1+Q/yedfKJeJ4L16h+bELuVTeZYAzUNL6A9gPt+8Gix1k1VT1zoAsF1kiDl/2bAubE1viw8u6Rw6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902794; c=relaxed/simple;
	bh=JJRrS5thfQhD7KyK/OwjrPZc1ZNj1vxQ9wSZGQs11ps=;
	h=To:Subject:From:Message-Id:Date; b=JAE3+48kMk2rlM0h4qSclGidcn7Ta/ZZnOJReMFbcaN4lilDwN3yFbhgniLXFHe7/8AId/Ln7Fhm7PXfvy7PNflbwkhyaiyct4NHSYSsgIzpzIhbZvsZIGFsDs88G8yxBCsj00quN7fkajql11paXQGXVwT7jxcsnV+ONxkjAtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDbJuaHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDbJuaHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC768C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742902793;
	bh=JJRrS5thfQhD7KyK/OwjrPZc1ZNj1vxQ9wSZGQs11ps=;
	h=To:Subject:From:Date:From;
	b=gDbJuaHmsp8cUxnN/3+EGoshUVGaLte/wXWjEe2xW2E6F1zpsOz4qlwwRn5UfWy/R
	 nnyXZWenaorjdF/29M+vvxyXFWhHIyZ+85VzQhh3C9IJ9jODFc7R4KpDMslkJaQKgm
	 hQMNjL25dUDN7DFMfzt6ft0KC99K3xyK+mQRKVkkRywhiNP5DVNhoxXruJPnEzEgRu
	 q7STksBuqtbk4T12UhVNrgkrvFjcuAM0wTQkJZd1wyUjB88JibcSfHNdx+G4fpHtyE
	 2v+qxduzUfIbeKm9Lx2xX33cgsJeMgpP/DGYmTKplY9Di3XiPVrTIcAz//989iGROc
	 studIaxFC4Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D18C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290279370.11317.1386367364377615793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3c969d3c44479524e80f648a97b6b62deb3cb2371455b44706083ec31398b9
Date: Tue, 25 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742902793
