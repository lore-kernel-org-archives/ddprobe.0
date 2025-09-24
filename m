Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282021552FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758735595; cv=none; b=OR8h36j7ldJxuPbDNfgpataQCm/nNuifZEeCl1EdgohoXZTIY0hnwdW2Ycj/TI1PXGpDDvzlsO21z5iXOZmlB1RB+zkqReaJy3pgHSSLDc6ZWvmSLC4byu3s/Uv0DK80zcGWVj2xtzIuTqdzSQ5XjJI+LSMyoozOjDElA6vy6/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758735595; c=relaxed/simple;
	bh=cDayLE3gGYWcY6HCZ8ljyGiZjk2QYdFvhA/F+rBf0wc=;
	h=To:Subject:From:Message-Id:Date; b=UbvcQn/ArhfihEUpydVeQwUxkCxNCpHmMm9QT3hlgASUPWD4/lGVKeN7FxGYExo0RxNOxT1Nbf3qoIny4gE9cI5oPMT15gjkfwTdzDdGGOlJQjswEJBsDM+JZuKAu75LSIIMtyjVfJWKPsIVzby0h/8BQaIoiACAtuaqkDWdOMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vc7QKhcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vc7QKhcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758735593;
	bh=cDayLE3gGYWcY6HCZ8ljyGiZjk2QYdFvhA/F+rBf0wc=;
	h=To:Subject:From:Date:From;
	b=Vc7QKhcbz/f44v/lx0OF+efWOokgjTqtFCScBzeMYvf2+o6BShm4RcDTOMINHkI8c
	 IUMMkHoydzyyPYmB87SaKa4OPFdGKgSQzZ3POoVDUTPzavM8htRZny2ML5vmNqUW6+
	 SCy1dh41YjwdF/3HKT+4rAO+eOkqtQdBYxECO5+bLEmpfYHUy9ImoCQwSkZMDN/etj
	 XHVHujQOXt2TbCVLIerqKbBeB5jFKbHLoeH23YSJmMxd9hfZLBQRvMKH5hI05tVZoS
	 d+qdAVyaoSPQKOwea/JrSNiJGHqwZ4tmMKNV2veeCFnIDKpY8+DL/J2ThuhQWqDkNb
	 YnifAg2CD0qfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD4CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873559358.7882.7889711328929529266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc8959af83ccdbc9ee8724ee6cf425a56e1500d63cb281c7cc468eee20cc1b6
Date: Wed, 24 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758735593
