Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0425D1F5
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558194; cv=none; b=gisFuB7IJSwvgIirU/aKtIXE4fYKhXz693RIkVD/TQEtLBSeV4MbUzPOvX1ILeOG/1Njw/EJLOCZbeR3LUK+mR56iV86cGLewBy0HzS/VB9zithDa/KM3Fl2fZJHShOTe84dgB92OsihgI7A9RHnyGIAVOSReQyY07udZvUj7as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558194; c=relaxed/simple;
	bh=9UBQNM74Wu8lvQhp0qR/yRJ69NLt2CRq3ZYhg+1yd78=;
	h=To:Subject:From:Message-Id:Date; b=cnIQ94CZBg3UTV65hw/27vytcYJbTnDwRar/1tLJeW+p2zGD5vwPNB79R+upDctdWJAy6yCdXPeLH3M9WtOU7dLY7rCG8jr1SKYADDnw9AD3TrcboU+CIoEojfJeYzXxRiLHJ8Ki2wOkBm916aVDp58a9Rav1U4FaXS+S3UDJQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPnCjZ/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPnCjZ/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA376C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756558193;
	bh=9UBQNM74Wu8lvQhp0qR/yRJ69NLt2CRq3ZYhg+1yd78=;
	h=To:Subject:From:Date:From;
	b=TPnCjZ/E3Bar+CDQL22ryGk0tXvtwFly59GNMBkEkUWNL2K83mqsps4r2kTBn6HIw
	 NMJXA6qOy1IJ9yUppONHOwXTbl4aX7141kWeqdiq9z/x45D1DPM/SEjf3D69lHfdhD
	 kOrFWTE97T5inCOT2qOSFMIGjXbIftjXjsZHS5Z3JG23qsSpmdgf9PX+kGDWO9lldN
	 es0XZI0GpjlAWH4kOrXhHXHbHV1pFzYvX5At+Wq9efz27qVUAAy0RhFsEMVs5j28Ub
	 HlBeipwntUVb+SMNUoA489arH3uiIEbMhWZtMY5dX0Ehj8Bmg47lMGTm0snSTtX3Zr
	 qn8knKLUoU0BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97262CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655819361.22991.10369636762490968584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469d11dadce6d61c5469315d1e292378d25c4c880ded214d767220556931e699
Date: Sat, 30 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756558193
