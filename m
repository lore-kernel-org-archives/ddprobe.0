Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D6F13C914
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759814994; cv=none; b=fCgSg/dtFab7WtuJQtaP/xHXBR3Ar53UOyR2GFK39uJt3qjwadTBzcmQWJBIaJRsq77x9QazhUr90YReBbgHNB6veBOa+I6ax858DOworytt4hQlCIxcyIEntmA0FQbCXcmrPKovw4CqL4QKU6bHbS6gY5WbG8FL1gMLmYpN8y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759814994; c=relaxed/simple;
	bh=7oXdMUDATs00Cju42KrrZgcvdVDO1AetoBEyZYdJvCw=;
	h=To:Subject:From:Message-Id:Date; b=ZfnkjV28H9klU7btg0L7vIcudBD+ZWsw0REa0EucpfVQJnrekMRmognD1dYA0PkWSElQDwOT1VSCRvHmVLq1BbmdQXTSMRaMso7MKIq5NREYMRb5NnyEWgmJN/HZW5yBgxZRmYh+uzYBPovV+4997iNOoa0jv8WBw27iLfsPngM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQz59Rqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQz59Rqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759814993;
	bh=7oXdMUDATs00Cju42KrrZgcvdVDO1AetoBEyZYdJvCw=;
	h=To:Subject:From:Date:From;
	b=TQz59RqqKgsg4Ri47T9nOju8FWADb07GKQBHFG436BXVfXALJa2sReSwI5DWOWGZ0
	 +3FRh6yR2nO6Pn4rkEJu2JtWqgJm20p1t3LVexc2Qe/2Xs1ArAR/RI816umxKN3Xxq
	 6NLhzfIf1eBOwyj3vNd3QlX2gGf8udq8otD8GaOqmX6ErEsu+eUisylwPrMJnAZIW8
	 ZHi9DAITKPCnW+DiskMLPe2m146ZATutnwJgOU4dcaF0OVDBc+tXB3SZ7Brf8g227P
	 L8cLgWgAqYX27duKjHt5TkV8w6nXJScuhlG2sG0NYNsY48btME4mj9vo538r+icM+I
	 GIIZzZoJOC4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F275CAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981499357.10579.4832847793552386524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028f9e4105bcb32e485e6a47721b3e566ba46c212a140228b81e5b12e2c139cf
Date: Tue, 07 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759814993
