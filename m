Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B692F5485
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765024974; cv=none; b=TuzkBMp2X6CgpbGDPYShB3OqUjTsXl1eJhq/dzqflZpwOXUcszHlTt61PuShXuWsiae/96NrVM3WExo46f74EW4KIICCmeh7xqum9c7CaTcc7WZlE6cNRN7WNqQDEgImDtkUNJZa3Dg4TnYnejZkuiRyUiOEBEFLVSuxCJNYfCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765024974; c=relaxed/simple;
	bh=/TzvyBEF70fS/wZFbBPepLf9+aTfzH3MuQav+QsNWwo=;
	h=To:Subject:From:Message-Id:Date; b=mkueQJuOI2ffdE4lNkatlo09y0rDP0iNuNql3omTO8YXps0lvPMzMjNXXMdhz5PUmEjy8Xk+/tU/A/10ux6/symA1VK/u/m5qgNv1qpv7iVd6+KB9gjXRMs/iYsF5lnYdZr41AtfP+kU2lBKjujWQImKQw47j2ncnmLSOk1lz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGWtkeP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGWtkeP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EBDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765024973;
	bh=/TzvyBEF70fS/wZFbBPepLf9+aTfzH3MuQav+QsNWwo=;
	h=To:Subject:From:Date:From;
	b=QGWtkeP8vrlO2KWNDyglOx5PJhTm//K7elkAH0Oe2yhaRzicUA0fbFHqKK8rdnV8G
	 slXN2ZBIU1cIlqIfbVzpVZJolEcd2vRckZI8/DQdTFg2Hbvqg9ARDLKLEzHr8sh/bn
	 k7VPiLAHcmvmwGgmpZPFU30PGdzWOgDcJjd0+vuvOEw/rhO/a+0cf7I7Xw/RdHvKX0
	 IcrnQIPZNef5M3LgtdsdnC6I4MYv6V8iyoVjaEcdUahSxnDeQTFd8FFavfKOAHC1iM
	 nUY9l1dG62xf2fdZUup6/FbiHhAF2nguxu8dgLyGrlVbEYp/Nhxl8nN0hVp1yyZmMV
	 Y4+xMExB1QXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984EAD3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502497358.5304.12560857482538032605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ffa8a4000f4430479a97f1cf87e1c407708df7b99693dcb55d14517f5430db
Date: Sat, 06 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765024973
