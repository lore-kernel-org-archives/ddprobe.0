Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456DA324B33
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781238994; cv=none; b=B1gTWElhpKMEk9mXdefHDh4Uslt/G/rLVNoB79WqKEybouKA2LdClQUIMTq8Odd2AKcISZd9ZjRSpcPOaE5TTqfxIZrHnYVq/nCD3/QJP4Z3Gw8vwPy1IAMlGilNl7mUEDUCWxELGByondqxAyyI+e9d3NtDG0wWBz2lRu12pXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781238994; c=relaxed/simple;
	bh=5Bn8iWxOY3xJGOo0kbl9yjjy4xT/EUFZibAtxUf45jQ=;
	h=To:Subject:From:Message-Id:Date; b=nIeomD+hCwiOQzA8XpC6xgeoMvQF1zwR+pvpGzoZ13CzT4CtlvMZErwvwIZx62h7wsGtSdIwnMRPcKiceRy9amMay4LjX8ylg7oYE1+7Hj4m8QNl/qg05E35quk6PwuLrhv6gYs/4PuyUL/lj0F/nt4Rb+GB1lB3QuLkWQSBDf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhH7Nuai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhH7Nuai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A4CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781238993;
	bh=5Bn8iWxOY3xJGOo0kbl9yjjy4xT/EUFZibAtxUf45jQ=;
	h=To:Subject:From:Date:From;
	b=mhH7Nuaii0IjjtZI//lGeC0tSoQCsm8PlqqRqfMsEjHsjOrd+WulVSA/zpnRvOX5Z
	 msb+ddziA/zo0LSRb9USg9MqxU+A9kfDwJKY2STv0hhJn8hlgNGZCW8Dr6HQn+xhO3
	 s2ob3iHkz0tku2TmWfZctPMYWwR5AV4ZTtt9K3VPvqSXw0bgGCodxoCkjyt2rOkfPI
	 0kDONZCnrkpaOFkHTYl3KHLcoSDePi4E3YnPRjhUeUqpWLZc1q1t8ArHyHAnxpYbIP
	 lQZ3em9JNbf/F0qi0KHK8EQTM99EYWkvY82iqIV+lSWjDD0bhf9S5/njBa4+QHWZss
	 YvB8IbiXZRsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AD6CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123899374.20088.9405284769081848808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fd9c280442fad3afcc90fab266154b2664b87a26472a2048800b9f0dfbc918
Date: Fri, 12 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781238993
