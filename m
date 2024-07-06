Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA0DDF6C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720259123; cv=none; b=NG8NUQfjyEGUmgErvpeQvyQOKbnEvL/o/xMjwrZuO2s97/2/kvzAVOEQOwTbXu/864w6mdn9go6CUmvPiHfGo5D4fXtJekzf5bgz1eik0dm4Ve3scr6gYsl5Z4BaiSntplCj+bRGySAxbuduG64Yv/BBtvIqYQDprb5X28sIwKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720259123; c=relaxed/simple;
	bh=W5KyvKwV0NXzi4CfInrUilVdCkhWByyhyLuN3PSHZ8I=;
	h=To:Subject:From:Message-Id:Date; b=Fr98vROCprHlUxzWSk/J/hw/t6qUred1EFt/Kv/dpP91OGvSmjY+E53QgHcYLeeMpE7g1fidQtTaFA7MGN5zAzKuzAKrvg3mI2OA+lxCLCPy2VyRCzKE3c7L+8eckiqse1M3FTIw0Ie0g2lMtaaiaaAZCEtneMjv3BOrCeOZI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dfqx57Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dfqx57Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE19C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720259122;
	bh=W5KyvKwV0NXzi4CfInrUilVdCkhWByyhyLuN3PSHZ8I=;
	h=To:Subject:From:Date:From;
	b=Dfqx57Q1bS/g75NeHv8Lwwd4b5N16xSPSi9frpskRG9+xRfq864a3XqbvrqusstPE
	 jxicOv4qjSZkPEzCPH7jgIz8ciUR50ZgMFLTMH+/Cq6Js+HkhMZME/RvpC2JUnXX2m
	 MQ96LhTRgoOaPxdDCFH1qLjt0z8lVcooxAgQ7ePuojIJLdeog+hu2/KvZSyOPt1+Ib
	 L2Z5lB0bBdHssE2aw8KwF4QtYcfNjjtOop2kzECf3AfB78c6ddpM9ZMy6ZsmkHixHo
	 nryYu0foybKKg1l0KzqRX/tqj+8Uw+Owj4Ev61iYdBAkaeLBXqV0T2Dtb5NZPrKZFD
	 cDTlwzGVZMgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C5CC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025912279.4246.2326253364721343960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a062c5b1ed080fcf9a94cc9393c27585fcf436c082135cb3c0add7272f4cda4a
Date: Sat, 06 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720259122
