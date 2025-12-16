Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88923314B66
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765861375; cv=none; b=MlYpzv7XU94cdpnhoPkSH1PYqGgUtmxt0Rke4DDP+2SV62xn/DwSIY02fo5oWce4MthCXWjidOUiW/AR/oSLRsLIUoPpTVMfcCGLIPskD0XevWvKLklAMTwTMRf/aKdPGfx1VLcTNo4MHq+hkKskvJ6//zEMG4ftRaA0W7XNZQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765861375; c=relaxed/simple;
	bh=yPSGOdf08wexYQC7IR3GYACYIhseWfjHdkAkf7clK+k=;
	h=To:Subject:From:Message-Id:Date; b=caK+buKPQnxcQFLyJf5i6ueDSsskpG5yNlgLj/w2odkz4NdJ476/3Kz6s6n8Ti8RS04XeCri3QQQiAhT3oDLh9EgJzpZnHq2wPKKd9yyqkFIBDnQLMF9ZW0//1nIaEj+cc8Y2ni+4g2KkTTKJ+XczzNJi0jGg4JSBJEIlBZmjPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asj/cS5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asj/cS5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3921C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765861373;
	bh=yPSGOdf08wexYQC7IR3GYACYIhseWfjHdkAkf7clK+k=;
	h=To:Subject:From:Date:From;
	b=Asj/cS5tPT7b+SDQKdOiqD7BpYbSj+6mK/PQ1G6D0LbWHkumuAC0mE75UWUL0AW0W
	 JxLRFlEq78T6rRLBLEaz9z2qoWDjh0Qc3QOVLa9Rz6U+KjIreOVj/XoDPDJ9dwa058
	 YkSiGQt5fEB+H6WgwJzgfJs4blV5j8AXc9O/GvlqLaZ0i43WmarEbtAxQM9n/YNkFq
	 rN/3Mp/SHHAS3m4iOhuvjX2fG4g4uQtWmDKkdkjJgn26hycsI2zlf4+BiZpG/pJ0YZ
	 MoY/UZ59/uXlH2PYE0Uf23DcxoNVArgbSQQ8W+gSjW2Qg8JFj0dwoeuQKtiNYwCptw
	 /jW3Q/0XVFaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBBD5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586137358.467.12211693743010701299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6789af1b95ee516d1117f1f310768db600b0c98cfbe2eae1647f49f994131b7
Date: Tue, 16 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765861373
