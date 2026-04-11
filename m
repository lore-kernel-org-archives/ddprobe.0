Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B327F01E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775904454; cv=none; b=aTs4gHENMr3JhiD3KZWxQWhVV3GCcOPeSI/3ijWWqM9LF6PPasgfyYJd3jjfTLgWYwPHE5RY7g4cfuntBZcwKj7DwpmFhoM0a67F+7D5OYCy9dQ9DZt8WLw+9nno+AEt6zIQjaPMRYFwyWLfY98jt3AQ9NF+sqYGWFbqtQ7zMdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775904454; c=relaxed/simple;
	bh=DeDuHI7hZ4rKSaGnNW0zKm+t0eCDuP18tHEorMsOE4k=;
	h=To:Subject:From:Message-Id:Date; b=rV8tXpa6wYbt+gUxpEqwmxe2xgTaqaWY3OV4CikJjTGTH89gSCUawrqOAMy+B94E0kCnYwnW8JLnyTU8QQY6YrxZJfinME0Ed1MHsJSejvZnA40TwYHY8wssSZs6eXX3HKmp50ENVnxWvtYuk0MeLoHvHnUSA+gXckjZ/3LG9dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmRQeybQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmRQeybQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE533C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775904453;
	bh=DeDuHI7hZ4rKSaGnNW0zKm+t0eCDuP18tHEorMsOE4k=;
	h=To:Subject:From:Date:From;
	b=fmRQeybQKMmSYcW+P9dit/ogETUkuGRgR1i7E5bq/Aw4e0AC9VJIt6wzluWIeK7YL
	 mEF1PTeVZ3rtfzpik4SRtH3i3LaIXNXAVxRW2c+Hm9cnJBmai2Yl+Kkl7twtudqyLu
	 tazVJ9Xf3PFlpy16A3PQDUxA3dB7iVXWMNooF4vMUeZrPS4HT+H2qc1g7Ws5LXD+/0
	 JrMUsttbjd3bmFEKAwPO5484o0d/jmTGm0y0/7n5J6StfKHTXFjNwM4IhTw8FqSFrS
	 jII/EQBDfBBAGrXrRx/59t2+n4UMPp+bXBfKKPnSHXLYSxQSzqQIHAnAuw9cLpnfEX
	 dOblNmLNsNpew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA0F3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590445368.24476.344018500384022925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad4a5efec6bf62c2b5a55df011d89ff32605bff5f6ca9042a2dc3de8e3f026a
Date: Sat, 11 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775904453
