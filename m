Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1193E158D9C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729024554; cv=none; b=OV3BsHBwmTCOBapuOiaUuJROgO2RWTBvyA7fqCICYRptNCKD8nZZuQbfi6MmS2D9Ru5YMRfFqUxfdJQhUTfdDkwEeeCDajD/+Uzum0e5VnZ1K4JFOVIY530pjFO+Y0L+XNWm15SAi0JMQvwWDQoHQ4wMgNQlQbdsLqP7sIV/Trw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729024554; c=relaxed/simple;
	bh=gEjSunFu/ObKbPX5sSQRIeCnsHmIP4eBaWFkQs1rokY=;
	h=To:Subject:From:Message-Id:Date; b=MGLd6xR9oib8SU92lRj+AlbYZkigAMYmzkj7YSOxotrR1wy9ZCLot2uz/DLYcNurYS/wQSTsupIoHeRbU7gUT0vr1LAsGa2diTcIEqWiwFYmvG1czdSOG3ODrbU+GfFqGlVlgKJV/bMaDj/Fhs3e/tb9HzK9jV1qijIwsez8Q3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfAlKsEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfAlKsEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BCC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729024553;
	bh=gEjSunFu/ObKbPX5sSQRIeCnsHmIP4eBaWFkQs1rokY=;
	h=To:Subject:From:Date:From;
	b=GfAlKsEwOp7qwXITbgsbfx1wo1W1loQB324wylLF0fcWMviM5c2gesCD5/c6eYsJY
	 UINMACpkYxudOeMlatrhvdK5OZvUWSUTcQ/kCv4xAhVMkspYUGfgHarpr0nLSIhd/a
	 NcuEHyhFh+9VmlybBIxbTfMOCa4y4xZwKL50pbyupwX01GfsROdJMH5/DEslKdmL0b
	 vu79t8Fl5wewnFqap/yHJ3uoucSvJEDS6Fqhz8Ry570XV41yhmWEdtNhEhg/+OQYKb
	 ggL3dAL+xWAD9bBhNPIbxHtrYAl7oguxEkscU09rAcetUuvfGSJafPDZtvBesWOMkp
	 jZCAfrmDVOZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7AD1F9C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902455358.32114.14702864279621378095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5877344fb478bf0d6ac73a3e8722322691e60542b500d4c68029d3687128ba7d
Date: Tue, 15 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729024553
