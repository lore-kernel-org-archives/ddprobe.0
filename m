Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8B527470
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762608594; cv=none; b=GhCxLUo479c8utsXVXpBPwnPMHjH9cUPMYsEF4alQ2JSfqiDn1+Egeu82GM0OLuiZD2UUChlmR1AVwvMCM3EPmM6z4h/tBGxMYh+MVqDP+CcBkbxK3dF6UYNyh+LUrMsszJ7lvbU6ofjzMTTXnlODQ6IrjlenzSY686F2W6BvlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762608594; c=relaxed/simple;
	bh=zSaH4depDfvsRqT+hqYKDGx1uhN7Z++yGJJuYnlrLDc=;
	h=To:Subject:From:Message-Id:Date; b=OgFwYgx8rTgnBUZzJGi0+j+LdgEBChhi7qjpDsuzQoTigIG94YXIqmxiaT/aGgq2MFe24oxwMF/EIOvz2N0K8wgYk2VqLZcJ9juJvxk82n2gKUBCioZwKxkFgPk6j0Vv7Yisp21PtnESgqEKK25WQVzvVof7ChBkH9wlmeJgBdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI50ghmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI50ghmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762608593;
	bh=zSaH4depDfvsRqT+hqYKDGx1uhN7Z++yGJJuYnlrLDc=;
	h=To:Subject:From:Date:From;
	b=PI50ghmYcbs8mFcBkKmTF4GJAUadzmJ9blLsdShre71EonmCD3pUW5SbgeZWXDvfI
	 GwG1MDajjdVls8KtNfy5ZEpvL1pGn4pSNonKtlAFwMaO8Rb7RNY/vrDrz/yl/3mptq
	 BuUwwUmaIeZa67pgkJgid48C+xihQmSd1EtgULuSu5DsWami40JAixxenrqZfGH8jD
	 SKM9scu2iNIvebCcW3A4slTGACK9Qg2OUJgzqYStJqJzQshKbd6qgQYtm08b1N5Qy3
	 pX0qzyCI6l7YHMJG/Y62jpjrM99Ioju3QUsbb0Q2bioXbK4UqJ0LYjEqjjUklk2DSV
	 ObycLciJf1Uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B92CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260859358.6879.5886953244573206989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45d42fda92e17c857e3369319c0d88c4a143580ad5bfec2f4f13281a7316302
Date: Sat, 08 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762608593
