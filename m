Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B670212542
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788586834; cv=none; b=k5kgy7H8teGIQO+YqJnk6C7Yu52+3xg73CrKZfaInHKJTHn4D7+oIIBUyXHyJmXWAiRl3Z8ZRBJYXTPGG8U3nknygpMdiWtvYEjUEnD3lEwnn5y1xXnohHtQMLc3jTqFA5hLJBj3TP16AG6EoLVMhAWP8qCHtmzyXNnLBMJv1SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788586834; c=relaxed/simple;
	bh=HTyCEBfuJlGTs8e7mQ2p+qBRisS/RNcPZxfl2lWxwnQ=;
	h=To:Subject:From:Message-Id:Date; b=uSSfo/dMRr0S9mo78RsI0Xqh2cfex/b2prUd4/yhbiCJpFjgiC89+EmLADvaLMsrmRpwB0vrCqWByyX4NLWTsrStfrGTDJJKcEGAp3Flz9G91i84Csw4Rhlw/maXXtkB7zJc3JUBczPfgHU0DaUAj+QOYeJWPkmWH60hfazU290=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFX7Ih1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFX7Ih1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470FC2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788586833;
	bh=HTyCEBfuJlGTs8e7mQ2p+qBRisS/RNcPZxfl2lWxwnQ=;
	h=To:Subject:From:Date:From;
	b=XFX7Ih1uNnMZs6uVxoeJc+1j1Pe7S6EJhnN+VPle7mwLoHt0vz6nDgTTref/mPmVD
	 jkC/NznRxulEnUBH9vwhImWsyQsWCxDGY8JcMRj0844JqWmxeKz/PmRy9zbd2zZn3o
	 6O9s8i0iUyiytYOV/6+kYUK7fYgtNqDyw2v0c9XilJ3MV77awwCMkldlB+ZjcREjwV
	 9q7An7tW0ohOSo4XZi2KpOkJg6s1CBhm/mc+pWGI+AHD1fXY6REJdK/5vVqomBHEla
	 2HDlbml3BbS7XnI4b9MAQBLHTo+meyAT/gg3YLMkGRAfUfypxaA+UMRGRdEP9GTtxe
	 qYSbfOf1hZchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3685C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858683370.3660.4229976654117301464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01b83a5fd14acbc152c243028c8225e5c106fa854270d8c5b8aec79d2f5a89a
Date: Sat, 05 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788586833
