Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D893D544
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758701994; cv=none; b=s53CdP4iR9zIi/U5zLuyraBR9o7kqpprwtOGWZMAHJcI8DLK/3uCtEVsSVIKscFOw9jZYnpiUqFhAG4zPV4NpJOE37p2vY92AiNv9WMvzxSlr+g/G9NA/1Hw8xdhtL09XMwjd4CVs09CQ9iVn+YgzUOp0a7j9bn6SrdhGGgzF7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758701994; c=relaxed/simple;
	bh=G/AptKxJDncAE20pl44BM+i3MoMkCLgRTRO4gzdZX78=;
	h=To:Subject:From:Message-Id:Date; b=O2VM27hPyNbk/3G5pDKJFXNYaSn4niZNYmtJrx3GeUNgRBnrirch7ALAIzmcxuzBpOCRN+5mK3V2rF1YMFg8gLDjZXDovAoUs5YpTFR2i3D/fD55fktS3C9Zc7V06/AYf2Ca/h1n43ZNcrNrrgvQ7qT/n51nkgeEDrsgbjemB3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUQo1hEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUQo1hEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C06C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758701993;
	bh=G/AptKxJDncAE20pl44BM+i3MoMkCLgRTRO4gzdZX78=;
	h=To:Subject:From:Date:From;
	b=eUQo1hEZ9M/D2J6QPdS4aY9iqugwfP4/etSj8ILdOI6ZsM5GzBLzzgaA2OgkUz22p
	 7v8OzYN75024tx2xaQASU2w+0tMOXJlX6/Bl7AMNzKgvqgAvAKOWxb8GEpwrvuujN8
	 +NbD4qXkVoQ2oaJS9C+gHc4ldWKCJPXsYhMShv50YQ9NIuRi3CqiUqvyqIfU6b2EsQ
	 EjsmcCvse1ncsAkCqi6EyNYXsMmDlUebCGlfuJ7q4HlzSxW0dHo5TFWg9F1IkBk6Z9
	 W3I/WVuPU9K1IJfFNk/XVvNTi42604CYE159YcY9tPUy8LItNahUYgElT7HTRQyBNl
	 wdjdsXykSGnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C8CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870199358.5856.9877974306470173851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa27d4b1ccb23bcc9326dd42ab43cc631479f66dd7c92724d9e9407f27aeac0a
Date: Wed, 24 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758701993
