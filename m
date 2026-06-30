Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426983C454E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782803314; cv=none; b=K40wpYlCW1p0sNI8DFjOpRkD8vEBLf81XR5fLgo62ITgl6/QEjgsofgNQIdpEzkFyio1yFvR2LB7vgaKIXoyNUk0ptYen80OyvgIRH/nvBEvrhjO8EcnQxOsukg92fqIwzFqB1RUcakcT9Iescz+0xU7QJmKzAgADwx5n0RYMZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782803314; c=relaxed/simple;
	bh=RUFXEwNGauUYdftuw8SHvZJqAp/gdBOMeJbcJEuAUwo=;
	h=To:Subject:From:Message-Id:Date; b=nw3RvMJJkzCyUi7GVyvojMy9yxcqYXcjfWHIZTQfTw/KsawXi0fz7Nwz3YASp7/1Ahy72F2mBKkWIyA0K5DSANESLtrY5A7utR6suTjJgW05z4Rcdp3AwkBrRtDz6NhIoXWh5WIFGmF+8ZVnMqAyiuJP2ObuxiRD/tepiqM7LD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGXVkGTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGXVkGTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C083EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782803313;
	bh=RUFXEwNGauUYdftuw8SHvZJqAp/gdBOMeJbcJEuAUwo=;
	h=To:Subject:From:Date:From;
	b=WGXVkGTj1cqkHV0cnCnCN8mfGStPiM26iyk3vSpyr+69PzQj2erqT0EG5bTYpBgiL
	 L6YTFU6IOTseVApey6NnjiX8nJcLSHiQG5hZB/WpELszT6B3jbEgf8ZiJNrmha8Ct6
	 8GI12wn/BvhhPF80Xo+tY5ubIgKPkfgx4ipD8Hk9aHTAbKFd7k3guPVE2m9Cuhp5Qx
	 erPEwIBsFIqxeAkhz+Ol8XKAHE7Zr8in/o8p0QFn2dpO9s0y9rrbr6Mq8+UBk0JkNp
	 9zr+dU5xm1Q0I0j4o82q5HVYDYAnki0uEzr5wHJGGzRIKgm7ZDiNw/brzYLyjOby6F
	 uEAUa96YNY2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870FC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280331368.18712.3786487702371803239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fbd32b14fe041eef30a4113af218420af6ff9e18605319481bff685a88d6f1
Date: Tue, 30 Jun 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782803313
