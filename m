Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E239ADD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719678863; cv=none; b=CU7lhGlWY8dpgPRoiS7mxVR7lQZMdmbPiNGH4zB/yE5veH0Qb482qJdwJZKlcehOG6T/yIwPPdSCNJHPmnnt+QrG/cZ+0RNbjX0V/GdrvPRN1NmJ9q9E9SJImKyALEuCetd1oGTgjbEsVa/oV0jJIAdhUF8JBa4Rp2oYbOJnkq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719678863; c=relaxed/simple;
	bh=AoTLR7Cyx2EZAn2i0uG5fE+YPabuTVlUmD9hrfImshM=;
	h=To:Subject:From:Message-Id:Date; b=Fo6wGpSAYv70MvXY0cgepz21acFYP+8V9HCZ+q0YzsjQZ3gpm+NSWPbdpF8VO72syP4yof42T3C763qCw3l0y7G7jIDSVl59p5y3NvCtUf5aO6bupCuKjp0KPuv23zljWNRZKu3Pa3q8Nkewn9fp7T6LjO8S6WOqKLl23nQjiQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR078dYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR078dYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FFFC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719678862;
	bh=AoTLR7Cyx2EZAn2i0uG5fE+YPabuTVlUmD9hrfImshM=;
	h=To:Subject:From:Date:From;
	b=LR078dYD/YPadGDudkuB8hDfAprJRtDO3/q5OeK9FOabGFzxDmYx596Q7fbjGtUhV
	 p2dJLHcG7a4ae3UaBz88uBFc5jmNX/ZZ2u07RI64Zh4jpRJBJ5ms2uksgSZSXbyC83
	 RfXGMLMM6m/Yc9GrbyE6HvwjCPXWBes2uz2m/O3+khpfYdoE7V4euL0JmT4STJIm8u
	 ij5vOyrZX1TSYnmDxBIuVA8TOz8n+0FiKpn8L6LOOHwwhxlFbnuKy6e3ROwQlpnXDw
	 Elm+V9pHunr7LLx2s+Yw+68axvoJPbifb1KBCIxZUa2oCt7jcp8+OnF5L7Sv4j9W6j
	 xAq2o4ADbN4Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D56C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967886276.26933.9100854346092575393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f1e41ab283f16f4b33cfafd0966ce27b3028fbfc50af6e175c378d07cffcb0
Date: Sat, 29 Jun 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719678862
