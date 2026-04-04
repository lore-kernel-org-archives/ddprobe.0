Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326CD1C695
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775305534; cv=none; b=GEuAmd26Sya6S761TabQfd5DMLpj4h6EhYxW37dFKcdXnXRG9FWwLPz9SChpK0fp5HjgTBBL2FcqhiUKboEe4eubKO4vuf08nxHgrUbFVRQp7iUXdheb8Z86533vetyyR0RxeVBQ5IZkS0pOW5gNdjPKrt64LcxFV0u0U/OBlso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775305534; c=relaxed/simple;
	bh=oaeTXBQIe7diLZWboCVDlobw0PtZ7jZp/8z73VoKvM0=;
	h=To:Subject:From:Message-Id:Date; b=LfvclA0UAx8rs5bMQfZKU0waOX0+znk2ba5ALEz9hz2IZHYUG6/26/J3KPWXw5JXLfdBCNA9zMNPYKa022ukJpNoh/hGFPnmUvip1hd5KvzjUK7QMjcqCWaL7un7Bw2RpIEQiU19no31QywNbcQ7aNlYDnie4xc7T8QpYIsBL5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0Sg2FK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0Sg2FK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12B2C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775305533;
	bh=oaeTXBQIe7diLZWboCVDlobw0PtZ7jZp/8z73VoKvM0=;
	h=To:Subject:From:Date:From;
	b=n0Sg2FK8AXFujI9ERrvScO/mM9l+OGdInTSlEsQ5m/0ZwnsPAJGm+KVJKBBn8+v6D
	 N1yVYcUjTIoUJr5CIu+8Eh/I4UxMsBlwRSETUCWJNGLYZbw3bfKsr0Z1HT2hv0LOkl
	 2GMrT1iW0v6X2QxuvxiIN/cF6E7HSJn78QJCPa3dzckekbE4RguxyNIytmbApBcoY7
	 vqW1kBzw0ddt34CclYwJIZXhlPAhREdU/JL5OAXBOS+6k7nOPNWUoDJIkTypONWYkJ
	 kmfOamZnUfA/moDqPZsubE6uAbYLGdBzx8HxroglDoo21tWNgc4n21l2nK/AvmVwc5
	 rNbGJmnzSB4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF00BE88D80
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530553368.18730.11447508660422801291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5a827b78c471a7be3c20c5be8c34e067874915e3b946ffbfc0bca2d0041b31
Date: Sat, 04 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775305533
