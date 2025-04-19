Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415273A8F7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745023795; cv=none; b=HvY1IBMxsi2r2tt0pzNT9x9JIwR02ZB/TR+pJaew9WgD3XlyM3XElg3LPf/fyoMoit8Ce5cQA01KImI9YT++MzqqwLLJmaImxQSqLRLDs91xoN4LpHAlbbL5dUoVpeHy346yHVMmYj8NxqSKDbvl6XW1yiiirlBYP35Knx3Fd9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745023795; c=relaxed/simple;
	bh=3D8dwTrpJ+sUnGkSj0yXfUSJ9WKmENRa6E2uMM0jjtY=;
	h=To:Subject:From:Message-Id:Date; b=MQL1haUrERLxCSyvnijyp6PMx0ILFbAT8c2j7Sv1vhuM6gBRKW4SAZ+zjS+JuhzavM1gG9U7B9a/8SCz8ORNK6EhMTksSPUQGtytTzt5U/eB/385/ezF8GOeg0S4NFWz/hy6e6r8rQsi5YCzokRbYWsZplK7ltKC53RaxALNYLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr73z39X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr73z39X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BD6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745023793;
	bh=3D8dwTrpJ+sUnGkSj0yXfUSJ9WKmENRa6E2uMM0jjtY=;
	h=To:Subject:From:Date:From;
	b=Zr73z39XeDDcLj8BJaD/WbLJ4aK46k3UQ4g/tYMH5nZ5LzAQGig1tCgIQgL4tU6b1
	 hnz9h18x15x+4bURH+6QNoLfp4QskDlRZJ30Z/fQd/XSp3UBBnGwD13Lfs/vMpaBVi
	 rhGSkfqIP25/sVHuJR91h6AMuJPqj/90UkQHwEMuXfRoraswv8oiSw3RPRDRi/yOo9
	 BAvexlfkEV+kjeN5UHLy8lmoh4iMcRKeeg0C1UrWdis86hP6DBuAvjn9kEftNhasmK
	 t1EFXKtuSPN3fnfcz/JA3q+HVFJtbnYzIv9MfODrbj7rGqcK7qU9k8XSLnObKmI24H
	 fY36D+IAGMGxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C45FC369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502379360.25915.16732691640622686476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ed4d8fa5741ce42bdc8955115638eca221b44243f9412acf6374c9ee6bb0ba
Date: Sat, 19 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745023793
