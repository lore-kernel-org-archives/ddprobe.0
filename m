Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF611F1317
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754678995; cv=none; b=YK+uO88WKvDWNrwzWkPkvbMIBBEPWWJTc+4WcEbVIlT8cpNsJUJI27x4Tda94s6N9qRy8HMq4FewPf3aGwh0UHeegLCxdcdzSM5WiSprYUgb36Cq11apuOXVrrP9vBzoFgfUBkdMBFB7aquGNQE2mUTUzfvtwxFMVERyI6lcT2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754678995; c=relaxed/simple;
	bh=IQpGHBYkRLG0RSjLkUgeCE5l7bptBfE9WAS/xccHzAU=;
	h=To:Subject:From:Message-Id:Date; b=UboqWDHBAmPvVHNS5OAumnmqynEUinYTcFB31eHlxFfVSX9TR0SX8mDu0ixpRaOlBV5qcrk3bBTOwqvlRagysYBEKa+DRdCqQGFifrNBcIhUiz1s9/lEcZG9x4WIciEKftfCga7Bm6Vbg5qOjU/eouUr3Fx/fiPr1UjCpmP82h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saYJReME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saYJReME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754678993;
	bh=IQpGHBYkRLG0RSjLkUgeCE5l7bptBfE9WAS/xccHzAU=;
	h=To:Subject:From:Date:From;
	b=saYJReMEM5DKA5KgSML61DvXupu3SHO8JJx8B9Sna4zyosR4AGltVpH+TWyfoBWfj
	 UPS6TU+t+RreJxA5yfX1fPkAYcvoD+XmXh7VHs/hYvS3okyz63FYWJIESSVITg32eC
	 ihiq4v2z75elmEZJP3j3am3oODvfxGN70hvthXfrpz8PsqvXQmxNmpblnO21fWV39Q
	 h2Hd8v3cmYMr/tzdhjThed0SPezX7R8/RU5QCzomhWQS/9lDAoWBuExVjuMd0KAnUF
	 glMPn0OXxYiJcQPRj7gbSfa94FnSVNjUnaB1bqAr7WRdySSYIHD2jb/uXfgl8diVAy
	 XTqqn8Dl/ivCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A7C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467899357.30240.17746147781944560473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50f3120f19ac86acd0136ecaffd35f260a295e52e87d5eced9049786be70563
Date: Fri, 08 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754678993
