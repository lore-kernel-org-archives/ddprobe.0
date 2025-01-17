Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0541F8ADA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737116754; cv=none; b=WmAEydKjdDJeJ4n2OZoGrTMPSvEw0CjJjXPcFoFG6YHHr5HKiKN8g0RbHqQ0cusP1xsmZ4cNg9vs/WUab5rYmpODY3iqs4JhEZnkEAllJaB84egVMdiparSnyx0StN0qXbBh6ed/OJO910pamrpprF0oce95oA1qWidYIdK1qNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737116754; c=relaxed/simple;
	bh=y+/VFd6kpm4PhiSdn/S89SEAruPV7l0r8MZbCIs8eS4=;
	h=To:Subject:From:Message-Id:Date; b=piTOv7BcwXhgiiGBOKwME9pEBlp47KEd0gvwn5XDu4zxtNDVcpZARPcJvexWHjTf6Jn9P9ZV7fLfko+swUTqmI5ypNc1D2fwsX/JlQe1IcCZnFpN6VHFiWwNDkJkRG0UmJfefaJNqketLyiK2PTEniePJLCEhPjpamdY/tTxZeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Actv3/8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Actv3/8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF003C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737116753;
	bh=y+/VFd6kpm4PhiSdn/S89SEAruPV7l0r8MZbCIs8eS4=;
	h=To:Subject:From:Date:From;
	b=Actv3/8k9RaowetPucxKI2ao6OYkRfVctyB9eUAcBA8AhpeG8v7XWuhbd3Qt2ceGK
	 w+zTnTGSKOhrM0Egm8RZ1yiP/+DAW4vdbZpBvcvjWZHLrojQYGMkZDK4qU0c3jzaqP
	 Lt8l1CbPmoxwxzIOmxEIKhFyvq+UzqpIB8oy4zgfRCW0RsJZyuoChWUUgpr8xka4nn
	 abl9i/PqlGwa9B0vHlAdpqbRQg/Pk1yxm8j7yOGnppnu/21Jy8F2CuCa9jTNezjdSC
	 mVb0RfYgMzVIAKFheOb2y8OdtiNRPk4DInhB3f3uJCSHeykJ8AgJTtZjjh65m0eu7E
	 4wAC2cf9T3fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC7BC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711675364.6778.10009339345946181326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243af020dc6959f15d1b865456e511a0219bccbbee70573a40f9630ba3f6a465
Date: Fri, 17 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737116753
