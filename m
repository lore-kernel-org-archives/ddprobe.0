Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9F2AE8D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772606694; cv=none; b=gx712AOUWv2uEYQ0SwYupPSKX9SjXBkRGI4pw2DFQUYSbR8JvE7BRoAU3qgipIph2haHETMsl0Ge2E89JcpSF0cm1c5bppVWXQ9PzE7abgiI2wH/OHFwsQ3jLETnt2AqjzQrIUfoIBds6p6it5X6KWxez7gmyNWons9iyTHSHVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772606694; c=relaxed/simple;
	bh=dhPRZPNiYVr0PJZSQTCtgEMChl1FtIxoFd7HLV1Px2c=;
	h=To:Subject:From:Message-Id:Date; b=RMxA/RWZhpR4bfUGqWQVmNXZVMrnbfZZQHsC54M8xdeCUTkH4hi997C6AOiDaiahsBtXwDAsaExfdvYA5jsyTzZbPoMF5VtMq470hEqTi9Tz89VodwrXOnww0r9G/E8CCiXqPdWR4FqFsCTXjInmhNXJu7ND/CQQ+yKJuByeoB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTi1qDWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTi1qDWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C728CC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772606693;
	bh=dhPRZPNiYVr0PJZSQTCtgEMChl1FtIxoFd7HLV1Px2c=;
	h=To:Subject:From:Date:From;
	b=tTi1qDWLWFFC26QbxrGCbCr9Dqx+BK8tRb7qOTcldwAe61agNSsdaDfbOMi90TRWB
	 r0OVsh8eGW48vdZgJ5Off8TcMd3ZUxj3zTZg0gkFlgL9M31eXUN9uNuI3GKa6MU/D0
	 YqhymQxIUxxxBOKz0/CXWiaPOhB31EqOuOwrxAPcq7nh+IHkXBQRjqmJTz9XWLX4r1
	 pDB8jj6vmx6HfeX9f0w+Dvc6j+YvOUubkkmIptJXtI+sk1TcWXRF3B0JqVm01rlpKc
	 9O4H1bIHGCMNxM/O4x99gDZi0uCkI2jzGeijGjrD1wNPV9q6jbQVn4UqtalXATFB1v
	 0enOwhWZ8dnnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B91EDEC12
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260669364.3904.5083800421264981557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb9c99e77bda06e1d2a1dcff0a5d78a021c5ff9d15bd9215998281ccd300338
Date: Wed, 04 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772606693
