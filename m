Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5075834D926
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792074634; cv=none; b=PdkKCLjqOM1AVnR0vN7jF3daA64VaTHRQp5MZQVsBBidXH3XusbbfzE20Y7wxRZxYo7VBr4802FfU/7Gb33oaOVe+pdbOzOPJEMwKiTFKXwNsLDG6H5hhktCS7o3E38DpNSGvThE0DZ2pxNJpJfGlFD/1AJ4qPNxPLGSSQPWKLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792074634; c=relaxed/simple;
	bh=cP+9dsjo1h8Y5R/0b9S7o8g6eT7sWv3caZi3/zhyx7o=;
	h=To:Subject:From:Message-Id:Date; b=Tv2GUFB7q+hUpRnmmSfaNtF5HpdDuoO/7f0x5V7f47OGvDBZzxO1h1s9HkrFZ/ri25E3yELsJV3uNpyxeKC8ocOuITKijIpDXYBQ7Odyz8vInOkXeZaf63lLiys0AyjmAtHRcwTOXlUtgER78lpm1iq1wcgOy2uMhVadTS098ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMwyqKCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMwyqKCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC67DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792074633;
	bh=cP+9dsjo1h8Y5R/0b9S7o8g6eT7sWv3caZi3/zhyx7o=;
	h=To:Subject:From:Date:From;
	b=OMwyqKCmUaZBEnm9yhA5z8wzkxEko3dsGiVl3epqR5Y0ul9N13eCJGeEBAZoEjzkb
	 kgqVppKsu5xxBXlULc/+T8HKMDHHG+7CLaFCUYfyaKrTq4ObaK1OZlk3TOYb91T1Sf
	 keKMdeIOmK/gX6uh12mSeEqJWkFQM85f+vBJ7snQWfkp2Ucm3kWf/bkjo0qIB/LDGE
	 DFLi+/azkkcSJgbVuQu1m1t503S1RKzrueOQDXXq96cvn6yKhU+Xh8s/wM/QAbRXhL
	 zdVJAwkjDR0883jz/l8rGrfnZBYDDXVTovYvzFu+5Pl6RjxTnDHCq07aMiGCbVj1Mw
	 eHeStleb+OGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A90CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207463368.6285.498216532943698037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aa80f70d84d36b323e0744372946e3587f1f6648769308f6146533625a9482
Date: Thu, 15 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792074633
