Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444B52192F9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782451054; cv=none; b=AJ6OFKC2vqpN3c/D9PSfNzci8SAjM8mUjYa2uqwr7CCCyCB1hkG2qhFAgsqrRoTIDoPh4iQOfCFXy0SyMxN0DhyUajwzUYc8l7rC0FVgrVjcbS6JAG88lwBXC/JzFSwZuIaWXylqBnEB/Kdd1sjamNEHCdCnCeh69Qgwwo4T9tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782451054; c=relaxed/simple;
	bh=Nn0N9GGMjtnUgMxBiU1t6QNDdeOUtD8lXO80PoYRVEo=;
	h=To:Subject:From:Message-Id:Date; b=nJyvmcBVe0nVZDKxJTfkfza5fhN+vQ5tnalt9VT5ZpBemtVSQr3SOzvsgoSf5OD/ipMO/lYkUy3nWcpjvvvAQQTCwAf8jpxOZY6QBx1vIn2FX1Ggst+1FsZtvm+04J5EnluECGTReMXqW7vUOQMQJIdu4HS21WxWW5PiKsUs2L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiyMJUPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiyMJUPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C753DC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782451053;
	bh=Nn0N9GGMjtnUgMxBiU1t6QNDdeOUtD8lXO80PoYRVEo=;
	h=To:Subject:From:Date:From;
	b=ZiyMJUPpRpIQX8mOrP6NlI47mqoWJNKL9hMpsWOH2qfVEl3t6H/76gf1UCHT+9p+I
	 5gYfl3VHRfQ0Y20A6lbcRix5ZX9gnPYCt7Yv8cSgR01DfoG05rvPFZXxjLWaIyLqMt
	 Ig3OeaIMhpBSH4KmDlm9sPvqHxYOCLsiJVuuno5z2WfCnN/M+EyE257qmVL6IG1opU
	 y+UdzT/PtA2SSrsd+yLyvH2hyZRFBntWvJJe7t29yJNVpE8MggYlOcYjG3Rw4sgX4L
	 5sD1CjGP8wJvjvJbTBERZy3iCM/o8GfmC3hFgrIyX0gPe9fTyWY+6LTCdnCC3/NFRS
	 zF6ivSbL2B5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD9CCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245105371.13850.5274462065181786928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a363990375022927b7eb267f8c79a22e838763fe2cee680f26859e465801302c
Date: Fri, 26 Jun 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782451053
