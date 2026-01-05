Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC892FF148
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767638634; cv=none; b=QhDOnKj7caiadgdzvvrfKY6i4h3pslHIeqhFlhEzvY+OChXpcGYWMalzKRAwdHDKUq2ChQ6p8I6xtMsie3kUPWrDmxYU3MssPHiw6shX+3F+P3KKeaIEVIgsHZIB81j475ULD5+IrozMr5YIauYRzlzg9Sy0naanGVi1zJaakow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767638634; c=relaxed/simple;
	bh=5bDxNmsnHOv1tAjWNWS7pIP1mhwyWCTuOwr/oMX0vr4=;
	h=To:Subject:From:Message-Id:Date; b=BTKbwSQMgoD1U6UfIlVsU7bNwOShLxjAaBeXevK/bFVQT0gBu77yQifMHPxe+KH8G4SUmeWwhqqWMM1H/MFn7axkIWWnfgzDYVf5y9Bz+NEpXb6bhHdPJn55fHv0ZLPizzLw8JaYrI0hBCzQ1ENi0YvrUvqUDoo48SMgcGfxDvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5VjFH6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5VjFH6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A3C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767638633;
	bh=5bDxNmsnHOv1tAjWNWS7pIP1mhwyWCTuOwr/oMX0vr4=;
	h=To:Subject:From:Date:From;
	b=n5VjFH6BRo5udZ5UHzbWUOcK7pLYRAzadilr0oOxhTMptfGVkg8OPHU+94seF7DBL
	 0VNWdpX/rpyoTpIIdiw6M6lmJJfSaSIx3/E3bd8t95vwHvh/9632wg7V7ejgpDO5ob
	 7OCF42vasdYnx0y4bNQyZekkZdt9EYLn0EOoTxpGV/xO0MtY633vsos4sKenGjp1c5
	 kbrjhS8wtlH03r5Ce+z6QVmuHLfmpLR5Fkhc7N8F3mweP4VOO9+YbufsDEDJnMZg9t
	 Qy7rvcKQze3X52D5Bi+T4aOUglpkKQM7Q1787IJ2Uce6ATTHnUQtsVxRv7cVvxcSCV
	 LwTWWVRSVlsbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C152C79FB3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763863361.31083.11555286650136036120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4b025faa276593d10357ee4fdf6bc52d063530817b5b7b640755b7f6267f93
Date: Mon, 05 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767638633
