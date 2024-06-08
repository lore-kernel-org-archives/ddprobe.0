Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607CD1804E
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717885043; cv=none; b=O/ZjPl0YdqqveQi8cNCqB+HnlaK/yJMTYWzrJCvpoD7l+bij8bY22wIyoEosCBdGG/NCXcQ+HUHSkROM6KtfSmPWEAq9i8ujYpDNv08yQEtNb3Hf2g2DofW5KdqIQuqcgt0uhto6wBNGwflhAeKcoLG5d7fQxBS2/YWpfezRGSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717885043; c=relaxed/simple;
	bh=vchujv+xcInGX2KyxuFkZyesxNBlWTvi+GBqNj568e8=;
	h=To:Subject:From:Message-Id:Date; b=DfTW14kl07AM+npPH6AiLGtBWP9D8n0SAgLiL44PcqnxDSeQXgB5uw8R9CRDK3iBtVs/YgOut55EucPKLZyiaskUrowJd4xP59lpHr59XgL5Nmo5djXe326642jQE2jFEDDXhsIR7WfsmbkjHJzs8ob9kJhMtK6w3XRqSyCsBSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoyedDQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoyedDQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D2EC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717885042;
	bh=vchujv+xcInGX2KyxuFkZyesxNBlWTvi+GBqNj568e8=;
	h=To:Subject:From:Date:From;
	b=XoyedDQtfU8UfbCJUcaFxQzTFUt2XjOGii6YLCwlYrKtpgb9s3Negv9KU/qDSGEbs
	 RQEcryPqUbHNe9tHmeLNvjBhJ4dA7cf0xStjKG3zczut+cm4UVKHLBrfJPFTOHtKEp
	 7CrkMeURzdHQSGCo6KDBgfhUknz2jin6ECS/+CaGkgXeLlNY35BG1p4fe2SC1bL+xI
	 w7GyEN/tcuVfzEDPtle6UM3J786MMxzCoBC46YfenDK+tn11RR32nToNlsNRnV86Bj
	 XC+qEDGy3kzKFWp5Rv+LLF3eeFpvbQ9X157YihdMWa4adNHPoiGgFI4CBflkbl8qp6
	 B5P5ndLOt267g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE24C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788504279.26290.10882492991685973383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0988c557824dfd4dd1bbe72bf56c53e464c469cdd71da2492cecbd99d478dac2
Date: Sat, 08 Jun 2024 22:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717885042
