Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F071F126C02
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774766094; cv=none; b=mjCdXkMMR/H2TXrms22D/3tElTwYiMMF99RW1npSefsFdSWoyJXALrYu2XnszcfD8rYUsepgyzSZBVj1CX80nwX9Lc5qLpJ9//41zR6aXg0uei8J5MVGy0aQhgns20SO2Xise5xmFmaccnZ1nGv8fNe9+0SS/OgW6hlbbVAC+V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774766094; c=relaxed/simple;
	bh=0Qqqp6CnWvGw0pi6zoFo3xz2YS8kO5pGPyAI7CtvKQI=;
	h=To:Subject:From:Message-Id:Date; b=YWyHlQGLs5nMz4VtX3xDWhYSR6hc3TbyGFNApsIJF6q0zAP0XmjRGrYTHYsLKd2JQmROvof6i/xYHgHvIxVdje1n8MOjBR7nKUkNut2w1pfMVYeGExpLHeZsCtkIyRCZPlK7wnHKvRECGLGLKTZDXDJn9yyGF86zRMKLSYyVaEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl5dQRO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl5dQRO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FACBC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774766093;
	bh=0Qqqp6CnWvGw0pi6zoFo3xz2YS8kO5pGPyAI7CtvKQI=;
	h=To:Subject:From:Date:From;
	b=Fl5dQRO3JGAe5RJvROXpaa7Q0ma6/BAZeJezu4dZbBGpIow+i6FmeRRMeDd/cndfh
	 DYii5DDvUnTEHSOJJCif5f8MHd/XbH/8QtYZhUXlFhC+iQCG5LMiKIm9ad6C9dLHvj
	 yAXVr+V2o5gRSypdxojBAt6/ZCmkDpY3ZLOiy4DHcCI9Q5gaSyyuSEpy4NW5L5faaK
	 rK0Pgyx7/vB9U0aTrhTkilxd8BUSjRcy89bSmn+yklLAFc3ZBN8gtJiXLg0ZV0MMHD
	 HZ8ExZDiCPwQ92L4+tAfFJvSAt3C+Rtsj4xcrT0yUxD/48hNwhGQailMSeZhtjC3LS
	 CTvIvgJNwGRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB7F3D5EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476609358.5327.14731244279792575248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb582515182555c37d7eca9ea4e19a0b8e235e9bed5390294432d96c02729c7
Date: Sun, 29 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774766093
