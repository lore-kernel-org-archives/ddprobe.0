Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451FD43CE74
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784903434; cv=none; b=OnJsGcgDaMw+Q8EWWgosa8zoAU/HmjIaUGjYsrjXKfKTnmnIaTZe/JLjlelrp+BxKgqcukD9lfxe7AvVe2TL+5OL2HhgRdX3cvcigIEwakMOGKCxE+KH3Bl8K+voEQoLVEcSVQ6IAZHr9sZuMC8pMkP1Cgv1HkVgSPYTenXHaic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784903434; c=relaxed/simple;
	bh=wW7Xdyp+LvsXVrV5OolJpxm89DVUBSKnhGA8MPijAT4=;
	h=To:Subject:From:Message-Id:Date; b=ETfbkjQtns4jaVNvFVFLwhRC2+iM9t9yZsST2Kl7b6AUZ240uaVyZBQzhlK1SxufBy9blF2K0xtYqlcbPKZB7C1P+IXtcpGFOBuRaWctNgrgWB+cG0UxdXRF/FuCoOWcC8s/8lwwldnwsYoF+/BUce5xscQ7Q0QE6yVVoytvoSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUPnGfP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUPnGfP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D162FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784903433;
	bh=wW7Xdyp+LvsXVrV5OolJpxm89DVUBSKnhGA8MPijAT4=;
	h=To:Subject:From:Date:From;
	b=FUPnGfP6DYexgzXTEtI477urWOz1c0W/ThWdZR+sRZwrsQq6fRFds/uQshaQoeuEb
	 evK/zSxQ14TCc4J52O+r2mNEF15yJZ8hJwQphDFD4PKLOvouZgb/e5Igkb6InT+AUT
	 +aroNpHWxOcSxOJ5a3OHYCPyETbO+FdUBBOmHBFSZoJidg08NfvTHU6zXdu3Y/UDIC
	 U2DLhsxApKOxba+rzNn9miSvyb7Ouf8IkXcmYjxO4t/y0qRooabrQcklq7WOjPDVCf
	 D16lExatavilhQu6KzIwmFkmcriHo5Ku+CWwfgoZzjZJDvQt4zu7IjQfQvsCJJ2NPu
	 Y8a6Ydhu0gOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF728C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490343368.7104.15371152154355796698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8df06b072cfd089e19dd02f7c1ab2b6dd51e78740b9f648a4ad20db77466b57
Date: Fri, 24 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784903433
