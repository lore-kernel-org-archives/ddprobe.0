Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150321547EE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770092034; cv=none; b=tF+2wWOMitgvBTWl03NUabynLaTIX6BCbrPQWw3KkH1KjZxRh1zkK3LFCHlKsAVCLxOu5InkNFmC0zflU50RYH3ONWhrsxRdzFNKwwydjDufosugWNAN9CuJgG8nvnGJ09eP8l8i1TM2XaLX61dfrpXys953mYe7L+61/49FE18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770092034; c=relaxed/simple;
	bh=sw2sTvPEPe5hU+33x2c78rAiUqmFBsNXZwx1Iu04Qa4=;
	h=To:Subject:From:Message-Id:Date; b=orh/Vh5li2d2esnS5L0wMxIhtULK9hvmFDA+D0K8DF43GddiYb2AIFHwUdD2zNU6n4Eg0bOTZmhtVPUYGb1SQ6fySqxIxQntcDq8LZSjv12KUFObQbkiSDORDyKjrYZVQg4DN4FpaaKYigBJ2bqWtEzepyFHvS3fxXPmKx9m2Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM4/tc8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM4/tc8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A856CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770092033;
	bh=sw2sTvPEPe5hU+33x2c78rAiUqmFBsNXZwx1Iu04Qa4=;
	h=To:Subject:From:Date:From;
	b=AM4/tc8Wq8Yu7FGnUtGU6AiwuekU1NbmgMIObstxAzyZLNE7ALnNZvyhWHk5K3JcW
	 CFvfm5Fod0MTitrm2Ic7Bdau9w7Kpvu86pyt1q/nrZWRliRbPmt7+I3WeTfe6XjGiC
	 1LuLvfQfOPCJyCbcG/6hZnGz397DM7Aayvzu9MK/s6P+HMXTc9xNiotLUuQnkNV7GG
	 A0ZJH+q9rhrrQ4gLUUDwEJjnGBsTBR0Og3npFDJjfpxSKMH7JcEIRHL/ke5nB8wXBF
	 ORlRgKaQ1+ttVreP5aMOzeuMIDRCcUP+Pi/JWMxCYjv+JMT0k8q5bsaIPrxtYRIOyD
	 2ZT5pFwPFYKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E3E8304D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009203360.12349.13811155981198704553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be28bd3cdc051ac952c2e83672f91f9a1e5771cebef342a74cff3e8bab15b24
Date: Tue, 03 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770092033
