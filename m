Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A351F3D29
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734441954; cv=none; b=Jg8H2bGqAWiUfxw2IdrEmv/NWCFOkIspd0iQefVFe4wgNtaNSeyyrxZXjR3PSUC7loPeFB3f7UOMTpQR3EzJnofijQiwBp3bau64IN7VgNgjBoVi3ihbiemTsw8JyttmFot2/PBsnQDX4wboPJhqbKtrjnSbfGFBpGQJB2TA2aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734441954; c=relaxed/simple;
	bh=6CtZX0mJajDK8IbXvrmw7RRcAFgmrzd9R6KbWsCNB3A=;
	h=To:Subject:From:Message-Id:Date; b=fg9h1MHMliw0DdfuequDQkI5kcKS2dQG/+aOl5GERwTmrcz55ObqwaOvihPMRAxawNGVKsT6+DJ2RTggFc6UdFF4GQ0KXmIEumpGXDnNrlAe6iYIioTKTc7NNK4VT3AhNjpzn3vE/QK5vEefOosf2NmHWee/z3SBbiqBg7h72/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAYuJlEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAYuJlEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0FC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734441953;
	bh=6CtZX0mJajDK8IbXvrmw7RRcAFgmrzd9R6KbWsCNB3A=;
	h=To:Subject:From:Date:From;
	b=qAYuJlEB4UfkD3yaESRwNnMOvsBsvt/MBdDPvUzTq7mXA4bn/C66Lv77lZz1Oe159
	 JJy3V/OnrBNW6qB/814E3V/ZjD3M+8TR/ABgOdlRVYKysQgCsJjfiS4IlXkvdfUBsq
	 S1/lzO/+GgukzDUFSLVrqz0BYG2HxdyB+28mhkquUE4Ch7RjooTKk4flTk0JWt6660
	 Kr75saz+vurBlP51U6ROfZapEwJzmPuJcQanek3W/xH2dXvSaItbNBXsTmNxHipz0j
	 uSltBdO5yAJhBKEhPXIj2qWhoCqiEw3m1CNhxjLon0aWcDictu7E1s6YbjlprUwOnp
	 DMzrwXT5435zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444195358.17728.16462605437673628274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b091b36370c1522cc9b6854e042fc01131466b19d6174d87570747df23e2c11
Date: Tue, 17 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734441953
