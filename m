Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B367923EAB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778335654; cv=none; b=sEJge6UHs5CgMRyVV5SXhyTXapnEb//aYJCEg3sEtT+zKiKYI/aK5yvh9z3S9513iyLib0PgYFq8Eih2NMDs2EAWuUnCYBBPKdRewwjabjCgmyBvwHnZJeFrywDoZwgHGJT9cQx22OrSBXfpnpDiBOQrhCslS+ChGCjAVg1frAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778335654; c=relaxed/simple;
	bh=J4Fn0NRO8timMqO1jpYC/2dA4uPrRzrPGSApHU7A4fQ=;
	h=To:Subject:From:Message-Id:Date; b=T7zPQW8uUiLKH0jUGYTk+yJvSLvcTmPhJmgPbjzuyQmSYkoB5Y8uKDMEFHp7d2H6ZRXAlZxTrZV6OUda8MVUmGuGkfiRzS3uMjz3iOigotFC5dypqjK5TqVfbtlCsYATUBm27BcrwP26r+6zBRWOKsRys0RZkcls3GGLXOjSoMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFcEdiiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFcEdiiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BF30C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778335654;
	bh=J4Fn0NRO8timMqO1jpYC/2dA4uPrRzrPGSApHU7A4fQ=;
	h=To:Subject:From:Date:From;
	b=dFcEdiiuiESNSqDRljgY/4YA5vnxuAgAmSzKW+nqjeG6gnxI26aY+wxhUIyWTbjfj
	 gyCacFLV/0/2cd/HQ3Jds2aJbw8hkHPiYebQ/pYK9xuEO7stVz7BA6iBJGscY2RITt
	 dksC8ZMXaxN3LZZiAq/zxs0P/tfMYiRrXoUV5E4EcbpP64MkG8Jo4wP8mBS4GGpZSx
	 G299vJ+ubgSU8di0i2A39iJ+ifodNcnW2Ol/UmRl5htZtqfN1cKJ19ox2qU1J0NHgG
	 ZW5OxG7TXH5a6Mlw+cqdN+GaZMtfzpKAm9jAttxaHFkJHq8OFreRGIrd0XbEYlumTf
	 awAnQIlIcYeRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02A93CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833565390.11082.4898483303526530778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81412c0172fc6b6fcfb6203fc8ac673aeeb88b04a47d6ecba8ea6837f3392f6b
Date: Sat, 09 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778335653
