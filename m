Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C92D6409
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774769694; cv=none; b=fY+9EizIYDRXIkOciOx2lGczSZJNdaOfEXBgMOJ4X9DV9Y6wpuzurr4hPIYuHnOODKOr0lqoqJ3s+vtiwPcUlQc72bugqOK51PLoPwOpk+mYKho5SVKF/WM1iBl4iXdnbWnZlx2a1aNowizN7BqeA7/JxxCNWIp234gFvql99iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774769694; c=relaxed/simple;
	bh=h7Sq1VzFrk4yv/JzTSmmhGGVckOKrNYeDXJjbNTTLMM=;
	h=To:Subject:From:Message-Id:Date; b=qPrFzFOuczxT8tkfVSEoSkd3HWH5bk3/fNCrNcStv/yF+IJ9LP+pQ9+cOGyHAKXOMbMS0lsNeMDYmoKQldQK9Wtr4PQTFrGYXUf8J4BYfdx/Bak7fpN66Ln/TKZV2jXEMfXUDlrU3vlpeif1gahTUdvARN5oihRiAFpxrTgjZgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiGVRrTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiGVRrTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94AEC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774769693;
	bh=h7Sq1VzFrk4yv/JzTSmmhGGVckOKrNYeDXJjbNTTLMM=;
	h=To:Subject:From:Date:From;
	b=tiGVRrTi4P5sH57OPxELhsNuXPvfmaFMQlyo3QRQMi31if+30PLzOO4ZW013LF4h8
	 IzT27VJbZi4K+XrsO+/ty2ZYrstCFzw4zxRBhjqbNr0fc2WT24eFD3hAvrS1oQuHzo
	 J1aMs4l9kiOpUEzIj87avnN+hkLchvtlSQrgERGSzHg8DG7TJ06qdw8iZnHWtUaU2Y
	 Cf9A5dQbZcXCdAaIIULV/NzM8dz2LCARkAaC7u+um8Eg64hws6HrXmr7nh6nS3+Iq8
	 difZ3DK4WaZh/CMdqNk1ikCG7vbBdOhUJdGXQcBFmDDX+tcH7HHxEBgMvyWUye3aI9
	 EL8NblvaWaBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765FF3D5F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476969358.1144.218863606222159717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75edd3fa2b9a8d7f91d4f1eee039a6e2c4bb21e187f831a0a5f2be70f6956414
Date: Sun, 29 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774769693
