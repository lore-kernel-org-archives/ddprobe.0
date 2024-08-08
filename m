Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277EC1474A5
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723159554; cv=none; b=L8f2L+zbFEThbiEa4ghxfNwQdYJjyEQhEu/6AtxaigQlGxHmWcZppS4QIORuCqh2VirXz1WlpmDUBa1c/afwi0qz9vJeT3jwJwkKUrNsR0533h3Ee+S9lEIGm27957ia4XgWnyK8Fy8Fr7NYyov2kem++qU7STG23yRE2iiYn8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723159554; c=relaxed/simple;
	bh=G8tMGHF+IWxsnmWQNRwi/mh1ymWHlx0koaa+DZB0/+o=;
	h=To:Subject:From:Message-Id:Date; b=TF1tQbViISwmndb0y4kp25TZuhaKVM4H49x/+kyVvx8/O5qzydBt99IQFiGUPXhHNU+5wwpjjymxWL1/oq46d3ebDl7HG4LJcHNu0zpagf963VEa7u1Q+zlZ4iNdwIs+C4JGP5qMB3zdyQFQTpmSEcgiIf2Krj0oIJmiW+YpeHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so4S+waw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so4S+waw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B57C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723159553;
	bh=G8tMGHF+IWxsnmWQNRwi/mh1ymWHlx0koaa+DZB0/+o=;
	h=To:Subject:From:Date:From;
	b=so4S+wawKAKC57rQsZSK2dvaMwLtfxR0IWL+MBv99biB2xOR4uA8fVUMAJqs7jQtU
	 gs6UeKUqUPviyd7mCwaSGWUvmUWCkN2RzcLJDidZucBV1w6aTAGF5mgC3kpiqcKhMg
	 P38SP83m/CqoLvWAOHDWygxDZf2qzEe5VZ3wYVwldBxBUpkT59B3yaW51UvX6iXCh+
	 KJZ+8R+09tkV005OAUcu2lwfyas5b3doNp8rN+ZddcvpFFdNDFXoFmNRiUWz85UxNA
	 cHMKHqeWGyIvtaIC0VEB276YJWOEMtK2QEh/pFMDAHhxph/M0MglcDy08Qp7xqY0Zj
	 UikOzyGUbSAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3669C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172315955365.31271.2319605768364764940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22ce2d7829853454b21a428e38f8494d8be2c84dae393b74e11c5e997641265
Date: Thu, 08 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723159553
