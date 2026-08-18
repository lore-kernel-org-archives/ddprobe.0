Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCB1C01
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787011834; cv=none; b=ty2PvyEWwQ++I+PJXWQyZSFfTn/oCcsEjdkku/Wx4kgmjELeWACB6zD9rSEnjhTFNk7XtAFuC1qfuMY2fWzdoXwSyQFQIvUXDTuJhUZON/ld4RMRENjgKm5H0MNdRy0o316/TDUhlSaJziFv+QK9vPPBvSGN+E2JNfKEEmirBeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787011834; c=relaxed/simple;
	bh=zly9dcF3rKTMnDhyAcpLL6yl5RVjqx0bJOvKFeO0om0=;
	h=To:Subject:From:Message-Id:Date; b=bO36k2wuYrdX7WVQC5ai39rt2GQta1uhA9IXn8LCWLl8i2arHUuNy5vrqBvANCwVVzkLNlmii+jCdzLxunagaVV/sn03K4WESWPCSJqVI7GBXfuFY1qe9pjDRqou0Ku23BlZ6eFa0mSJhQO4LKz3BGJrKplBigw5J5M1Cdk9kXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTXoMKbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTXoMKbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EF0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787011833;
	bh=zly9dcF3rKTMnDhyAcpLL6yl5RVjqx0bJOvKFeO0om0=;
	h=To:Subject:From:Date:From;
	b=BTXoMKbHT8NqDfP9kfEXksKCw4C8dBbKVMJ/0rywXNqFbbhdUB8a1VX9KCAytJVA6
	 JoQt5ouCw62dktFoXURnek6JV5TWfq5mkxPx3FVpzItbqB0BK/Fzjw1bd74eBYX8v9
	 bAQE525Zkl4Jxd2LbLBSvlfaPtdN1Q8hzS6vzWyxQ89J8NtHOCbOspGt4GM6PVSBLp
	 aWT4uPSyrtDu2SNyLzBkyM6jDs8HcznwYAmb/F1RAioGcF+fnu8fv3qva6i9EWvP/i
	 lT1pMqccYrcjoTkr1hw+wkduixbMfPAkEcCBilMIA2a6TMJYA++/+N43sOuMuCT6rT
	 vFKKeJqm3ENOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9033C5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701183372.31074.7971394606725041720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c44952a206de19abac80e0cbd9fbae49d05731ef5d1b141f7c02feb1ac7aca31
Date: Tue, 18 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787011833
