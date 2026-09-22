Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877E73F327F
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790098235; cv=none; b=g8WAT0x/vU2IjzqwwtnTDSxMOyyoZHahVtHtDkBYyat8Kdi+yFRCjdkaK12kZS/UJoiNtnDgvKsstp6sqCZ43Yoi+etpjdyiECPjPhZPGSwC7aWFnwXPCbnkKzzJL1tMo9sXFXbWQTRasPNVKPkfzrOaYKGzJja+Y6Uxk/XHwaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790098235; c=relaxed/simple;
	bh=6tBQ7Mr8Jv1JYoJScuf4KlBwhNiOd5wYParEfZFj7HQ=;
	h=To:Subject:From:Message-Id:Date; b=joL03kZYZYZ4Tpx1zCbuy1vzy6X+l0DIa8PBDrZOwH4Ih3snAiRQoB0/lYpOfQlwudbnEjxf9bwIv4QsZdY1SaSyEIuGvLsgap0vKXaXM5n2M2wp+asb/d3HDJMjaCY+Uv6vy+2jYBd/26PgoNQ/Fn4lNdfau2zd+E5heZWnNCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE9M2x/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE9M2x/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8586C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790098233;
	bh=6tBQ7Mr8Jv1JYoJScuf4KlBwhNiOd5wYParEfZFj7HQ=;
	h=To:Subject:From:Date:From;
	b=PE9M2x/Me9+1LOUjXD6vusI73dv1uqhrhNVeByFNzUo3ZwoSz3tPec+uyoAKWbP6E
	 Ube4y7yL/ZLuXmVDiw1NEZJ02w99X4VK/KLuSysO9qe2vFWjUd2OAXHtI6gbsoZf5y
	 MsANW1/fJCpUv87+AGIZ8BFPaGf91rIG/SfXWNBnUyOyqEkF0L3RW8T+NqK+7oESih
	 AkKSwBvsuWbIn6rk1DYiGv41xsSmxEtA8Atgg5u3RFZDfH7Wmbg/eP8TaK6kML/qRj
	 HECbn9B/3BUlkVZaLLEQoc9KwsCHPEAMDbu8MR8maoG1Bsy1elBZXc7C+uWVG1FzCx
	 odY+8TFcrtLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F57C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009823371.25964.7259786236701112248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b555e05bb4d5e953db0f5352651f0056250b5fb8fa67f3f7e3cb3a1d3afc394c
Date: Tue, 22 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790098233
