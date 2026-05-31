Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B45F179A3
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780197874; cv=none; b=UZxt/HfDW9TEf9LcTQCBHeQkj6hzEjrljGGA6+xlSpBTvQQJTvIFWmW7n1i3QMWsZjXY/2lYgFX4ZSy3o4XtsSDVrzjaQrjyBb10DleWAK4UN51nrDc7fW3lxdy+v2KXOsulg4VmOR1FCSh+qVVLDmh0xii9hxoemzpFaPPf8q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780197874; c=relaxed/simple;
	bh=uFXdr1hUv3KKwzqnJXUBiiAXaI7FJIhvr7tv6DOxrbs=;
	h=To:Subject:From:Message-Id:Date; b=clM4w37X0uaLcRSgzyh2FJh6eglj+PbwsQbicNycksJA0of6E/o7/D4+XxasPwTJRdKwMyRQjpB9TM4SSq8rbhV7PtykbIF2OJIxMJsPeXmNOMIX5f7M8GYqiMWUZWQ4Jlv/YWr3DWneisgq0cX7PZXFUPXdfJJ2UBFo5allS7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1JyYpZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1JyYpZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C000CC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780197873;
	bh=uFXdr1hUv3KKwzqnJXUBiiAXaI7FJIhvr7tv6DOxrbs=;
	h=To:Subject:From:Date:From;
	b=A1JyYpZoxzgGVwmaZV+8GLp/Khr3UrdY4fW2fxO/iYiu6Pgnq5OnFIAr89qkQbKL5
	 MZha6kEoM8KmAcmboomHQ6Imwop0BsBeY77zJ+IddHo8/3082as0FHnVKIWhKjWO5F
	 6dE0YJPrt84hEe2j1vLcxbY8dRP0CzFUGR49K8V+Z4WFEhbjIhjWJnn1Ejk4YfNupv
	 Z1gkvZTAaQyPPOPBlAyA2b8WRywWeM/00U8gIFIX1GbSuQr3J4/LgW/JvUkO+LwoGe
	 zhsjHatkl859hyuAjGhVynMP0Vp5ZE+814ITJk8igYml91WwV4HG0OrfxO4gmpP9jE
	 7kAHIIZRxN4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959FCD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019787368.12125.13015300674999907088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443bd17be36f392733d9f767696ff186ffd539f084c9cec14db59a9455545c27
Date: Sun, 31 May 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780197873
