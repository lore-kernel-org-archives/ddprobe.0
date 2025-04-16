Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2377209673
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744826393; cv=none; b=q69xY6PshzBZ7ygk+o82n63g3+gFzJYw3mk2AbqL2hwfESb2ScRlxaNrFK2tbTjv7vi7jywBn/No7+5e9EFA5f/q6zNLjAcy63QRVIIlYobOU6/IEEkRx3DMdXhAUi/9J1lB7WDTx+58kc7XnIJrysBeygNOt30kpb4Nbi8ySzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744826393; c=relaxed/simple;
	bh=q24NbP5t2gzKw2RSRui3StfL6VR7eRLFfdS1OQcYhX4=;
	h=To:Subject:From:Message-Id:Date; b=lG1L7nkf6AdfF18Hmi/7+aJQY6mr2bsPwC/rgbgEUuR2SKBvZ/vlGdJdBNJde5Hn161oSMTY5asPNDp+jl+QOSasAO76J47WZRE+MFQmS8rTbsidoLA8oGyyVzM44ERZWPuMvB1pDIJA0JZ78ZHOLHh5DztD99G10fK/rEkF6D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFmOv06y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFmOv06y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16FBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744826393;
	bh=q24NbP5t2gzKw2RSRui3StfL6VR7eRLFfdS1OQcYhX4=;
	h=To:Subject:From:Date:From;
	b=BFmOv06yVZ56OIZD3L65jRfkAtYh6f0VlaUoohsZOC1MXRH0jwT//OBojowi0/YKc
	 6k0y2ATSuWgsy+nYCSsRPFic9/1QwIGEmPkgQn6KWsfY4ZrGR7b88BM+0I4Ksqm6CP
	 FsJPow/xa7iwBS424uH3cw6mL3rgdrbi3jJ/7Ng7LjB5YDBoxaX1pThUFCY6gh0AO9
	 9SdUJb6JLrKXxx+xvTrqCjEJu3iENAHrl1KMlS0noVL1ucB4+YqSVnm+1BPpYoFO1m
	 IjIzXcfSAArTwH/xP1gh03SfTdIGiyyQ2kahGWZHyMJqJ6LOUdG29ZdYTj+jw5Vkfx
	 6RhFbzlXyvm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FCC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482639357.2179.14470257951735869286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62036ec4ddd3317a30b0f7a2c6affdecf4643d84a94c20a81b1b9757f2770507
Date: Wed, 16 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744826393
