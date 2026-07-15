Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B6D438481
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784112514; cv=none; b=k680GS5ILzkGqf+j4j+sALtsgsidQ7wTw6uo88BJJMlCrHBRpX1iNwBmo/19k6EdiGp/3eHgrSpEEWp/cinKFRSBmKlSnceVC5tj89ZpHjWHTvnKTgLDa7AhvpmhKdfF6pVOei0PulgbwmmB4YNxoWjRTUIpMldzr+r2sOEaE7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784112514; c=relaxed/simple;
	bh=uiYXbxwqnW6s0sCwNdh81noBaQJuY+g9irHaIwot6n0=;
	h=To:Subject:From:Message-Id:Date; b=DUQJMqe309VUA5mVjw1CdY8kHIFZR6IUfyr1mJFsVfa6HQJJmaU6d9deqEFvZyXH+0qNyjMzIzWEddR9Dh9rVXjQnf/2+v79msfXKmAvXQuvpd62YNBQ9RtzUQ/RyGL71/jvgp2EtRRBGZM1q7XhO8YqWcDMSaw7gbZubTCbr4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ3mHdcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ3mHdcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02BFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784112513;
	bh=uiYXbxwqnW6s0sCwNdh81noBaQJuY+g9irHaIwot6n0=;
	h=To:Subject:From:Date:From;
	b=VJ3mHdcFrWrWGWJjn/mo51FfI6clc7enOb0pq/mFxPFub6NErkKGgMBjngcyz4rP8
	 EGJIYgRMK7akwMtHrusY5wsBeO+X7Bu6i8RYnSlwRtxSpjXSqhhNT6KzYHJnIaOzMy
	 mzBfoQkfhV8VzEvD5lc3O86c4ndH4bNPWnIFsQVwXN0tcVKqsgefqQDZ2PptGecPlG
	 rDzTljI5zbOVwSDXqxTPsHz9jhnqvtPJImfKbhDRsLfL7MHBQZHN05mH31iiv7vqso
	 RYu2C/PfGXukrOPtjlW6Z1ljEYAZNfdi1YLvku4l0w6Foc6NBB2qbT012LQj749ezG
	 2T3c9fr1NAKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD14C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411251370.22600.2959481932936957066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38358e468b8c1d2f9099b0a892637d1c551002218b3aca14e094244abbf83fde
Date: Wed, 15 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784112513
