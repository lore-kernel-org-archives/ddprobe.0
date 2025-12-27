Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCAB3A1E94
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766819634; cv=none; b=NZgwIJOQ5s4zw83bjz+Qd+HY3/9RJuOspnMkPxLJBQ0dHhhakdba3T/NENkULx+vkVmRGC4LyGuVECXjZwuGisZeqK5PU20a+rqUpozrhPfy7iA1LywuAU0XejbjhCtixnzVUah8qyESs15/YTpMd4vRwyiZ4UxeB4DTEYx8QKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766819634; c=relaxed/simple;
	bh=uVOiWLlOhbHwAGsDTcSy4QcU8bqQayM2cagL//t8bIE=;
	h=To:Subject:From:Message-Id:Date; b=hA1cgCM9cscM7/mMDGqYRECUedvrryFaC0KZkehmPsmQ+lAqSgGEGLYPREUOrOH5Z9QOaI6j4Q/IAliGcQ9Uan1WAKBndobHpBZrO999VCVuN2DGrPbH7EJ9Ex6kdNOq3ayMhqyPA31yANVFIF+etudSVaqggI1L++4Pq6UzFk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UG+nvDly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UG+nvDly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA55AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766819633;
	bh=uVOiWLlOhbHwAGsDTcSy4QcU8bqQayM2cagL//t8bIE=;
	h=To:Subject:From:Date:From;
	b=UG+nvDly6glYtTfd2kqp/s5Cnplx4D3fB4GpavkjuNcZW47SfgAl5E6kH6ryeeT//
	 /60ww2q3k0RaRAafwyTIdr58lqg06GQmgMkuVhqUQCTWx10dFSfUjNoZ7a59srMfuE
	 owmyWNx8jt+2TtHHRDpH1gXakDlHo1xyvd0CtWSkDBqHJE4mOwpN+LWV1PXc41pl28
	 LDXIGday8pOf1y/it00tgzGHLgD+dvYWXk2Lnwj4jVTUk9RzrP6SuLDLwRKJaR/DJC
	 8+yDmrv2VVLguNOo3WXSm1Lgxb39AGVUgV6Xtg9+r1RBNz4X4ZgHQSA9q/3jBuBLAz
	 zmJQ9Ssunk03Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98246E8FDCE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681963358.24476.2222702296137829766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609966a607ad9c75dc73b5cc1b434d27696bd2f0187fd221e822fbd0fca72386
Date: Sat, 27 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766819633
