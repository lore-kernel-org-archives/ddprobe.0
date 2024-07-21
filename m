Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5259F523A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721571954; cv=none; b=qqdYC6vl881MNvjBwyFzlUtGrgjSBkqkFFKswjVUivICJ/ZZZOr5EdmA2R0/nXhUJMy4CnsKUoiMZmNhYBVyLUmN78yiuAJ/U/PVjtr5pslglyHkNf1vrMJm10B4CtPUmlAX0znFgVePcJH+V3fWY0Y8uxZ51OHKkrIfOliPlL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721571954; c=relaxed/simple;
	bh=b6+dvJkZKnB/Twi1mzm3UZr3TAUvu1i7wMz+k0GBa8E=;
	h=To:Subject:From:Message-Id:Date; b=Z+iRLtjwz0Jteo4EZe547ElG88G39ElbzjOlpc7G6KQbKQvs1jpmq/4G7G1WGkHooCr3ZGNJai45HX2ieY5q6D43V5tfiqrL2OsgrdSGRYPaBC2Ep96mdfjzqCLchehy5YhUu3xk7GXHzdbUK9BdNdtOdXMaIZSPa7ELPAYlUXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIpuePVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIpuePVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47D8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721571953;
	bh=b6+dvJkZKnB/Twi1mzm3UZr3TAUvu1i7wMz+k0GBa8E=;
	h=To:Subject:From:Date:From;
	b=sIpuePViIyk7iqLDbUA3msHYzr0RMA/iMCXH0jrLBdDGv3At7+L9/BUbmEun5NysA
	 mmWXx/3XhUiexaXpu/lOtoLYZoMX4moVJpkH6r8LyB4II+N+sBG490s8qkq8z1rxKU
	 pMEsXnPY40vmVIhy/CHGSwW7aGh8KxI87wJayaIiWcarJzJ+vHQYghPxbYBHoCpN4t
	 BSFDlZGEG9kxHoPQq9IlNGOS+566H7Fo8U9xP/ur4tfXlozc+TWbriDNW8QULDZym6
	 dDJnMo2ga6TTJiE7U563M/Cy+xPeEmX7qJXgvGSJLpyOY/K12TrGB6Ie5JqOm93wRM
	 3xcnKmc5J2Ofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CABFC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157195360.18953.8717334975400969371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b545d27b95f740ab22bee14743f30f40d079e317dfd8360844209ada4a0a638c
Date: Sun, 21 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721571953
