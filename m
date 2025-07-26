Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4F31C6BE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753490994; cv=none; b=nzUxLS4/caf44Bh449sdgDF7OrSfhsPL2JnONwW0sDEnWwvXfj29b4XMDX59XkQLgC+X7bu0Oqj2BJ+qGx7Oywdciz5RCKtYbEGsZ5vqz/hrrKko5p+TKihTGNsbcw6UTUOiDl480sB+b2hu+SBzfeeX9yvBOnwTask9Z3Wu4Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753490994; c=relaxed/simple;
	bh=DUfOyhGiwhGorKefcCoJN3Rm+358g5vclhTUM9RCNO4=;
	h=To:Subject:From:Message-Id:Date; b=PRNITd9CNQ6PfGT/XZ7avMVzhOkPW+DD3Jij0Dgy7Wju+liVKXTyanROwQsfC19pkKNC3I3UZDuidryDDgdOm4+fqakPB1rAlclUPb22GJMRSCKDEwV6P9waHYN+rzVQr5OHAJnfqacM1Ez2q/BiVLs6hw6pcbs7ywd1TFwy39E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlouRM0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlouRM0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753490993;
	bh=DUfOyhGiwhGorKefcCoJN3Rm+358g5vclhTUM9RCNO4=;
	h=To:Subject:From:Date:From;
	b=WlouRM0duggpPkCALizstGLa6/DtP2tPm2MPgNUiTqGC8rdMZG59NLdqiirbRV6u+
	 E7rIe0iJyaIv4Vr17Bdg/ApmmbNupnryDw31lKJA43y7HBY8y+KzN8GZyPPumUfsuX
	 +xB6xwCVWX9O9YYKr6SYDXFBubLd4U9UhC2elYyAfm21LLR9FdzIuS3t3C8WworzOm
	 6R8PANeYADcXqe9EiLT6Uh3yKwmjMYY/6R/H3mfULHHyp6ULMt60azxUTL9m4YsGEt
	 GQKHUZvxhF/hFjevUO0rMxtYVlbLZOFUW6JltKaQRHCs3OJ/6JOh772ZkHeVH1BjRj
	 wkZbgay7AIPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6EC87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349099358.6214.8260109903796985567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d461e74b45e037a9a2ce4e4457d56853a858f62ce9a2e1830d471f81e5de41
Date: Sat, 26 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753490993
