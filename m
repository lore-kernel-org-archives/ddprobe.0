Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C7E3BFE2D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915894; cv=none; b=gwS0mtb3+oyJO9hNgiCzi4EcKdhgfiJ3Jm0P2JsRPV6E+nPcEHoN5WpJ3fdO/vF5p4zTBVtiivFEApNKWVBTIsYGchFKsttSqmApUHQfpy10ng1jPrt5dAXhID/yvW9vp06eqyAOWt8Mhg9YzOEERjO0LbFK/KPXT78I9FblxUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915894; c=relaxed/simple;
	bh=2lgQbKS1wvPiH4vWC/XcNBg25L+X3p0gfkoGzYOfYkI=;
	h=To:Subject:From:Message-Id:Date; b=Tm9m4BRf1QXPGWvQt1eXgSxYUGf8OdiUe8g5i81fsKbLt/Cg70OOO7VFUAs8JzkpVzr53mCD7ZuyVwpkZ+91EODwHBm828ypS9zVvkcrt4Mf3C0qN6bZUBgF2hoVtwrEdrVI5uSkFlLHSrKxdXHVnuOA0HYnnsEnQ0m4C0NznrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZA4ub0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZA4ub0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1194C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773915893;
	bh=2lgQbKS1wvPiH4vWC/XcNBg25L+X3p0gfkoGzYOfYkI=;
	h=To:Subject:From:Date:From;
	b=cZA4ub0xUll8aqKHw8qElHJ5vrAfOnFbjymL+9lBUCa33TaJLmTSUe4ciWZySE00d
	 96z530Q4Vf8BHO+3Vw0IOnbSvw1ob+Fb1WeCwufNySOAK55VC1gP8BH3mOZ4wkaRr+
	 oxQblaBgnLs5aRHPL9/3rY5BouidhjfCtDfiquPBoso6tAVoq6ooW/eN57XinKXBwx
	 AFAzCNB5pbF4St5IwOQU1xRKlYkpN8oxyKfDYQnDsSzEHTYVFY53Kq2DIuNnXFCk4U
	 m3zQg2+00QtWK7AGXRtrcHys+tnl0KGQovwyDSqfNc9UkMihB+e5MBOZwfoxnPgPHq
	 b6QNbe8fjWF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D0108E1D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391589357.4285.4803171520935426922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad95fc62b73da935a292cec3b4ced43fe9cfc1ff97ed2656ee6cdb5f58995dc8
Date: Thu, 19 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773915893
