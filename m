Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FB13D891
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753541394; cv=none; b=iKju/RpCknrCDg4gDLKBpeV8yK+pb5jQNTrrTNeZxWSu8ZVOrquRQzraZQAZiBB+Jg1GbDZJ9KUqVed8YpguQM7CSeS1uZgIrCv3GWoPf7PHN3qKD0Z5UoEdaQ8CuHQbnCLXfYZIRr/mruabvcdJ2VOBIhe8pXxRPRT2zQD4H0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753541394; c=relaxed/simple;
	bh=ebeVTVUF5KHnMmnBOsJrh8LD5qTyTlx+MX99kx2EYu8=;
	h=To:Subject:From:Message-Id:Date; b=XQ1eJC+XdtoEb+OzgQR2N1jgWD+EeJT1DeEezjARYXRFaZZ9EJbCNZDcWXV20QgyqsdD9R0+MIgq3poxgDuBJmFCEGYEHz+8jQfsMgaA8Kjdp/EXqex1St1R2l0pc3Ti+bZkfcnsODvpQxWnhLQV/d8jP20I+CyDVE45hPg6Q1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtJHStaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtJHStaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F99C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753541393;
	bh=ebeVTVUF5KHnMmnBOsJrh8LD5qTyTlx+MX99kx2EYu8=;
	h=To:Subject:From:Date:From;
	b=VtJHStaSj/ebNXk5dYLfY1+l2qD0jbxoPHt80pVZb9IfBa+rmDyj1GJcPugrej2Mk
	 B3hfEs9P1H+4qTrvMsZ+DuYKZCE1fN54WGqf8U/ecy6/tynpa4XXRJNso/KHEtHIjU
	 CXSXgqeiEWzTZ0ViP8552anDikMKLK7Sec7K+vWLzf63SYnMsTRyX7V0FKNm1llXjW
	 DX7rNoEnuWPx1lgnxcACYBzqsFUdicwSWFzCZ9gumeHD3xsZ0DwwofM7htbPQPn27Z
	 Nn1NOy3XjMbJehHR34p5l7Ta/eeFrUmUuoXsoCYrEPV2w2WVX7QeFhXt1lnTLYqtaM
	 nhEtzVfaCxTBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95761C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354139358.19906.2332455748183886831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43dfda1b4b0e14f20ec656a97f1d079953102258d51b2870c18cde0ca07caa2a
Date: Sat, 26 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753541393
