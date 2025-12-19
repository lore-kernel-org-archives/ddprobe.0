Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B6523A562
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113433; cv=none; b=t/ehDTyjRgn5bK0XgMCzo2vEidcXbS2ymhmJT4suegb2vg0buUCGYJsYWI+CS1JL/q+81vOIjRvrwZo0l/J1AAhJFSd/RiaKkqhXX+33za8OZDx7i+75scqkHURUnIsj4DVTY0nDN+j1wDNiL4R6IJBdtIjffr8qc74dnp44peE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113433; c=relaxed/simple;
	bh=O0kvGoLKQ6W5GZUZPS0UMu7GoBMeP2OOzgBmqe/bg9Q=;
	h=To:Subject:From:Message-Id:Date; b=E7/YSrVaeDbJelPgULWxksn/GdbZSGnv68Uyp32zKKo7//S749iLmn5n2QNgWZgDQxMwxpmufujwv4dM3G3sPzKlAxxjUvd7U9q8k0RICZZwJfntEmv6zgmnswIIk433DRfVWPj5vuh7EKbQ+cC+Mb+EMp30wb92D8tAapmIzMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvYpKt+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvYpKt+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A645FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766113433;
	bh=O0kvGoLKQ6W5GZUZPS0UMu7GoBMeP2OOzgBmqe/bg9Q=;
	h=To:Subject:From:Date:From;
	b=jvYpKt+4R1YqYKHWAjtRgul3Tnc2IEkvc/7eJYjERJ3SYn9av55vSgHDbkgfySk5p
	 XhydcpGNS+U+CIvM0PcjO8Jt7oI1hN1kA/EpqEcwVqAeM0rFpO50ApVxgyjoHS9LbZ
	 iRWRB5sGcLNZkrFrteSYuzEewV60af7/Qc/MjKHHxvS2CxTTlpUoTQ3W/geI8ABF33
	 LfutkrAhGJG884ZpXHPyvKNJVrSM6IfHfBKTXOdwaKtbmcpojHXQMimenj3re+knZU
	 z8hdTXqlftXfjOP1oEG4KZzzPZXoW613EZSlhpIt3Z4X6Q1AU/AUxOb78/TAgawlkb
	 ICeCbRpS8YSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A5ED711D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611343359.19029.7089061752786315082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b7d8a8eb1881a3ccd19c75c9d21e0dd371c87f6f728edbb007e85e5ffd9dc4
Date: Fri, 19 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766113433
