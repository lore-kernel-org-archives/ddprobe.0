Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DF018DB1F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758492595; cv=none; b=hXfT4WCf4UA5wHaFze4PtlaNxK7Kk/QGRLrJBnIkG6JtPlNUuR450R8uRtXIkhOfx+SzERl9K0ldgq2ni5DAt5p6ZX8yAlOcqCBIq845HBadJdCnB1IQKqHt03e6DiIBWXvPcLlsOMLg70jswMEgewjqchbPPScq5HkgG5ZwxtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758492595; c=relaxed/simple;
	bh=1lT1pYVPvsbcRtNBL5eLQToOQODmapg4sF/LJCiD2xQ=;
	h=To:Subject:From:Message-Id:Date; b=miXoXQ97qnEtoiHVSKt32AqC6+VPtx+DGCC8Q51UE/oMk8qRa+x9OAB2BmToY7ejq4qootvXtxJDSzbjApRwpYnjcEtKl0Itsn8dUuL2nX/HW3lVawopcsuQMleCey8r9piEeWKYvrCzLEzBzTFy7qp9Kpf95BnRIkNN3VdFYKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=co91V+lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="co91V+lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9357C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758492593;
	bh=1lT1pYVPvsbcRtNBL5eLQToOQODmapg4sF/LJCiD2xQ=;
	h=To:Subject:From:Date:From;
	b=co91V+lb1PMWnwA7bY6mrUjRvy6BaciJ8bFAqWYLdr5LaD3Xn2eBukPJWsx/yw6Cv
	 EH7LPgD0RxWSI7ETl4cIpBOwlvPbZ9+ptzGAGX+jL1wxcpIL39HT3Mr2EQOLi2oE33
	 +on/O3k09aGrNUbgGd93kramm7La1tCaHeFY85ERa4CtGQ30HMbOsyHslU9Bl/PCY8
	 ngZqToQ3vhm+64UvWw8W3Ajq1D3Wyyok0aBTIhNyJ+TESHTYTbNRWVCDZnRXZIzNK0
	 Yq844u5O6/rnvZ6oQLQxVQzoJTKdBDeriYpLZqoMklK1FjJPEjFhFhMFVu6Ov20SO5
	 UzhhaHtAbMN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849259358.21394.3957056571993030756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa58267eed63b22e11066f3d9355708d199018f70b02ae81a515c4b83f0ba436
Date: Sun, 21 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758492593
