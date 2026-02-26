Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366539527D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772097294; cv=none; b=j0c86zwK9qlHRztbv3Ly6Tri6cvI1QjeWx+qU6Lz1nPfM6bb6U3AQKwFWkln4hoTvyXGZnTuAClC1WS4vnkKEV+58sRDf0hB+gJcgaCXFKdptrK+n4sm1pa5eoGIytoSFRPluQCwbWejLpj4K2F1Vw8zLHheg6tMfq7z2HGeAsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772097294; c=relaxed/simple;
	bh=bF28IabncaW8KrrJCimB3u8XS7bW9XJnTOj066CzS6s=;
	h=To:Subject:From:Message-Id:Date; b=NvXSSsP/mbwNwSjbHQL3wgU4vKIJaUiekLWv9R34Bm0EbkPJXcabji70KLlffu4eatf/N7T7T1WtvApgps6fMT373WgU8uVTMit1u/NST1LEMUznIM0ZGzNUCh64lW6uEFdET1yWKouDYP7P5A4RE1L2X2ZLJypUJYxKwzpquqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVleFLHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVleFLHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5456C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772097293;
	bh=bF28IabncaW8KrrJCimB3u8XS7bW9XJnTOj066CzS6s=;
	h=To:Subject:From:Date:From;
	b=FVleFLHinyMWPOB5N60WVELn5HsvASLPIYs6srIVMe6DYZTn1Drir+QNp6kcAXD8z
	 OS6y1M/Xx/h7JosZl3t+kyMwilcirAage9xFh6TavyM2kvZNn1Sp9rOQU6a4mJFmqc
	 cXvnxHG3TvZhFSV+AjN09bv0NzwUZMbYWS1x/eYfiTPn0b06zV5Y9Gz9EOteqY/9t0
	 eCeKy4vxQSOcP2glrYUljIAMMiTcl8GpdfntzdrecIDcVA2CcjMVDoMQYtWqZqwlVS
	 GPJ+cWC8qgzvgowg6DldZ+XVYYg9aLTpcxFZQGA9IwlYc7Mx5bggag3XoR0A5XZoDK
	 DFpc/WhvDRgWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D2FC5910
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209729361.2500.7573134169570078614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89935afee0007b0fe6e640c35adba1b9c91e0ac5e4116e5b29023f0ee63cdb14
Date: Thu, 26 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772097293
