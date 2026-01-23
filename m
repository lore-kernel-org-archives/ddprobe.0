Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABBD30EF69
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184834; cv=none; b=Jgd5jJzbfBs7NY4ATmznmLGAf0+dmLy+adLCLxuLjWJ2e0uiK6/VgqeOeSVaxwONylfiW6DBC6ZNOm7mi3WLYa0ZVSGcCoHvh1ZxM8pju2nTFNChDZ03NA+5wJTIkDRg/R/woyJvnRt4/w7v2D1nNz88fdvcJm2y6LBPuaiy22E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184834; c=relaxed/simple;
	bh=nBVHMcrEI9cDFHwsE7RuV1usbBdu0fQGEJEcAbx59ug=;
	h=To:Subject:From:Message-Id:Date; b=UN+VK9sm84vi+ZgJSlIKa9MKR5yjSgwAX+Dis3TOCz4bzIhDt0vRzZqMUzOxm+3P0a9e5O3aGux/CHYG12MbUILaAmZX+DiqE/lD6zHtxS6uzxGUm2fe3CU10oq4V45+frhoduUw1BcARmIOyFs5K4EtnhZyIrAoiUg8h/3DU/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoVETTRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoVETTRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769184833;
	bh=nBVHMcrEI9cDFHwsE7RuV1usbBdu0fQGEJEcAbx59ug=;
	h=To:Subject:From:Date:From;
	b=MoVETTRQTWKa2MNcsp+YZcQm9ssSRh6qmzkd44nDj0vHHe6dBtASefbME1ydr56dF
	 JhoRuvLWfl5DvK+D/5k3BsfgQan+DBVB8jq00mO1xFFN+VLLY/0RJFoSI78+R062Xv
	 ehxrW/U9Yt/qhwlJSv6TV6uUGxCHq0dvBEZ1ZZ1GOI68sYUVWXGyPKdjFL9Y3RM4xX
	 u/SudApl1oZT2rAbJGUj1O9DhbrB+dgF4VMr14hE+vnhgDCSiJ2rN37qLnvIFtKD+7
	 P7zvGWMlAUNuJA1M78ybwJovmdGVZDekpjvxKh84RCSrilqUCXoimXkJ26elyHHWRq
	 L3XPIrtD/KN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C15D74EFB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918483358.13041.11830466110699133408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a321e1331c702bcbba48ebeadc47e94f301c1818700ab8e669afe95d1d8775
Date: Fri, 23 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769184833
