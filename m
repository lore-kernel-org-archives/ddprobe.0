Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A44D1397
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781478994; cv=none; b=En44CJcVfkff3huP282yVl8P+FXjJYde2oL1zte6mQ5Xe6LxUI79UFzkXMZ73HtwdJfMbiQD0oql7C4ol/UAT85YwhOUUWC+YKKJUIvrAZIvKNpKT/KpdBMvija2NF43HWpwD+jClyl4uAINgsUUWpaWmRVX01FsrKK/6WO34Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781478994; c=relaxed/simple;
	bh=uPjkptsqFlKMf5qCpb9w8fQz7KnkPhUkG85lkV/PhXY=;
	h=To:Subject:From:Message-Id:Date; b=N4FdpGbHKfN5DJQowi/7WWtphvK3AXMgv7G3LmoyetTq9KEceBrrrEYnfKI3bstBE+3fKSIFvY7m1dJwnRUWI0Ej9sEt/eNBGqn1kuUhpmH6bzWdE81al1bjv6uq/B+8JpLo1kNjK9V0MTvd3F09Mrw4X2G68mYue+h2f+0NOv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3/Q+hxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3/Q+hxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F2FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781478993;
	bh=uPjkptsqFlKMf5qCpb9w8fQz7KnkPhUkG85lkV/PhXY=;
	h=To:Subject:From:Date:From;
	b=c3/Q+hxhOEEU4We2OFblbQdCYRbRPM0dcmZlgeqBd9gEFJc0Yr82cUY5XtLb1qcl5
	 qRakGRINU31ulrlfL/MLh3ky2X4ye/0nyW6WRHunIoeE+HlCtQ6bWhXom88h+F0Gf3
	 QVK6PEiHy50DRqHyRA/nHtT+V4BHFzahdKwjQmr0zZYCWUho2quC0DmRA3OabHRrBP
	 zHnK7CP/KG9SCvaXGSSa9o0LpyE8psuyRyQakWCoCif+ClCArF9c1OPDKstdOADpiX
	 p473T2+zmMVaHfdDvFdCamqud48Ce6x0mK7c20vaC/jYC1L70f9T8Uc9RQP7oS7EV8
	 V6enYZRsEvbQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FC8CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147899371.7629.7496863568528784308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32005c0945459efeb717e589eb553dd24a6ad6b7aaebb2b83c65abe7273c74a
Date: Sun, 14 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781478993
