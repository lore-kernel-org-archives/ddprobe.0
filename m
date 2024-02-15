Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A3D2CA7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707970097; cv=none; b=Fubvq7Gm3RTZL2TT062QojZFr0SsRepWzwUTmu4MqngMKtJ5achuHxQ/UvR9Pa8R3cUgNq+wHDzAfSyhSqXhntVPOCwcYYOP7AVjk3EWAS5Yt7zbkssPRjddfcIFQEpFsrcz3xTA8Xf+iRbjaaSRZPSEjvaHlBZaEZfIvgooa1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707970097; c=relaxed/simple;
	bh=6+VBR514KMROUDOcKr/l/PHY1C0pSBzU3rfZ5wMXYMg=;
	h=To:Subject:From:Message-Id:Date; b=IAj+me+O1sd+HjoNhEqf5ZN6zJc9uUI7Mw8nUAcP5okJBWcZm64ID/q06yh/++DzdA0y5ArcaF8Ctn5QEV69fQNWiSKyDNTT5Ui8widU9kxkhfoP6TGu8etlGo2trtPFjsdrAB/g500Zo7NPINdV7ILBkZRf3zcAdzxcuZVUrSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kr6Bxgrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kr6Bxgrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A5CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707970096;
	bh=6+VBR514KMROUDOcKr/l/PHY1C0pSBzU3rfZ5wMXYMg=;
	h=To:Subject:From:Date:From;
	b=kr6BxgrknSTHKdYRJrrlt7/J+P3Fo3AN5cT4I2nfsxdTXb01ozRQYh00vQ5tvGd1X
	 19vroARZdK4+pJMgs8jti1d2lc+Ovpr/BbPNZCWdlwRtIVeHPem2e5CTyTEEVL33Ju
	 JxaLphOKMpU8qLOyK4glGZVcKw/VxLvLzMsTy9+vIHeWStRu+q7ZBEumzBEODiv9Zz
	 Jl6icWCkz7jWqH1v6YVNS1p2Lqr9L2yg246WXlUrbGwA1GW0x/yQMZMBSyWf0QFI89
	 ArxSxA1to5EK9lrRGcCni2z/SGdmsXs5BGZ4zrOmXY9BHYDLiR1cmCMzEUdZB5ASof
	 gbqx+0sgeD1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D17C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170797009645.15450.6497329375239966461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386a8a9e230b5cddda5efa0a3687bd3942dd05f455a3d3df6a488492ba265064
Date: Thu, 15 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707970096
