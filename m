Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092112FA0C4
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762695594; cv=none; b=j5DPRrp2tTbmYT0NANlK8i0ydX9vQgsAvHtbPhAWYexXnq3xXZ4fQ8BvhN3+W58mUl3vKe89r8B9wCaJkwWaAdzyr9xp/eNxyBR7O51LICQ6Tc90vpgknPD+yYQWLZWeFGBu3CaIxiZ+Gr/VXGm38/dpVWjmVB0EWD+aGLkaXZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762695594; c=relaxed/simple;
	bh=8ukSGazT6tM/4WWq5WuzVnVO/ohaL5JWjxkKaNdZAiM=;
	h=To:Subject:From:Message-Id:Date; b=f1gmvBnYZEwq+HoVuy40dNqSc5dyau+28axVfeIjxhSRC78ZETtWATMyvOaqDCrU/SzYL7XyGflzQGCTv3k0euTohnVc38fW2OMPDfmikRLWQegAEbFqdXsgfJvnxVU0lVN9Ek1BctO7xhRGjCU7x80NF+DXV4DSUGvZlmICFnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FttbdRZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FttbdRZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C80CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762695593;
	bh=8ukSGazT6tM/4WWq5WuzVnVO/ohaL5JWjxkKaNdZAiM=;
	h=To:Subject:From:Date:From;
	b=FttbdRZ0dwd6yLVjJYJfW520g2QqFdf4HEvWAW770p/L9rQ3Ggt9rynGfwd0SLxFY
	 jnbr8bhDpCLme6enf7xqEm6KK4pQaMaPgnBAX+kBS+MKf8JJR8oFuVRfjpQ6+4s50X
	 jKnCOtyGufcuJzXF+AmOaNonNO3jse3pyuW6oGpoOEgQylx+dv/6tQfNWlZ/bthUoq
	 rv33IF9Hudny5mR8jYq0CrQWO17vpm9DN8e3kNnHYRaDleBcDJm3hN+uHqIIUwZgzZ
	 DkrXrdDULk8/LRUBWkPAcWn5wL2bcQ6eYbV4MwMbNfpzUneFUu2at4al6LXHCeRaVJ
	 NsGMarIv0sDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8ECCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269559358.25065.13991024183542729972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c590d73bb378d2147463c3b960ad19743b7b7d2c629ed696125af7011d1f3742
Date: Sun, 09 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762695593
