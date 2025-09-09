Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA85831D389
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757458793; cv=none; b=azuC+qTSh8LWrG0eVbUExdIbfrKDbn8e99O+BviXdKpL8UYccwpsaPRKgZkRMiFAYuuJr5OQCQP+OXIj7W6g3Zmk/jPcpsbTTvu+OCBKg7q+sLVcTNpvcPppJgCSaBr6JvdNWh1+Y/HlACmeQMyNEkkZOy+8Ch6MZ0sU7OSEoxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757458793; c=relaxed/simple;
	bh=6Dgequzey3pUhTPC7zOE6sPZqvUJc5h59dzWKPK8LjU=;
	h=To:Subject:From:Message-Id:Date; b=iAbP6rNXri52t+ef0JThG3gRVArvjRCnmu/U96HgCpzMpjRAOYdQjY+2Rb09aPVuC75+fa0qkxE16RGruX/t4Uq8b8Ccuhe0FPxRR5EL94S59N3ihY7HlRRvjyQFoLF0ynPgjWljLWVkRp5TLVdi8c8NTP7idYcrip+jts3taXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQjPJQBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQjPJQBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1817C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757458793;
	bh=6Dgequzey3pUhTPC7zOE6sPZqvUJc5h59dzWKPK8LjU=;
	h=To:Subject:From:Date:From;
	b=EQjPJQBSZ+TI9e1Oft4hIZTQNX6mskGMMWY63rozP+0NuK+p8qzlRtYJY1GC6I6+9
	 9sRu01CPTWQG3Aw62ehJM7YAeYT/FEUk1T1yYfocgbQ0hSGE99lYbFtsSQi3ZD4e+z
	 LDQt6kx5Oi+Jf3U2ZustsUqry7FVmm4CVzn2N1NhdJaO5R46egSR/4PifZmLih/6Fu
	 Aqxi0D2D7jUvovRYUwso8NV+HpIDJq0TQnKMJqI4sD9GeZ1+4SZZKzBhZ2HCqTcV/M
	 XR3eB6SmrdDboBm5gOEMz+O7xo0UU0GOVDyjjDokHLQwtRq0f7oa0316ZsUOxVGYi8
	 UI76zTDso3oHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB9CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745879358.3949.11236839607188785160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f182ed9ff426a9ac1662208e31d9604077aa2a5949f0a8b2f06fc221eeacf6
Date: Tue, 09 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757458793
