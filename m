Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085E323BD02
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757585996; cv=none; b=bvSLMu/XaucV0zwTrCHzrCHc6UTBHyIm97bER43WDOV4yhTH7jrzn2DB6ZVXaNhsJEX/cCkm+AFn3mllHZhMyY7gjA6jT4IKvgX6eXr8jbcOuFV2RJoB5aPOHKqlJaaLUCVC5/e6sFKPJ/6c8148V/9+ucMNUm6lxEhexWYYIdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757585996; c=relaxed/simple;
	bh=r9rqRzsY3wNQBIGwWJzIEBcuZ47dGyzrQMYQ1Cio1HY=;
	h=To:Subject:From:Message-Id:Date; b=ooyG8YNaFZYxtdb8eXVzrVTWSTrSwZ5Ru+z7vypu7ETtl8j/gUw5mUt2oCMotXQkEURaz4Gh3aGAryhy7Q+uECucjeAcnIq4ag9WAtJkOOT/pf1h4oh87t+XXmalo95wza01va8XCeFoIWjOEj/qnnoZuaZaaRD9tk/ySxRhWo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL1mWgp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL1mWgp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C97DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757585993;
	bh=r9rqRzsY3wNQBIGwWJzIEBcuZ47dGyzrQMYQ1Cio1HY=;
	h=To:Subject:From:Date:From;
	b=bL1mWgp3fDDsHxHX+qJZEE0IFbUjc9JVpapSnimVSzE++qXf2RQAVL7+uJWtEFz/j
	 3S5A/BzSkCaIZ5S7QSmbtf5esfZ1yedVcz7RwWM6GrpgQ17mjdxaC6ZVU0CXI5U9US
	 L4C/B0ROy0CWuIqF7Hwnjx1RKEITCxAaRpNTecquFiW7+6+J9xRicR9DyJVKSWe41R
	 MXpRoDY47i6xBh2ffv0oxv7QkfGVJUjL/h1wyPheS//24ofpY50uIOJRkERAIKuo15
	 h2joBxA+ibpV7tqTw19Jm2bwQF03PGw2UaIYxumr1IBHi7593M0LlIE2WbI5z06fSM
	 nQVZCvfPPiHNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6ECAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758599357.23402.4900682647173161772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfcb2846d8a5a0b6bb23239a5f9e057ee8979db2d844c891bd52d2ac07f9ebb
Date: Thu, 11 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757585993
