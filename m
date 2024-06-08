Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94320D2F0
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717816643; cv=none; b=Em2w5rsR32LA0lfeGFUtq2KE00JY0MyiEtAkNLjvFga02HIhShUDABKkKgac9eSCIW/O+LeT56zWngk2/3larN+UPD2lyyAo1bwK9VdBH0g+npD+yGbvT+H2nwMzUivOc/KmJnKqoBDN8++qhM6/01A6rMFsV4H4uMCtcwyGeTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717816643; c=relaxed/simple;
	bh=3h2XbecvQbvBze58VLRsnIyuPmC1Ymk8AUdz0sL/MxU=;
	h=To:Subject:From:Message-Id:Date; b=lu12P8uyvQjux0JvUFwnvUubZRwFg8WRucz5TJV+NrB+ftqudKVvax0+zr1KZz77oc8Y8y977t1Rrcb49KqeZg29j0YgbkFeATN6dPfDT9Gln2AAMSyMpKSvgXOK4EfVbXcdkUDAFdelRo/BYVc022XFdlAW4+CeXYPEf+iPt1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFLaWsMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFLaWsMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01896C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717816643;
	bh=3h2XbecvQbvBze58VLRsnIyuPmC1Ymk8AUdz0sL/MxU=;
	h=To:Subject:From:Date:From;
	b=sFLaWsMXyMe5/66Dorny/85iNkvENDiy7VZsOQPFePYyMfXC0xBqBtpKAvX4RPRUX
	 hkqxQztdp/UePrxBSya+01Il+BW1O46a6LEFpzUQcq+xLoQoV/Ku3jYwmkB+5wwApc
	 4GBrMzS3hoiJVREE5RdiIm1zDaVVu8t9qNNyhs4xVxNXiag2+ZuW8EPJcXyM5b+R/Q
	 XiMXqPaHDKQmvP2qzGA2ClqKgWJyUB2DAulHRSb/4SU3GTQyrDV7rsfWgsKPLA2xOu
	 ieQdIrp2avKxegPnUVkl1avOPU5hKt56fbgspqg62bi+5ZN/F7l1+X9QE59mIJHvD8
	 B5hU3fWJmhe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14D8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781664282.3282.9518718355564260437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24259dcd2c04b36ca320d2951250ba72df018caec3f241a1b2b86c22b1df3206
Date: Sat, 08 Jun 2024 03:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717816642
