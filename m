Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C716132F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759270794; cv=none; b=VqULIwSkQh9n1vKKEvN7OPD4ONRgZl4b+Qp87pE7vIymzhDPwJrpTvqAUgAXpH3r1R7U8cRc+m40ICYXMR3RbFYRYnmJbnmzlBTOfYEeCSY373/wCsCCZrrvv6n2L3v8UpKoebsyTF8/iD1c8EzSVdJBqRHUMrsrpb+ZWDIropk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759270794; c=relaxed/simple;
	bh=ep/tg7ap5hlts6FVlkUK/0qJOiL7htugkNHENuFdgHE=;
	h=To:Subject:From:Message-Id:Date; b=pkNiZW3L8pwQ92eVSCeweK0/1xRZxLedgejZ7duGm+O0bv/pevBqo2lFdZxLwWcpNxie/grU3pq574Ba9RtIziqCV0h46Gu80n64mNxthU8M6bQSO7WD31OsQnfNPvM/7qXGXzI6JRLDX4XV+/JdbcSplZvFqYI6+6WYM7jWQVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSDuXWOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSDuXWOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759270793;
	bh=ep/tg7ap5hlts6FVlkUK/0qJOiL7htugkNHENuFdgHE=;
	h=To:Subject:From:Date:From;
	b=DSDuXWOhCalusNM8aEiwjFO2pMSirCGeZ/Pmvj8Ki3BVRnz+PjZrbSSb2m4DKLb9a
	 vdeUh1CK01NkJhf1voRbsRH+A9xoQG5JePwYh9EPkWS+wvCq7cEhHN1b9FT47plo8d
	 ix7n5eEuoTsPin6b4/t2FXDfxOiGIrFy+aXt3/gcvKSG6VFHVQJlm2acUUNBi/NByO
	 CiaF+nm4Bj5HOVWSvzTjrjuCZVselcQYTN3KOQsAzXWTnSWPTzvomnUP1QVo78zVJL
	 Q1W75i2s17YraWfKEwd+0l3tQZmYv286pH3G3ylloYIIlTpJ2Q7rKjeju+epHKnTQj
	 uNMAyKNBGHVEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094ACAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927079358.20564.3476568141215331658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908f8cd0f9f24d54ba950a81ef6a04b8a862915be9e59c827146b7a1abb3742e
Date: Tue, 30 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759270793
