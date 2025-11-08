Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204CB1FC8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762613994; cv=none; b=NoHIlTEWTSE4GqL0YHWsouLlPIfz3sL7w7XyKi925KYSe0/6CGkODbbyKv27S+Dyws2BPoVQO/7QtWS9ty/60YQCEigV0nqWK9LMjXSPdFhqrF0Vg+A6EIcVfkPaUjXMFw/405TLZ8My3Qzsrev3kovmcCKPgbgrv39dN6M9yC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762613994; c=relaxed/simple;
	bh=hMhHWEQgmZV+nJ1KV9otyIM5PheKNI2S1pksIFNAogk=;
	h=To:Subject:From:Message-Id:Date; b=RO3+BSNZGcr6ToO/wFU7MQQ7NJIvAiltRuWgVRfKFGXNmLWO/DfuVRHQTrKmTepJQO6ZgLMoPqRTWCm+CUUB7eb9D9wnRrF549Cx5jPr2Q374hgbrTBbgzfXVpkARo0WpwA1AynqBxRg9e1GR7Nj7nHM9ciscOPHC8zjRjWWiX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjEoccWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjEoccWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1886C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762613993;
	bh=hMhHWEQgmZV+nJ1KV9otyIM5PheKNI2S1pksIFNAogk=;
	h=To:Subject:From:Date:From;
	b=OjEoccWPk6i4ORQu1CFMe5A8KpjyYjdY6F2iZWW+BYu3ZK3jaefBkdoFe7DebJTB2
	 1PYQiC6XgwDoypXLIjO86qnSlX+/zH0qcv5L5jLuy2L1IQOxVvoCXXafBsEcbwSLD1
	 Zjrz1JWyVcQl+VdMWth2a9ClxkFW5tlylago+ivdEehwUs0G0w+sunRKo2T2ejbVg6
	 bbtqSFcsJ0gRw312dmDgXVg0LYtuVONjOrbGAVWvZO6AxqdEPB9dmmiCHe682zzBKW
	 9qj3EaIxleIwv2GtPjrF/e2hjwtBd5OhffZWtL2ThGGupA8jbTAleuOQDbe8fdfPnK
	 PJrOi9ZaHatdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E13CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261399357.3884.8545943860307104692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052bd7b59467200273d94123b7cff85c43872c8623568a42c71cfcf36c3d3530
Date: Sat, 08 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762613993
