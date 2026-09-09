Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6873658FD3A
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788988834; cv=none; b=tCpkeFUapsSHLXgN9kz+bN9M+PpSPVhcDeGtqvth5cY+JdwZNWS/R7fTcyRi2zJNnf2uVa/DMmbs+18qGUSAI9Ypjeu4hN+ZwR8bsWn+ZcYtGCPpBFHeCqSiSEx0g1ef77EOK83J6A1vAGX3uyljeA7k8Y9ktdmlAh+ESTowsHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788988834; c=relaxed/simple;
	bh=fJV1FL5T+slnGg811tGleEJjAgVuvHYZcmdHxt4feRs=;
	h=To:Subject:From:Message-Id:Date; b=Gn1dXfhSp7Wmmc07hqtcFdh6Lrt8vgdfOWr4KOTwcJ5QVqZrjlGA+ZdrNxPHdT8ATLsPJNoBvURuU/n2IBvtTY/om4/UdZZstLoy0J8h+LCN0nPBRxzRrr4UUqfv4EZ3pfTU6GDAuAURyO6gDNADRZPCdUlNf57AoM6B4rLx/jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctbnMyvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctbnMyvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC74EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788988833;
	bh=fJV1FL5T+slnGg811tGleEJjAgVuvHYZcmdHxt4feRs=;
	h=To:Subject:From:Date:From;
	b=ctbnMyvWjVf6dEiphbJQnXN+uZjW9SeQPTOYW4CwQpT/BkCGkE8J0kXHHFLhryJxR
	 ai4UTRNDue1DU44ikKpXGvquCqqGxCkmNgcAFZ/JIRT9a1iXDeAknbGhHf5TKPFzYG
	 OxsB1zNXaCiJDqw9OgH4oMkxmuWpVDOcpzWUFX2eKV7duyyA5F3BBESNs8o9Le6j+3
	 NHpKL6tNNiQre9X/yphY29CivWtUj7Swk7n/iWi/KfkQnaSRRNdooCqCUHNxwKhYOL
	 qbbXLvR5jsb2Gm8xeSZU9PUxJZwLjywoyzT7RPwSWxD28Sot7IgOym+am+CopiQf2q
	 EtkA9hlqXdVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B558BC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898883370.21832.13626717585807404780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4881348c3493d0ea567c25c72bc1adbdb517802020e6d2920b65264d9f78b4a
Date: Wed, 09 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788988833
