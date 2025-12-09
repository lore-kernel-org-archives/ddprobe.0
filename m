Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A72FC881
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765273974; cv=none; b=GGh3VMUPPRh8ZzMlBXNUcLQrmx5jDgrpKFQ3shaDvpiNpaW3Q8SjMpL5W0YPP5OqJdRgrqnnIwdNAv6/TCtp9D9AkMgiY9tqxEAojY79VbLQwqxTKFOtT6wqp76nJeeDXv0RZ+gv3/I9jCeYeZQrGIWMSCLUM+Zd2dqmu560w8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765273974; c=relaxed/simple;
	bh=29hsCtaECVSIff+ATU6zMXM2qIsG7osaMGaDtt/Vqk0=;
	h=To:Subject:From:Message-Id:Date; b=SSLzwGLHsFM8NsYIoCQNOw11OEfMMerFy/ta8fooPQoM5fQPIjzc7RAXbpQ0DhC9qBMF5FfBrhb+wVIjXQTIzgiBeKn3VcDD0ouOrWGaUqZyqJXx97Chp9z3+bUul+IVXnOEvOH8kQhGfgLq6tRZ+loxA+86zLemqQXH/ioGufc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/dpLyu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/dpLyu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513CC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765273973;
	bh=29hsCtaECVSIff+ATU6zMXM2qIsG7osaMGaDtt/Vqk0=;
	h=To:Subject:From:Date:From;
	b=D/dpLyu/bSmR6hS6stt1+FtspoKfC17eK2pkdfreaqRkMxdzz8Glaps39/dlLmiK7
	 +yPbogsvaHiOBzk1TojKLipWzDyC0HVQxURMqHzSG/4TofMAIZb5nnUyceBE70VAnM
	 bXGkZJ4KUWWreg851B9rjj1gucFdK9YefC/62YfT5RdjCJTSnY7AMSbweCjegYYpCe
	 j7d0K+1z3jj45UtghEg/oV1jE0Ims1srevQgj0dV69KM6ppMvSWupGr1os4K3e/C+r
	 ZLTgqH2Z0S74Kg3dp0pmWjyHyhQY7BMl6hZ14SR5+JE204W7MXvjdQvzF6Z1FvBTSi
	 uaDDeT+LLUBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BCD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527397358.29691.14729081090740509340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc29aed0174b661f83c54d890fd55d5ca50c664edae3933fdc700a113dbadc3
Date: Tue, 09 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765273973
