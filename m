Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F6B37DEB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776799654; cv=none; b=Gvkzhid8C+MaXHAkXeWdtnh6atsNWeqr/PaiGZKKSx7XSrngBfrxTpcnqJZy9KfulyXWKT6TFQJ/252r9zrtZDX4c3ySH5Ll47tkcja+lpsgNuidjeyR3gjErmAtzdFzanPtZDb2QZR5H5PJsr8ZmaydfdS6+lFh1X48J6/l2Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776799654; c=relaxed/simple;
	bh=KAi5QEtJWyEMf5QUx+X7fi00bP23OULVj0d2Cf6a19k=;
	h=To:Subject:From:Message-Id:Date; b=AuBhBrxVTa9pAyIggftcK7mUfpRsI6tszPKgI0UZjJ1xcTsRsSQllPPX3TqxuEnjgB0cEF0YQfyy5p1uBPGD0AXTCQUhrIC4pq4WKwysUSzs01uyDjiAvXvqIBbJU9B0QbDcVdAlnMsYGE4mE5muE0UHq9QjcgOX42xmrBzbgak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdocNyfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdocNyfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAEAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776799653;
	bh=KAi5QEtJWyEMf5QUx+X7fi00bP23OULVj0d2Cf6a19k=;
	h=To:Subject:From:Date:From;
	b=SdocNyfGQitYGGhdrQ7cRDaSoTWRp1olxVzxElLpltAaII840Ft7lAmGFDhizQWj1
	 L/wnRTJWwAJyXEcvKKFLGMkcOeU6CFYrKBNH2E4Xkku/ZAKdWh4A4ZfyoShoYwEKWh
	 Wu4Q1z7r2CIAtz9VdLDmESkBz0zbPHwCWA6l6Q05tCJRHb72K+TW7q0bwX5XBaeZnt
	 r6U7v+8zaxg8jXZEjjLDtxWIRQv5hiNlJEizUyxmbkGQK/23QnwFI3uK00eW0Y5xTK
	 IhMNi5VEvb9Ve7aVwGJyDW6pcEMRh4YIMTG19NHOQeGi6Ar95hsc28PUVYyH7udLHs
	 PwHZsUkxiT6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D30F94CA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679965368.22257.15657613692811057136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e52189d2410b97b25fd4319f9392a0c9e17463e10a2bf8e957000d3cdf6bca
Date: Tue, 21 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776799653
