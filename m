Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669B81A316E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784959234; cv=none; b=qWGyzOUGaB69ZbpRzX5CGo9+TluecY91etzzYxbMbn3MSD7yK18pYUgVmTmT5RSOCp2qdTrZKjnvQMtESqlBkDI/jX4i5OVG0Qv5GvbKLPMfb1+EVB1PUROP4zsvZzCxTOVwkUqX6sv4+OuJUNI3ZxOu1q3qto9WODyTB893gto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784959234; c=relaxed/simple;
	bh=BDXfwGTvb0+aITK3tcCM+eyxE6zqSAgNzA9bw4iDOnI=;
	h=To:Subject:From:Message-Id:Date; b=eAcbo3hEVFBtwaPT0AYS6aogJBtVuemIKN4wVP63/MmWdRLWC9YVM69shzsp37v2oE/GgsfCkJ6s4idIGLErqmYWuVwjBw5ToPcgo3a8mnhUotF+n1COBTYXTbRJSKCmhCFv8QTjcCIJaVLCN6JRTq+MDauHdmM/wIKsPqb4Tms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsEiqw+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsEiqw+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD162C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784959233;
	bh=BDXfwGTvb0+aITK3tcCM+eyxE6zqSAgNzA9bw4iDOnI=;
	h=To:Subject:From:Date:From;
	b=HsEiqw+UcWxImZeUnPFxHraWbshmqssN+FQLjwsR2ySRL0tIPTl2INhC+QYcfMc8D
	 buQ/4sZoYCaadf5b1a/zcP+2S+842JIrVunKFI1M9DVyq0CpvCNyvrTt/Ze+FLLgNl
	 C0S/tOhW9WH0F8+Kx14F+p+xVu1aWbF1Xow/y8HcVsgQFAdCi2kbfC9Os3+xr3FRzh
	 19S/8HHaTLaDyTw6Iso0Yy4NPSziI5DNdZdXkLjwzylq+//zTB8wnHm/4+PLVJ3ifa
	 MiBx/gpiVkgKc1dNpRJtumPM+fMv0NQ/YvHoWncvbRa1F3qHNc9W+EcDr9CU7TPZD1
	 z3TlS5w03EcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED29C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495923368.13614.7295214038058520100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159fe20c179f09d0e4f7b22aba4f4e22c120027f46bfb99e2bad3beda9769908
Date: Sat, 25 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784959233
