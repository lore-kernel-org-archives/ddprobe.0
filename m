Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1071FE47B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750882195; cv=none; b=dmeb3lPyyEaKjY0yINlrZkfhi+PB/rcQFxQp8oOVXaxLT39KEIjAF01gdr4iI7jIR5PA8VWJJjkrv7F0Gb5AIXeKHC79gPXZ7gqLjQPBrjNN0l3d8kFgCL9USmX5Ypn+8AIGsWn/twmMrgKLIDmdxadTXSil03uUXMTaeol3f+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750882195; c=relaxed/simple;
	bh=JX2ixTMd3bvOd0FqDtwaci2G5gjlEKTuuUw0ii+4SdE=;
	h=To:Subject:From:Message-Id:Date; b=pQCQvwZllELFEYw+lz4ZEm2eRw4o+hzUsz9OltG0MZpXY2Y9DEYNYTaIz+m3DQQflnJW4+yBDhr+D6dlesNcPZkJbXeSpSZ4kgekZBQCGA2wBERdeYHcUUTvaM5110E7JK8YMaB9GlYUArIMiWajxKBZdok4KT4TPlZllH0gzys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoPdnUrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoPdnUrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC4C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750882193;
	bh=JX2ixTMd3bvOd0FqDtwaci2G5gjlEKTuuUw0ii+4SdE=;
	h=To:Subject:From:Date:From;
	b=VoPdnUrFn0MZ3p0KLnYIYUY2neFu2XOlh/fi71WkIn301yQK4N2L0y0IVodWW3Dju
	 z4P3VBSszgHQEttOnCiM9dE2g+SQnoDAx3nuPAfTLOGfe7kh+UiFFLDq3rHmKjNC1e
	 w9WUQpFyH0dX7SiybaLhg0bqs5t3p/tbR+5cEZezdSgS6Np/tZikwNFmk2rIkJvaJm
	 ed8RoJ7j20O32TstveLw9IFAAWw2tD7tHbWqGYOWwlgpIBeyXX9DqlTmrrQeWbqlTB
	 SVP9oZvNmy1dp3fyeYBBFgDiA1V62rlRDaD3hsTJfnthhb9bLINvKCLa6AyiBvNLNW
	 M24xdHjrYBVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E159C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088219357.14430.5056150624685173555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3b39aa76aa60707a94f45d83cc3bbb99bf7c4ff2a04840c5129d1eedae08eb
Date: Wed, 25 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750882193
