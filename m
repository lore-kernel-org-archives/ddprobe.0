Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFAA125C1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715496143; cv=none; b=HH5wWUHOQtJdeXErFbx8gg2QUk8lX0gwd2Nmowg1YcUZ/yJmMBBR9vhqvxuF4WQCdH1R0NNMXaWzHDYu0M/+6YXGZS0yuU22sudqyxqaevirKY4V5JO/tOpL+yuGlc61NFk9OWnrmaSlOAXDghFCe9h+UltgWTy2u9i3A7s5DVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715496143; c=relaxed/simple;
	bh=Zc4a9gNST5F4Ble6IopAhYw0UgNDozfGiWxQ4OPpd4M=;
	h=To:Subject:From:Message-Id:Date; b=JEu97XRDhA89AKuMolTUVeyXETtZ4mER7ZYXL+p4VeiZ/f12Gd7Ea5iFWF1Ek0GHJk+0rOq8FUV23YwwWbntPh6PGLs2LP5Ow8G25hMRJ4aX49yKgNRgk8U/jbEf4b5edA0NXgQixl7HkATmfhEQutDCwH14BhaNjVk4X1AgDAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVLdJslf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVLdJslf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D58C32782
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715496142;
	bh=Zc4a9gNST5F4Ble6IopAhYw0UgNDozfGiWxQ4OPpd4M=;
	h=To:Subject:From:Date:From;
	b=nVLdJslfcjd4J4HwkJnkZgQDgG071zoQ7e0Jgb9cvOOhq0LYpFKVVJg+UH8rmCA55
	 5yg9shvrg6epp6WNjsi3TyhsrRb4SRMR7p9SLR4PT7mq9GngmUZG74h9Qyn8sQCnzN
	 AfbnBek3OmkwkUQxVFbuH3vMGHuYDKMjCvhV28QX5lh9j4y8cqlwSe3erUVZbdzCrH
	 DTas3jEk8UFZbLv1WVu8yMeVjrbTe8R6/dS0zk6y0nzzcFmmCqTRC8aFSgJ6segXmr
	 1+I3x3Vt8ruTQTSrVOToLMBEBqxup29R3K+LOhb/2mjHNv6b+7jQqKTJRcdKr+UJRB
	 Y8g6PI+Mk//cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD2BC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549614277.7697.13714590423383055646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa78bc5c2287f5ed8fe93280a648107e91289250e84c0045c0c4de56c0c0b48
Date: Sun, 12 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715496142
