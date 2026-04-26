Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2421C131E49
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777182454; cv=none; b=Ax0UfpN3To+jExIMHgt6bQxstS3xoERFCQAthKdTTY7XrRDLB6d3QSNSRJRsl8k2FZcKmhEMXaOn5+uGwLBRWAwh8X0USzepZ4HtvoZz6y+VBeYpuI9l12OPectLFYPxZZFV89qR/gUtEu5tLahEQ+upgmtQHQJSAtYVCLAi+8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777182454; c=relaxed/simple;
	bh=8r02pIrSJzZO2eC29FqhdfXJTwkgRD+s3LT3Y1/EpQg=;
	h=To:Subject:From:Message-Id:Date; b=iwL3V6GFgvS6PRNDRUV52yDjaH7n9b2oKDrDdGG5FBoIM1a9X6z5XNPDIE1EDjuQngNegxS7wmVP5DZaPHfr3YB6LsURpnfVdour/U9MKHl/eWqFTff6nsl6RBgUoPOQQGhphtWQcVC6Dc0yX6V5JvoW5sHJIsHrDnaMhNacTI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUfeJAcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUfeJAcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD344C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777182453;
	bh=8r02pIrSJzZO2eC29FqhdfXJTwkgRD+s3LT3Y1/EpQg=;
	h=To:Subject:From:Date:From;
	b=JUfeJAcwMQORgb8MZNRZpsBqLS7QjB5fiDxN6iA7dAz8vBvaBb3r25SEJf5In6mxp
	 1+Z8z15PI1MPmeIZ0Exu5nhzeFBUsCPoZUpQYnuZd8epNFgTHrfqaZupRY4BTqQDtP
	 fr2TQmd8zbp3I4gk+KWtVt0/X/xRy3/3l33Gpfp5JKR5PGExQdxD7f5FeKZPWNzO+P
	 BBC344WliPJY/uDq5H/rlyno2O8PxZZtn1mip1n2m5EKXNJZDCkLnuedYbf1+oHVcb
	 M8F+KXsTCXOHSZRg3HdhbQ2QFyupKxdGt4S6H+Oq5HhHWSSSkFR4b99VUY0c6EDxfG
	 99P+/Ja7xna5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC9FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718245368.6723.10767944766866910193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2629a61d0e9b7076da6af1fcc6efb60218f4208ebdfb81f26126027b76c23a23
Date: Sun, 26 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777182453
