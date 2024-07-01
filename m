Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797B738394
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719872723; cv=none; b=WHRsq5r8giO/5JrCwl09ModUNJDVVql3slJzH0WfVeYd+2ruobOLYK6u8qhFDkKGqR3KEbkye9Xdgpu3Gn01tYokEUWv1A1cw29ZGsi+Ga2YbqV8h+7y2lK9bjFEh8jOSouY1YOfEYjQ4itsIcoECV6j4YOc9RVVnIvXvzIPOtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719872723; c=relaxed/simple;
	bh=+hLtRRiuYXU8g69ZeV/FLH2H8shcmeaExt6wPt62vWM=;
	h=To:Subject:From:Message-Id:Date; b=uTpVmKtJiDnzk2lVePPBAfrf3KEiG5swieCMD67X0axJsi3NabZIVud1acpWR9wfrp+30Ig+go3xvHDglhOiKt9sqY0oT7BTvRYyGMlYGrthOQ9KDc2+5y6KBGuWsI6jvVjE3ggqWx1IegXkFHlwgzHopv95i4ChmQ+GOwfYvRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTvyq7nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTvyq7nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC81CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719872723;
	bh=+hLtRRiuYXU8g69ZeV/FLH2H8shcmeaExt6wPt62vWM=;
	h=To:Subject:From:Date:From;
	b=GTvyq7nMb8BVwdcLeaCJg17jVR1lTyOqUGN8Flf2KZ+su3I2pEtaxuxtB2IPk9web
	 3l+3VHpuHZeYWADJIMWFKIQ7EoTxgnmRQi6He6Zxwv+89W29XmfrlR/plPE1qSpXab
	 0peeWa83tm3vaIf21qVixZlFIJbj9cSB3g7WaMgT8UUaMc7QIstJAyKvtvFrt5OSfs
	 UBXgl0wE47WCpD90Rz/t4d9qa+YWfSkEZ/ytOSGhIczyVxbcSnCh6vBIo8ca7tRIeR
	 yYnMJHzbFz2jzO38tM95buFBENn/3rzqfm22ZEcojOdpAcwLTIzMyIJ5sbvperBuq2
	 DppBozROXSYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4641C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987272284.28686.2980475043773401231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e002c5c5abee11fbafb85ac4330b7a9cef4f8992b2f904627a3cbd3480b47bd2
Date: Mon, 01 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719872722
