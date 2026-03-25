Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5A53E2740
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774457694; cv=none; b=bVWDisKeQxshUPrB5HZ1k9trZzs3S+Bn0x1wdZUoBPQHC6mEpD3P2UJXOF3xK/zCyUlFHhcaic1wrmO/1Nt9z1sPY/z0AfueN4se3+vZo58aCV1MouxWBt5zfTmetlrnTPFExpfM5w+xPCVTiv9y79qgbIoHRUo9KwWOGt9eSY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774457694; c=relaxed/simple;
	bh=tUM0Vf0++sqdqUD6ilExQzeT78cNck57I0viMgSIWRw=;
	h=To:Subject:From:Message-Id:Date; b=sKHMtO0COvMCGX5HxVm1938fW6KpiFdAzYSaLLgGn0Enedv+PjBmL5J6kHm1/4qv+5y1a7uDrUbuwVY4OG+rIQHXiuyISOM+ch/uwwq6NDkQMxHBB2QjJG7p1tThiBqYWkBSBOUodpbo6ON+RRk+dn37Uai0vgNW9nnat+O8VvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn4MUzG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn4MUzG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A479BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774457693;
	bh=tUM0Vf0++sqdqUD6ilExQzeT78cNck57I0viMgSIWRw=;
	h=To:Subject:From:Date:From;
	b=sn4MUzG3dOzMXBxw0/dNxR5vf7ANN+K65SoY9ZHxj0vvp0ayP5eiZ0NNcvsdXacwH
	 A/ywfmWhN9fc6XBQANIDeM286fbwVED4PuY5RTc9+MXdlDjZ3kh/9NgONdL/zAaxIW
	 La9J05WCfMK6DERW5u0A02dYr3bijLXVGwbyD/LjHUVMwbHj8Y2kFFpaMNTqfPiSmy
	 QTRrQU32EPWG5AvWrNohJvnwNYTgBjvm1ROIlghoPpO3Fsq38xTEFg6b9Xm0zrWdjG
	 AByErK/F0KQyWOsI2eUXe73kaifd9nafF/SDSg7MGSV03o0i/SFbEn+bfMSSc3FFDP
	 IRFfNjn5l3zUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93702109C046
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445769359.1389.2151090741069023159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc734e0da44093c103132cd03ea2566574822c5d6243a7ef3d77a00e6a4c799
Date: Wed, 25 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774457693
