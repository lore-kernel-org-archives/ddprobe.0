Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE602FFF99
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776406654; cv=none; b=BSa9Ra7Bi7UnvF4RKNrNdxrsWE5uAI7mt7JXWhmfgquze1uLPCnVUVK7fFBfb56bqQmeh6p+xMXSwmQpb3f8hWNlOHeEY9RO4BZZq2pCZUjxOuWS9APWmZoDiTRnlHUKV3jETPqKbkCoScDhaXMSobtKYpHTD5uhQGkjyMz12p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776406654; c=relaxed/simple;
	bh=2Fzkw+KOQbjgPIx8UYyc5xAJwyckAfZuXBKJyiDGN2Y=;
	h=To:Subject:From:Message-Id:Date; b=Ps2g2uHE4ZhwNB6xHhayiHeZ+1tCsI/jAkrrTTIP9T1mlOSWDt9My9v4eic9yvArbuF1vNXJC2KHABNGn2YSAzX8TMw+z1xm8dPeyvD7PRtFg5O/8etOcfjlweIHyDxN19UOizheGz0MbHcssdf3si7cWTyq5Q09lG6oiqYKBQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMzxEgrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMzxEgrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB5CC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776406653;
	bh=2Fzkw+KOQbjgPIx8UYyc5xAJwyckAfZuXBKJyiDGN2Y=;
	h=To:Subject:From:Date:From;
	b=kMzxEgrOC8mgnb9/R6RBDgsngHA2kX3M0PJhDMPw/jQg8OD+JxfxEVvdcF1xl2spP
	 GD1akrl+28FcIwc9RdYL2ST/jMPVSW6bbEcpcjtoss0MoGkhWT4yWnIynkFOmI3tWH
	 HI6WAscBW5womVMfxJiXaKsAtqnO6060ETaDAQwM59HYY4wQwiPO2UXSZmvbExDBIO
	 +kuThK43WLWNSvPwtKoAbWdq8hXi7wAQ2nyWjhzGefWyvYjJ49I9fKf1rg+nsvVRk/
	 iOkgk8FTN1hIEM0jR71TYxJA1k/c5fWa7e+yatjOWQWY2cStUHyIG83bn4px361x1L
	 ItR9v+WGOJ4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8795F8E4AD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640665368.8909.6826631398403484371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff42d89383a35fe5f6f533f082f39e9f785bb252702d03272531d5043afd6382
Date: Fri, 17 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776406653
