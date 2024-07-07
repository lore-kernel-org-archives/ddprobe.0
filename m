Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E841C01
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720315583; cv=none; b=ITs2hDVrGQ/hOv/TJSb2jqh0UpjiU+7wybbbm+jpunZbPfcg51zLiD2Iegf5qIcrmn61C1YCysP1UT46zwoAsWdsZCAsNP9xjGlESZ6FC6e1TlicOcpZsj5WKY+bUQovOXCNTh2xKBLs8gEXBfCSi29kgEZ4EtXmOl7OTYQEOcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720315583; c=relaxed/simple;
	bh=Y8nEmuunPHd6WY5W3zUomJjhJVAcXByEvSckzGrKmqk=;
	h=To:Subject:From:Message-Id:Date; b=U6M//97WWMxTyHUmSnbv0mj9yThBGdmUxgs2Dpj0KuLL4F53HUWTgLZn30JVlPR3CBb6dQfW7vIiEv6m3EocWKl19kLQsrMwx7b98J2bh21DzJpdiu97xy/cfZrrxc0B67bGROkw3K7fx/HX2Xm0Jt5fRZoR2lC1CO8flbKQEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imVfRIYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imVfRIYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B03C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720315582;
	bh=Y8nEmuunPHd6WY5W3zUomJjhJVAcXByEvSckzGrKmqk=;
	h=To:Subject:From:Date:From;
	b=imVfRIYygZ0EqXQVMb4pe50cTZOHMtyU9seExziiESA2jVgmp7Bmy90WAnD8couOa
	 EAX50BPeW6D1nT6Zh4N1PBD8NQMwvBExX4/D35ZILpgegBjlU9T6byoODc2+T33s34
	 MN+4j5T1Sto0uSlswFxK9ahjqkYsp2BbSU4YAPcTB82suldL9L76Cj7n3JXRQVQdbg
	 yEQ7rx+Pvt+iKcGltfaubIY0g41HLhEYyDdhz9wdxrhT1QzYVetAaBFwBG0JaY7sWC
	 YOMA2m+d2aJi2h6KZUXKuXXH1KV9su3DWcpPcXCq2Iw62U1DFLrY6lKRyYp6brjH3A
	 vn65bE+w37w/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F2DC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031558278.9949.11029829653552441665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b51e02c7e1357748330ef0460f436800561a9ff4b55f50baf7806ef04db5dd
Date: Sun, 07 Jul 2024 01:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720315582
