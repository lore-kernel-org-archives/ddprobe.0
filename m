Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6DE3655E7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781306194; cv=none; b=VIJoniafPaapvW6rN7AhsCvjbAfI0Xgem7mFpL75wwdkLwdvjnF/qetm1pUC3w6bBugNUN1sQcxus4Xrvjtatq085DCaAv8LuSQF29ULvTO+veUf2ItQaUvYwElNFHoVFV1TayPP69+liCS50Bew6V6jhLfUuyO/+rhgP3gtCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781306194; c=relaxed/simple;
	bh=aZqJgBlQ9yCyqsaNf38AmKxddwg+kzE66+eFFb7ivrg=;
	h=To:Subject:From:Message-Id:Date; b=dpPYmwDQl0Mdpsg+x9lBYHUg/mVuWjpixU71XBEVZOlraTmcLiDQbMpv6pXEdMFhSlcR6HkWvMAw9oPK9XcV9mh84DXthfICsy5mwPauguJRmPntZSuI3J5/qn9D6Mf3BxmLanRYbx0j7bi7uG/fW24969V+kymS28Bap+q9vQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQDUeMzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQDUeMzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D312BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781306193;
	bh=aZqJgBlQ9yCyqsaNf38AmKxddwg+kzE66+eFFb7ivrg=;
	h=To:Subject:From:Date:From;
	b=SQDUeMznggqHS0IJNkhuyjp9/ikuPUCam5kVkn6/s7J37yOK237CpKyy2F78FjGkK
	 hT9pRXS5Nw6PKcsTIX8AEi+gqDeGfOQOgLGcLsK6xiYezTOL5DaXOjQlOz2gtx7WMS
	 nI3jRZsreDcV9RBGcCaNLIFe/g9UChxDYF1cX07rdgoVhWimdVH1GJBx/uxtwKkM4j
	 Q7m/OLkrdKyHR8PpRZ6wOMMxABoaC2CoeQqFcidrmCibnhhfAuC4Vu9juYYxt87Zes
	 wmom8BWlup3V34hj03CKi8Gz0KN7wIySWp6cElWHpVHXDJhzYeTEh5wLXhAFUvMTlr
	 IsLFIkJOcetRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33FFCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130619369.27994.1981676005722129356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3364bc1c90e015ef6de52fc8b3917346120ce05f5de19b620b537fe8670990d8
Date: Fri, 12 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781306193
