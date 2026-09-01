Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4183AD538
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788295234; cv=none; b=lvNqgXsvr85SaMXLiWJZZuhlig3P0cwTWbGAHW/MyXpmep8Y/AkbBcYkUrIhmyiwKeGvKiG2Kj3Dk+NQV3/xDKWmK2IZAo7RVlEdK16Q1p/plC8aDssWOwLnC4Rm2UmHWO6AoDXwYk9vb+LKesOJ7u63gUqafAN4f9OY+miOTnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788295234; c=relaxed/simple;
	bh=htFt/559rSL4/T7ALhrvxyfv+AC65emT9DOKP8iSTeQ=;
	h=To:Subject:From:Message-Id:Date; b=bHi2oo6aUFeFPhtbb7+8yipMdQCQiL/DpwjZ/p/KrbRs7DuZVPGkA1NPHZ1ZMwOisx7U0lI4Hl4SuCNCWa739350OasP3vv/jFV0GeufLSUh/pBn3z2zBV8cJBniTeb7FEKCmK66SxY30yvrWqJYR6mw0LJyoJoYnNdkkKfsyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8BS3jhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8BS3jhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73ACC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788295233;
	bh=htFt/559rSL4/T7ALhrvxyfv+AC65emT9DOKP8iSTeQ=;
	h=To:Subject:From:Date:From;
	b=d8BS3jhiyiREAXILaSnKUHF90poW7yZuI8zSL5P0R8FRUhC0qyrpBtDdv5D1OAXfz
	 DGo5HQ8Z0fr5qv+qg3CXitESeV/aWhref8uQJ5C640JhVDRm1uF8kVDFU2l18hX/iQ
	 +biNs6ycRP4L6YnzVQYI3w9O+oROcXhNUMiqZ+/zOlLzLuMDxoX06ScI3GNnuBpvCO
	 fTSrQfM9hw3BUGFa84PskPnmAPRGqZ6jCaWtvOAs6urkhy25sG84TyGD08zN2xRH78
	 s9jK8ZEsz/IRdcRxhIB5UJT9tBu8xpiYh84a+CFvY+CbWpOcw67UicnbwmxG8CY7yi
	 LRxXScdiLZW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF76C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829523369.19886.11765795869334342544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47abd1ed496a25688c7830a18e6c1ea4bde2117ca61f4261aaa78d8451f1550
Date: Tue, 01 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788295233
