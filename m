Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650DC28DB3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720499183; cv=none; b=coDgPwVaHY/IGDTOZX5QWSxiHLl8IzwX5XiCFjEsHwPQ/fyYHRk3+bCtTUYL7fKXpzWaqn2dZBaT/K/lEYzZf4TtmYLA0rjAJjJ4uFuGR6dFa8jy5tGLvdXV8weSqQ3PhZvVGOk6pBvxVyNBWvsjhEcovhl9awrvUqBe4r0cWno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720499183; c=relaxed/simple;
	bh=EceJ5xpa0Ld5uwPW1oQbpaQOjKhhjDbBOglsuANU974=;
	h=To:Subject:From:Message-Id:Date; b=JWQC2t7sGxmg872Lx9PhnPomg6rX0eeeq9G7y1m2pFqOaYw+XwuqZGmNDnSLHiQowWIoOkiwPAQIJabT3kG06QLhsozJ9IcN9p3X+LBPcPlrlSRjRoK2Ds/CaqmG/9TLP8SnrVwM8s0GBt/fKG2AXdPHVMsFa5EQq2TAfFoiGEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2R9UdQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2R9UdQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D509EC32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720499182;
	bh=EceJ5xpa0Ld5uwPW1oQbpaQOjKhhjDbBOglsuANU974=;
	h=To:Subject:From:Date:From;
	b=l2R9UdQASW+0KpqH0IJPgn6kOBs9i04m1769iLgt6bK+npXXQ2Avq9Rxd41AitQ0H
	 bopNamiGeyW/Gt9GVZ920xr1BQSbirEYY4KFUYRRw2NrapD3wYcK+sOeiEX67f30ZH
	 jge8RiuFbZ8r5YTNmK1UrliGdYTAE5VY3GEREqS0o4A1XKA1y4FlR+otHEg4I1IeKI
	 VfAzcrTkghKqj4hRxdro1Q+KiOUPJFdTFwt3Ji1inX3GPTnfT+alBqDLTAraCkUIQ9
	 U3hV04NUQFelntgRZRvPJiST3CJ3SfeLxx78P4mj/HBl7X2Y2xwjplMjt+9NN8/0dy
	 zt4UASmJoIuaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3E8C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049918277.17164.6428562305928433950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc5676ad806039ccc0c7e8ea09d044f9507ede19eaf01c7156c1e15c4cff6e3
Date: Tue, 09 Jul 2024 04:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720499182
