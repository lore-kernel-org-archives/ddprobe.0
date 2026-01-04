Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5691FD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767542634; cv=none; b=BjoiiL/3UDnDUjx5cH6xBoEDs3BQOJq90jmgYxXu8JIhPikHBUTc9RuInOzlmf8JIGQ/deMbkGG5E4rFcjSEJ6DpgyVNhD+Klc+E4nhvI/FMSRLJLWtvQN0dX3CQ/OaokMpecA/4BFmj/pBczG58F7qzw4EYMth87vLCtE5UijQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767542634; c=relaxed/simple;
	bh=7TKUUJPGrXY4oodxBKcmw0x5eQJSuYiJ74ojqrqQeYE=;
	h=To:Subject:From:Message-Id:Date; b=giPe2LD0gEiyGkhunHhEAdz1iI5KX/an1iMiaEmX+PKvSPMxXJdPapc9b25yrS/X1tW6lUuuMWpyKHtuo1oWRg02gRbK5g51FI5ZI467XCnY61V5EhGcBmyJp2OaNsaQGkzVhZzxXiSarIgEwzG0Z4YaW+gTNEV5Ae1CpNpt3PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6jlZKZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6jlZKZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE077C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767542633;
	bh=7TKUUJPGrXY4oodxBKcmw0x5eQJSuYiJ74ojqrqQeYE=;
	h=To:Subject:From:Date:From;
	b=b6jlZKZrw5f1apBw2iw5ZlVfaDT8WWPWBRz9XRtkio7TOwptPv+lnmaPuIb91z3Fn
	 eNL6+87NgOAUDsaJEXuW57++4QeYtLObChpl84lf1OjS2dxLQRUciqagKdsEXQUZnn
	 vNW2YpqBCJd2BhgYPtOAOGkqKuZe/IFzhJXcF6t1FIRh8s7Pvj9H+eQk+IYLNSy4XK
	 v9PjqJIFIeWwL9v/lGiO71NgMjDC8QTq7zIwE1LtJBG4GsGD1maI+jcvzl3jrIEOqg
	 roAgD3cTOT8A6Tz8FTT4NiqMP0qZHFG37lC8mVlnAEXsi1iC9XuUWA72HysdwR7oGk
	 4iNJrbpDgMgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C94C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754263357.6196.4951223860734283665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503039c01a6ab409ab987fba94436fd127e25e649b913748065a50c3414ce653
Date: Sun, 04 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767542633
