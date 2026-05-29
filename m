Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C4B36A009
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780029754; cv=none; b=C1pF5WopNwWjHk2VvI23+WKnEPU6/lSJyh3WFhZgm/Ep5cL7zaqwipC3Of97s/eqKUK2UuLlCGWrb6+/79VvNOeweIhDSbP54L278CLY5GkUj1VXHvW3xOXCte55wHCrIrrhNFxsgc4vIDaCeHSODZg4Xpnn+QVIsdXS/KxZlBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780029754; c=relaxed/simple;
	bh=5qX4VjmhiXA5tMXF/vyB+uVshNmS7zEsxltGmU6yzHQ=;
	h=To:Subject:From:Message-Id:Date; b=SU+p901IyLsdkN4nbC26MelcJKjAYgxbSEBZozcQwT8D1Teik4nTAfnCl75TtQVTC6sfDXJBEEJ2NJefPE69nGemmz9p5PWmHZusRjgDU55YkWZRHf+/IaA8gmSgJPh79DY31FZtoWR0Vh3WblQkXXXZFA9sQiH4Akn+RbBZ70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv7rJelk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv7rJelk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2CC2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780029753;
	bh=5qX4VjmhiXA5tMXF/vyB+uVshNmS7zEsxltGmU6yzHQ=;
	h=To:Subject:From:Date:From;
	b=uv7rJelkqAdSVy+o9QYwBtREh8nz0RFQWfvik0GM/wuq3yvsXGA15NlnuYZokyfiR
	 P3dHEFJTWufiTxO/0LL0UHgMSDoO6yGu7mlDHpg0HSdgI7KPbv47iWlMh4wgvtuywv
	 Jjaa8im8BtzdYnPYnmPf/3qqTNBpOggJF8PQq9/fmEOJgInNiopNiGvMP1NyQ3X+sk
	 sadtQ+3SIgnkiiHIs8zjvKnGzFEoJBzkY61zLPKUIf0LcPcOB0a2jyx0FJOYBqu5Wo
	 XofFljB2NjxvTYGBLbm+cNNJc9EPGjV2ru8aSj5SaU6xnF2NY6IJ7R1dz9szH1LCBu
	 KdaC4NewE8BIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9623CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002975368.24279.6586934887158803066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c3b0e3d7ba67902cbe7079c94392a5619df7d9937c9f6f30a9958e1fa5f1b
Date: Fri, 29 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780029753
