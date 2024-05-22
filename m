Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4C7FBCF
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716413603; cv=none; b=O3d49OZQ8ZSfcesreDXHLzolsgQJgRyltaR4bkwSJzdT1d/OYgza6HN78NQ9o+tO5rktsYU9Bgnt63wOpDFTBlm1+IAHOspzuVmO+vAy65xsvX8l7aGi+Y62AEz8+KxDCdpI5YKrtKMoSQen4gOie3HkANEoyXmLXj6v0S/BR/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716413603; c=relaxed/simple;
	bh=ObMlpvcfwrww9f6eJGa/YpxEeoM5zboQBdUmTFfpD38=;
	h=To:Subject:From:Message-Id:Date; b=KbmpRaTJnw0nf4Fy5FcVqu5QzlLzWs5pKuJ5HcPNyZdUfeSKAOfqxY3X+MLFFS1+4/UNZBBIxf3l3pDuk1GEk0Q0GOtr1fk3byUC1N+tYAuvLBDnl6StkHSNZ0GkhJc31KJYIajdSGWSZdO9ZfuIdvaHxm/NSkNsgwthfD0EbeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVlAwB65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVlAwB65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC774C32781
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716413602;
	bh=ObMlpvcfwrww9f6eJGa/YpxEeoM5zboQBdUmTFfpD38=;
	h=To:Subject:From:Date:From;
	b=dVlAwB659TCdX7alWLpGixlECVGx/6n7dogYvR43bECPh3S5YPrgTpKmzrPWW5D5A
	 U3gFcZ2fRxk6O1zmLLI7PAmhBuBicc59WuByb6pjH4zphPkPB9Y97dCAnDIKSFiPeV
	 r9niGdyZfNcbGQWsGXSbb72kCKYLNSTH1D2I8DERf9M+vawasOg/+yqrho2t6S1U5b
	 LnQUoR4TUNGBaTD40/OMu18k/YOeKiDHskVh13+fDCGfwMRdaDO9he14fupM0gROdl
	 JY6zInvQd8iQpKbCoAxfXbzWFfIsR3wrJiyMwBQXbMO2U/kAPH0JjarqKug74rzNdT
	 P48SBsIiTw5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3780C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641360279.11835.14150407603546752044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e97b010f12095f03231415188dd9801e6d4c0587ae8660e0faf22b431230924
Date: Wed, 22 May 2024 21:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716413602
