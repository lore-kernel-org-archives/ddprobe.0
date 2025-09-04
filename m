Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8A4F5E0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756986594; cv=none; b=k7mbvZmxOvBucd0+Wo/DZLy+C0un81yaaTT8xx0RKmZVjljebpp6aqV32tLtGiN2Q6jiZm9IbP37a6a9pApsoO0cxp/CFaL0+mty7qO0wrw3x3lmE1XJF1j78osBwC5taclIhXJPnYdK/sFz8bry0rNLdofifW9F0H9atWu6KmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756986594; c=relaxed/simple;
	bh=CL9Xf8v/3UuYYNW27AH7zqZpbl6wfB0Yl4FpU4ZNoyY=;
	h=To:Subject:From:Message-Id:Date; b=eaLJFiuw1rtUhuuGXExKUQJSyA0nKQfuVNiCBhy6aHjRwUkx5N0aqmxefiUf2Ty4WSpfpkbptrli9Y5A+rDNPMi6EFTU8gF8QoAdEEaTFU8Ec5y0CjxJ5ocIRN/PxjACCrduMR2q3C8QVciRIpO0b//4V3DblctKECQ1Wv1uQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyFJ+RZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyFJ+RZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9B3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756986593;
	bh=CL9Xf8v/3UuYYNW27AH7zqZpbl6wfB0Yl4FpU4ZNoyY=;
	h=To:Subject:From:Date:From;
	b=hyFJ+RZcw5x9kap8mYrJsU9MzSJRPoRCWjCWzA9PumjU0baVHol469xBUMCQ9yhdQ
	 G2pz6Nf5oJRHJ570Ow5d4mmB8iCJ/qNJYqUzIEsgsrUDFYswg4FwMDJ9kQbhla9oBL
	 5DZVxDEcxlcjxpYEOKi2QkwOyLG+OW2+6ExA84qGnltQb/ozBVwP6ggKqwm57cf5Uq
	 UEWn75Pj3XWe84AcUl7G+TmpX3oj6T/xzNw49VcuQu06KDvEhnDhQDrke7QNBVKwgy
	 fdJtWaNIzi6i3BfNEuf/nuRZjWyJrY273W6PljO3M6C4NjXw0X5+YCNP93yTctdguq
	 ampaEBJPi2q+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E492CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698659357.8709.1740002950777865141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a15b0cd151d1b3d11cbbe1e31891c4299611a22f67ccb52bc9e4b7715a951f0
Date: Thu, 04 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756986593
