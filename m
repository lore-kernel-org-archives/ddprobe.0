Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B33EDE7D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782917314; cv=none; b=NM9YYXZJMEn27xa1uLLs1QLMpeagMd+ukIIwGNMVVd1M7+YtbzKojEjvs2DPgp9TYIrYM6gpbpahp9tGTO4VfM+w86S54iIbiro3fFjccmeRGM15Dz488EjXYR1RfC/+9eu4uXy4/BSWKqho7Kyy7DDhew3DBevsTRchKRvbSF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782917314; c=relaxed/simple;
	bh=K5/Gc6JDjht896hGIgYgSwQ02DFh6EqZfIkRS8rgL+E=;
	h=To:Subject:From:Message-Id:Date; b=YWuMm6u7b3d8nyyvv/WxrAMMxAY7bd0LMDqxcVnirVaic+dGvgGw9xJ/gJs764doyDDLFjGmgf4C4mTMOFvBNCD+CtlVtmTkaDVQ9dqXRB4moLrnsb9Jx9lQL6T1Lfop0MdbRCJ33VJ2FcmfIstDaEDwBqLN7v54ztHFTinfFkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQUdfC2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQUdfC2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47E2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782917313;
	bh=K5/Gc6JDjht896hGIgYgSwQ02DFh6EqZfIkRS8rgL+E=;
	h=To:Subject:From:Date:From;
	b=KQUdfC2YnCafuULsc5epxOIZjKELYnTYQTBcoYMvAHUsIJus+4j5oY9It7M0sMZ5C
	 Vs24XsgTzq2TIyYIy0fk8uzWktz8WVdU8K2xkrtctjusI7p6uOCEIsho8QzBoxuf5c
	 ReVZbj2DLOcql9hfdS2ZeHCwGtq/Ld2h4JmCbbblc2Uf3H+OnXHFIOwNYK+WA3ZhGl
	 UxYGrUjVk8GS14VNPCYVfap6gb06nrFE9ah4GXH503jKNCxWOoSU8hXTtU1SItEcBc
	 UIJFh/qnJblEvX32cv/QFxNxPs7sIWrPcS+5gQ8J4D/AKmNaKA+N6p4LiU6cNpgHfw
	 a5LA3hKum2r3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16CC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291731369.30515.4889393949766842421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6f2b2852f46d02e20b6ac2a89db7112cb45ff33de603b46072970fcedd333c
Date: Wed, 01 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782917313
