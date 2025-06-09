Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B317FD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749471594; cv=none; b=HOgaatgUDNOD8Tm+1sZyGdj8uwbdKNw9rIb49/xntUzT+tr0/xaX5bmYEsNxyeEivrHOzOnXmgZ3LR/f59LgWwzUXchIYrIRD8zURPfCM0WErNnEZBhrZIjvHv2i2LyGLXo2Fi12Hd6ar21woQKvfUJR+AxCjiEPaKItsWRvCaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749471594; c=relaxed/simple;
	bh=lpzEww1coEpTDQ59O76MgW0fA3kZk+TXcBBALxbxjDI=;
	h=To:Subject:From:Message-Id:Date; b=Vb1a0VfT750UtCiLVHeM/jozgQirFhBTHEkFYt+pnap1wgFjJBc+yN9Cv6/NllH1O2D4K3Pg9s69QCIQ8limm4ZKsT/vIv3w1RkK1FhN+4jnyY+1XBsUWn19U+5RCNPW4YHWb8X+bGElFCz4DwPfsAiJxHCOP0Bac3uP8HaOXUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQPK5/5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQPK5/5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749471593;
	bh=lpzEww1coEpTDQ59O76MgW0fA3kZk+TXcBBALxbxjDI=;
	h=To:Subject:From:Date:From;
	b=gQPK5/5S+5hDO5p7vcdMJDvsI/ej92it0p4zibsW4XsJXG7IXM0M/bqOQmPbuyBlU
	 lFGLTUzubq+zD4Z0MCMnW4AUCE0VXsdqukUU8Z2fxq8/qli4EjS3do6eEfgWWmVcRl
	 gaxRxgUDtGF1S5+PAmRWjQORqHNebMiPM6EIvPouj6e3BiMEVgamqzsWRBPnpqQfzu
	 6DV1VKwmY7FLSHHZ+B8mKSjIfSBdXf1Q6Yv8m4+YnvKCdsGJghoGTecNNRn6ZkFMwh
	 PaS8ea1X+8RF35qgp0G+VdAArZNUbG7PeivESJzanXlNwtWVp76Xk389HJZJn2hYEP
	 A9Ld+sRihguMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B0C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947159357.28652.11888211177127563671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52e37fd339e3670b1fae2f8d01a9d26d9d8c254e68ed9fd480706e336b9a0b7
Date: Mon, 09 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749471593
