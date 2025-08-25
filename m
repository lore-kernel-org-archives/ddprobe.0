Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E28393DD3
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756097394; cv=none; b=Dl1d4/KWcMIl5E3eLDDG0CaGmKKY8L/OfZIJfn2QI518D9gEuEIBuO2jdKTYtoRPKmcJAJh2z/WD/EzmZo5fKxnkQLQZlsV9h/5jzwF5rW6mnQZr24EaNGENBmXEyWYATaHatsoYgVeQfGBON77Rq0onpzeldLanRjWa+I3O1AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756097394; c=relaxed/simple;
	bh=h7FhuE34+V6xH+PBInzptI0nY6qCzs+RzqjMoETazpY=;
	h=To:Subject:From:Message-Id:Date; b=FoHLdvJ9ySPh4CyiwHIia85lVRnfYgEiS3qoTF8drfPFqsW3TMKKcpqidiuyHUeVLRIlbetkfqQxyxu5n0YNd9nTtxHe1oSGHKjKhQ81nUsiff2UTvAF/FJoqMRBPCTqvUW2ZNevZPwryxAbAl45brCbdmJH+LIo44W1ypUqsl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMin0LX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMin0LX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756097393;
	bh=h7FhuE34+V6xH+PBInzptI0nY6qCzs+RzqjMoETazpY=;
	h=To:Subject:From:Date:From;
	b=hMin0LX+82zkzwvY9hy2p3F1gQYamVPwlk2LCR0RHT0QgVe+gRy2yJAJARQHCn/PQ
	 5vryeLnfGDJAyTIxU6pxiQz5IDylcPkCCZ+yJyqaMN7/0GLJQJ/j2lHtc8qZoD774q
	 Aw+V6IColhQlrbfeUzTyC9ROhhiqbiupOVlZewO7f68ny3lUVyn9bUdNLbaoLJGpe4
	 eLvBGYq9XaSySjZNLHUR8D3ZGxJrcgR87/7annF/o/v7MKrOISp5sPFvqXl4naudNG
	 twFu9nMWkwoscgDtSHcvtjvzAMQlzBql9T0BF0wrfA5iXUeP6TLhXlUFHLak8NKUwl
	 oYe4XiSvUcGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91435CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609739358.18886.12366823487285959660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df16133c823479b21a73780abf39e00355044b79abea54d95379ab8ae4ef5b1
Date: Mon, 25 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756097393
