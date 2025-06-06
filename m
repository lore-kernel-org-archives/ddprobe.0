Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347615223
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749168594; cv=none; b=gaAbxg/c52HL0aSPGIIJwY7/PvTUJvtryleKkBMImx6BQung/SWNtFBy0zRoSa9EfaYoXQLu0ToABsRm10Wgfu66hrFPd9ChsdPgrrBp4Z+joFZ8N5TivhQltTeHxoaNCPW6CYWHtuYPrP6dVpxjFzYmEFlujaP2dQEtiGh6pbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749168594; c=relaxed/simple;
	bh=jgJ9hbpRv4z3yMq46e0m24EQa8ogPOEVuxQTWqgrV4U=;
	h=To:Subject:From:Message-Id:Date; b=VIDEi3LUtILc0fk/PDH6KD//4wSbVDTSgsQnuyUsqoxp5WptGg4Pl35zzKyXOdcnArNSavXix5lJ7EuHtp3ZCqEmvbcR54am30OWosGqI+/XDCTEuQ6hDmSC5nsxcDw1psf/Xi+MJPGFD6QVf+oC1/WXtUemYsbIDL4RYjuIDRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvmHv0qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvmHv0qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E241C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749168593;
	bh=jgJ9hbpRv4z3yMq46e0m24EQa8ogPOEVuxQTWqgrV4U=;
	h=To:Subject:From:Date:From;
	b=JvmHv0qfmKUmFAMXIS3tUEH2VwQttnxaOey6gQ/ccB+31PxpIM8B2RydYxQ35zIvo
	 OIjbgwQnXbSJgwYAqo0ab44uK51XTzoxI6UpnMrLb69sLsSYLYyw8HUWZpredBTaiz
	 tDvIRKrL4CrkouL6AoC6XZ2DGB4DPgqx7NnNXhVI9fXVq5hfsL3znboMxlloFcwaqL
	 syHq/IxGiJZCSTZfazOvznerRU6GmqCp19kbVunxey4yQhsLyVtYJrVB1rNOufIHaU
	 jaByiOPF6n5NZYTcuP1P1kCd+P8Ho2X8MMYGLBN6ZY4U+3PIJP4kD0j7FwRmYeA4Jr
	 uqvBuUeUdnKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA72C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916859357.10715.10168898984301505511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed82e9930c24819aa1d3e66c46d4780120a0d0461c6dd6b64ced10e00dbb057
Date: Fri, 06 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749168593
