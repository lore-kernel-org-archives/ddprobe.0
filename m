Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3311913D248
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728893754; cv=none; b=fGga0+pxDs9dPSBgsL9NPfVb4zZNd93EIxJ8y+PqAkEofh/FljXGgDFibl3fmzdMB8OveGev++xXCMoHQJzYqQFIuKm1CGGzT4VYzm4zNz6Ov6Jz7Y/NKBJDlL3RvgakEkzzqbkYO+bxxoVYqZUN8sUnvHNIj4z7E5FXmx9P61w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728893754; c=relaxed/simple;
	bh=fh7gvnhIXsiuBuPonEOZqUVg7eFK6bzkmxGT0jk2mV8=;
	h=To:Subject:From:Message-Id:Date; b=tLN55ETd+O/AQ1TQF7FAEbDSz2NzfpvNOr/FPUCf2zItK5nD62uYgSuKYH3a1l2v4n5enZHkZh2WsDcPbUGJehW/+/VfmB1TlL3yv5Lfa3IWogrnsJb8j4lEH+GQnsDbOLxrZyHe58tJ/14dLOArqGjv8PuM5QnGSGaDmGTfbow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJvZc4Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJvZc4Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36F3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728893753;
	bh=fh7gvnhIXsiuBuPonEOZqUVg7eFK6bzkmxGT0jk2mV8=;
	h=To:Subject:From:Date:From;
	b=aJvZc4VtyZ5q/XxXpC/XeLXSxSkZ7uGgcG5cLZsLpPuJNk6dbJ2whtlYD9A+dHnKa
	 4aq7aga725yo3X3PV0r9gK3RKgBp3t5Dku5vbK1BwPTUNx4pZxPDQqIIf6TUkw+aiB
	 P2uAI2aBEa17KQml0bIMc0paB1sn7eQbF5+6IGfT6XdAJ0ZjpA4fz0QSaRqCNIsbpZ
	 Q/Bio2+j9KtaFxj6v/dQzu67y6hxH8EfvPArR6p/cc0FsUjKrK1kMaXQ59ct6BeLK4
	 r/24QmWkQEEIQawP3wCQkpJ4Kt7qoZ89gIT7EH5YyuD8WGCiMeMiF4tVDwMqGX0zkc
	 U95MoFQwsQnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B127CFC501
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889375362.29507.14119429694613145847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875a099f4aef1f8532fdd2cd6777122a3f4e11fbb1c901cf402c4127a6579b8a
Date: Mon, 14 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728893753
