Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F2B29D0E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745092794; cv=none; b=WPmYo90FsczpyddHsPI4RG9CrYckJjtmOboYz8KbyzWxGz5D9bEQwjpgEc9VbS5E/Ja0xYkj9qKrJUTkuoSIWpHnKyiLZnMjwcpk/rIDYSrtsjePFf8QRIM8o+64a2iskK1R/0sb8hWPwxbev5qCg2JId/LSSDOCq46HvdQtRcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745092794; c=relaxed/simple;
	bh=Lr7IHWhgZ3jXknbwSn1vEwm3/BUUsWw549UzuWA16h8=;
	h=To:Subject:From:Message-Id:Date; b=HLCMUntVXW0s5gUeMenIBAipL1V/BkzHFVxX5wHgSydSoG9r9AJ1b/GcPFnI7CSdMPe/DPtWRXmahDyhWdaOJ5B0vW6QiOt15YRfpyNcWG/ys0GJsM3Kdw/+9eI54ucckNLAX41mNwsOY3ukn4PvdoTtjK2CGfNoslXGBwATxoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS0RBzLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS0RBzLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD257C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745092793;
	bh=Lr7IHWhgZ3jXknbwSn1vEwm3/BUUsWw549UzuWA16h8=;
	h=To:Subject:From:Date:From;
	b=jS0RBzLEA4uZfew6RZgUHwP1IfIZzY9QSfG54YiiesEC1q10XG66cTVNXdcc/BNCS
	 lhUmZa79j0ecrUvd1sV4wZBVVLkYZpnXVuYS7qtw76mIoDxunR7H+Q71sBZb8WI8LH
	 t0EPGGnXCRn6Rtxf8dRCWnmY3NdxK5VUB6gpfBBVivS+KpzqNF4uWsy5R32Jz3WW/z
	 0GnOJkfcuV6CM99f9W20tu5RN4SeXDDJI+zUyJwU1frw3bFgUdovFeyL2X9ED8klQY
	 wGSlcbaIU2+es9u+dzwHxdirkQxdjkK95h3VLKFCvL8fLDJzfVr5z8XYwWG0aLNvRu
	 sbaPrsJiQ8Wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E9C369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509279360.30584.11499395618871274709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae611ab1cb7dc1280d5121b5ae150acbe0aeaa98e5ad12654ab4152ae931b20
Date: Sat, 19 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745092793
