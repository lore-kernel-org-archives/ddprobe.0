Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1891370
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721621754; cv=none; b=HkasgvTg7OGt4hdbhYK+T1IXyiyxsUNBv/pQpCCffoyyhe3Y9yAyyS4IbloM81kTHGWHnpkCLuLt/TfE7X/2R9JM8x9mYTw70udwpriJZwZvhL0ABY2q3j+L9J0SzkWg7MvX3WjrwsQuqvgsCR4QVx5WouqDiEwQpa2t+bjU7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721621754; c=relaxed/simple;
	bh=Rzhtx+6U/ZEHWmHxbU3O5w8U2UcN3ousMOFeRAui/es=;
	h=To:Subject:From:Message-Id:Date; b=sQb2qdHoXD4Zt4GZtIVPWR8AHaorsG9zcwwWeH93vOguq7oASzOrZwxcf+PpxrumozQqM0zCpCPKPVGdDOC7IdhnSolOyNAoARqAclgeLKOJIj0csuqODb8FaFStAsdodIDTJNvfuQ/xK9LJFGws8SPe3VZQ0K6eSiNhlkoEqNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx2eBNyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx2eBNyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAC2C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721621753;
	bh=Rzhtx+6U/ZEHWmHxbU3O5w8U2UcN3ousMOFeRAui/es=;
	h=To:Subject:From:Date:From;
	b=rx2eBNyuHrOnVZ60mvG7wC7GSn15uB8LLMm87Knw8dprd3cPtbYcTe12Bb+OzpBnu
	 zSTO4NSG+XA6Flogs/tCexZmIm19UHVsxJMcSoNTl3yMAY2Vyxc8xRk+uH0cARICyq
	 mJI7nrlySwsgB/ZqOKHpOaTOVqS8aBaf8nxlWSEFMT3av0V4nmtx27rXz4XfG9ZqVi
	 9ZpgJTam+1kur3WPaYAEGkzU0e172GvpQ0bB3nTV6R1GvKeeV0xaHsD6iBkhY34x3f
	 LStlVbxhIhtcdWvxO5FOC0ODl9BCeQgvOEJ6vnNGi5MMCxfohprX+2+vhSgd9tivs4
	 ffwOkWC4iKC/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA8AC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162175362.840.13384292821234299067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55de5caa6996897a2bb09b955ac3245e2d2038ca550e9288f5d134ba6416ceeb
Date: Mon, 22 Jul 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721621753
