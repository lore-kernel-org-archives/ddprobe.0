Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD0E1E531
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719953123; cv=none; b=kesnx3gMWEoeiQyM+rZ3S7ng0tLgnuCjcBkvR6LjwVt2NTXM/KkPxbyhn7OwWkA9kljhEATIqa6ZSwk7R9/JIRXDdDHQtKR04hImKmen/uvaWBFbqGkATnO3ZTA5m8RRsV2hcRsP1vv9fIiOCP/P4+TBr27lbvXFgZY8LL22V50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719953123; c=relaxed/simple;
	bh=9yEtZ4sxSlbfzPme2mJTstJwLuDpXVXkw+WDco5Zrug=;
	h=To:Subject:From:Message-Id:Date; b=KVo78ibgliSYq8vBGJwwYK1V8hOr/eOjSoSWr1xoCrqnRznsGEDmx6j+3svyzVnYESnam+AR8dELiRTVE+OUl4McG77gsQ7nrlyd4sTnvPL40nNzgyVH10ko1BrPjq4VSMoRfIDtTfHEdpfViHf4FbuYqj+N0F7k26ct/Dk7Hpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHEEkMPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHEEkMPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DCFC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719953122;
	bh=9yEtZ4sxSlbfzPme2mJTstJwLuDpXVXkw+WDco5Zrug=;
	h=To:Subject:From:Date:From;
	b=sHEEkMPuT2uMJAWDnBP2GidK9uv18X/QbePWF4vYzylT4w50hR15hoFWZmPdad3Uk
	 M3hgIp2of2m1Duu4mt82cby5HQbyvga77Rcba87wlgqh+NE2Dd7ytT2UZP6lYxbEIP
	 QY4Nw1ZuNVh0E63kQBrKadEOfPrbhm71twGj43HLPNCI7rhzAnzd1oeuz39thQu9bA
	 HkuSwORH9upqzhJvbuT61lwHBjvy7dEY0W0/QbDPSVcrkyNhIFJSUgKAJPLWrhr70r
	 Lj3wbkJhhRovOjSt7igrzuJRsKdWS0HBqPDlvuNlakpxL2fzsflgOwjkjZq6w5XQkv
	 DPYm77X3Tq2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38C3C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995312278.12393.13392040963746476366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e479a6b85b9aa1432267fc826d5833ac66dc099bf8588f0c324a00f52ac24d
Date: Tue, 02 Jul 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719953122
