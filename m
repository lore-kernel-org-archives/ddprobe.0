Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD5224B01
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080794; cv=none; b=O+WciB5IyFOVKetB56nZvV4hIPdYerrgtlJpXdBs/iAWlWRVxCt2muuxpDLlOAT69k3LKUBC943/Hi4QqxP1qDcXnxh/mScyKY/J90hWW1D7mURKf3G3e8nypcVXoMrcVLBiSWdcd/qorIv0yYUGvJApMFaSJaHFbFA1GAUsPF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080794; c=relaxed/simple;
	bh=7+Vos0+Aoz/1Hbpng9R8jo1RZHVSl4AbvbsrAO6UwRI=;
	h=To:Subject:From:Message-Id:Date; b=S8cBilze2VVT0xRKxsPKr5Fk2fF2ElTG/NF2vAxJWuAC/Wvdeat0Xb2izhIn7m8iKCcWYphceOU0wpyCMve2szQXJRsdn5s3ad489VQtX/pooMpZgEgsxPOIJuSp0tEOQRIqeIISfc+E5R0v7BWZIJGPbm6CzRiWL765/s/d4SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ4ngL0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ4ngL0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DE6C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763080793;
	bh=7+Vos0+Aoz/1Hbpng9R8jo1RZHVSl4AbvbsrAO6UwRI=;
	h=To:Subject:From:Date:From;
	b=FJ4ngL0VnS750dnYMswQwBoN1Bn6TlT9A9p5Yqcfq/XMjdF4mRgAaFiPgvdw+n/5V
	 Q2Ji2t9H2fdfcGTni8Uyx49CFULU0V8963/GM5TUSSkCsc6Gjs5MPh0SLlANJm9dlY
	 ZlOvA1miYxwYJRniGwimuXURNCqtvFVD43WxkfWA0XLzudOG/W2k6EhhPm/ZlSS6NI
	 dAJdjq0uaEyBlawljk1do1UjgLfeM/KQKmzLGbRm9g6GD/m3/uYS3dOPsYGBvtizbK
	 GpHs0+WG5b1vycMcWekzPd20C6d3XcwtGeIv5NwczBNs8bSl8FzhH3d98sA6s0OO4H
	 xtD6bj27XrZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93187CDB462
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308079359.13030.15999491730065948297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19afb19b778c7114b6c4aa04c3bbf82498e51f15ec64f5a8216cc37312cc1bf5
Date: Fri, 14 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763080793
