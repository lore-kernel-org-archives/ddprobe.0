Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1753647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745084994; cv=none; b=TNOYZDKSWE0NnOx8vSgC/tqMfssG9wHeDuRgeIjajcF4aAmkK6wTFgpfUB1ztc6s+jOyQb18H1GIH2sxmEARcWRs5Iwnzl5bm6zv+pGx1cz7/tJvS3kks7CjwT5GWU944AqIUIBs9u+mR1MCH6U+zk+GlrLPcB7U117apx0W7ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745084994; c=relaxed/simple;
	bh=u3a66wFcai82bEQ+WOig8g0hsA2NvvlZWq+IvOho/Mc=;
	h=To:Subject:From:Message-Id:Date; b=dTpmmbexitdhPqRi2I8qP1a2dVrbUJzvhigbcReG3w0Rmrj34hhe9tEZjaqovMseZ/fwzr/XKhLm1V3egFKxkFCDmowdEC9oER7grGa0Wk6ZlN3q60wG/sAHwF3CXmAg0nER+rX5Ii8baEnl0GX5BHaKN73AZSvEmu8AXvrxU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prU4aTBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prU4aTBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED4EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745084993;
	bh=u3a66wFcai82bEQ+WOig8g0hsA2NvvlZWq+IvOho/Mc=;
	h=To:Subject:From:Date:From;
	b=prU4aTBY94VVHBLm4pvZe2DJ/rCPj8VyZ61+irAELe5l/eFWEWeLdhoKMxQyXA3zL
	 i+1vD/GM6lH3UP9u0mzZ60cjeFZbaALgM2anOJe4/uCNhE16DNx0qcBaDUKPrHhJEq
	 4og9AHUhQzG66AvG5NxoXgFdy0+gIHaP2ay/+F3UqYa2zgiJ64Q8sPJvDN9Vb57z0H
	 CwR+U+u6OGC781UaU0MOdkI/m0m3rQRUuVEg9Gv/8Eu0MNYnxnAyRzMMMgaK1s31Fu
	 L6BpqpNvIsEtvOJwP9ElWnyPGOa96ljZS28DldW9TU8LJwGwlUSIsnExNQMK7SnXrW
	 7P5G6xctUZMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B81DC369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508499360.4902.15128873204885816389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec034540e3066c62f8f055d44e519d9e3bb2553b6f52a7e7a8270c01a41819ea
Date: Sat, 19 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745084993
