Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E05A1BE227
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941123; cv=none; b=tT8m3Dca6PSZkyLgRoJ+N3haj+AoyJLnpSFW7/7DgeTN+vFPuqZLUIPA6jOxC5R4EikSy7QNAzK7yXwnu86VVdaOdyq67iv6dS6WHXvBe7zcDk8yFqr7Z3+RZIMD2U2ksq0g7dtdT9ZVROggCw3PMp2ZmyfhEBWq8LbhvMw3oNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941123; c=relaxed/simple;
	bh=pbFyuaWSrh8qgrYB0iwnsx9AS/2qOYGSIBF+D5U4dX8=;
	h=To:Subject:From:Message-Id:Date; b=tCnkY/chqec7nFSFYbJFuJL1hyWU/cWNk9hoWsJac3oyJEIPU+X218yIJNkHsSQhNgviE664mg+Sihc3V8YFt58Vt9/SCARAnqQWl/zY5Aw+ktGD+HoeHR0Yg5zzluGSf5+/pg4mcnKbpSB81wNUtpldgc10qDkYZaXOyiuRlQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rom3xPtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rom3xPtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB9C4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719941122;
	bh=pbFyuaWSrh8qgrYB0iwnsx9AS/2qOYGSIBF+D5U4dX8=;
	h=To:Subject:From:Date:From;
	b=rom3xPtxaqiLAu4K6G+vWd/OMhvg/rpYuk6fmWjUaZ4a+Uv68o9Nu4fqwc5ogFbRo
	 uxRepimXmDsnlNo0BfbkDZqHt/lM/9jUQ/D2RWdfAS71xTLLCKYivxhlircm183Bom
	 Mdsn8Bb58wdD2o69GOlnV8KAwo5SEiUZ9isPtl2ilCBVCZKBaNeD31mPNI4T2pfveg
	 ZK7LG/XpDhKzoMh8QdL/vWHxB06GLhSNJUWNjCOgdeRgHSRPRIYbz5PerZ+Ro0p0Th
	 PeaPFKC+mBR9Gj6fwQwovTeq9lnMGkFdn4wxrJEJzwhobCHNlG8BDXEEIN6ue8DTbA
	 nQycBVnPUZdLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF974C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994112277.12053.16983486888594834002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d47fe700ef9617e770e1bb9c546d472015fd6248ad4c62bb548f16b0198112
Date: Tue, 02 Jul 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719941122
