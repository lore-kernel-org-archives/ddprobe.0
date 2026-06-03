Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367923FDC0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780470274; cv=none; b=f2w89Tb3lN8rBf67fMHKWnJHorXg79572ftoeisMf3OPWkA66iBpAF557UPSBki1JX9Ocn0qTsftd+NsOtMovXFnOjsuUgTItwT4tXC7i4k1Wxnv/oQGEc8gaNAy3X/khEr2BfkeHL8ZjzQ2N1Ll2EY2+opv6WtF8PxGCjsnmVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780470274; c=relaxed/simple;
	bh=IFDfFw60Z7QbWE6pdcBu7ijIOQcj33xP0gY2lbf8kCk=;
	h=To:Subject:From:Message-Id:Date; b=sFCSm2RZclo5P5h0YHtvOTb8g2pDPCn84A08pOmMmfwwD7OTXYiwuHugrQaispASqmBG7vuju/DFYv/DLQy/vugPugeVN9YdHWP4Zy4d4LCpttYGNzVQtE9f9jrtLzA5I0ZugAG4rysZrMx7PhTVg4+d7kxpvS99R4RqPnLppZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOwLcZQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOwLcZQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4588C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780470273;
	bh=IFDfFw60Z7QbWE6pdcBu7ijIOQcj33xP0gY2lbf8kCk=;
	h=To:Subject:From:Date:From;
	b=NOwLcZQ4hNmmGkyOG9SClTYYxX3ri4M6guUBnVh0bBEMDbD2ilbbCvT69qoNwTyPd
	 OC12vuL/vgWJbPsMu16Zm1pHssLbyWwgsOxTb/lym8GTBZXHMyl4H64XgbPz/gUar/
	 gLER6TSAq06PgrvhPh5JBgpeeA4Hse45TbLL4+Awayc5RBWGaBrOB2MfF8/Tyx4ixV
	 BP5T4uEK0Kpd4NERLrq4AiNf7jmgJ8COfZNeaBh6ZM2SLA0mRC2DXiysB6imVPah+v
	 SOdit4aurdpoZZP+EXDfZTiE/wcvZ6fTRs8Rvpw1p3DW8537pQk+pYUve9mTm1VkZ7
	 wqlvzLw3HkIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9993CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047027368.28230.4003009598482985201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672d8bffa5dd4a2073bb0b55a012d2ed6cd79b3a34ba24728597ec628b7e49f3
Date: Wed, 03 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780470273
