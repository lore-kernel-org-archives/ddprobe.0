Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E9F9463
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732826754; cv=none; b=tcYSYrmEtSOrV2RctBNb4YWqDBUdFYk69JJ6f2RBVQ/1eIZXdZfrof0dgquXS+eumXteWJwZa5/x71c+KFitRYoTlaoEBL4+icAuuoMyyIyVvbHItaWvXuApYJ0TcR+qs4PlTcfEoTYIQU9AEjFqCiI6nAk6bU0YxyI8MKbTRzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732826754; c=relaxed/simple;
	bh=ip3WQUKrP0cMiCtj/45vovefYweb8v1nWpXPKPZzA/o=;
	h=To:Subject:From:Message-Id:Date; b=T0osioUHNBBfkXiWW9VYqI554tvQYEAB5gQZAeoqIv3KaUkKIIFXEl3H5RPOBc1nQvhWDwaQqG+nPczIu0xqa8PZlQ1kcwflhjDqG+Fn9D9CSrQ/U4CgbrMfIV5llFGctWlX8hJO+XutUixDGgCxnBbi9ciDvpcoYrFxqhpyeIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgNXpg68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgNXpg68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A1C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732826753;
	bh=ip3WQUKrP0cMiCtj/45vovefYweb8v1nWpXPKPZzA/o=;
	h=To:Subject:From:Date:From;
	b=UgNXpg68+9eHKO4W/qAnqY9Mt5ZgWQ/bgcep+Rf9Bm8HrBAnwmkKknUHNJO4ighPR
	 x765oALtwKrUbaWkE0DtRdpWWK+07hAbM8LKENDZsHvTvfnL3OJRF86lPJFds2fNvL
	 LNaX9wa3i82KbqNUdZMIRes9PnO8SjNca8k5WiSoXGbEk06ZsccYm1uo/GOjcKzsTS
	 o7q4VPfY1MIMpGhbObSoPnyDiJU3KPtwQGF1ElVHDsdOxMiofyXI3mD2Z8BSTp+3kW
	 Ofxt3DUWRjaHR/SQgt9ia8ot+xDJsaKPb/9y0GN46pn5AJJGuhKrJN4+uEeXr4j8E1
	 Sg5JyJsymUexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABC5D70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282675362.1766.888169088634222543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e6fd589bd0f8ab35a6e3aca417ab3f56211a0eb735822be04021b5e358fc4f
Date: Thu, 28 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732826753
