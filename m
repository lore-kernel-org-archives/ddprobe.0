Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B4B2B9BF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736445354; cv=none; b=WFOKG/8Je5z9IPMWEI/fXsgoKF6Tw7jVLclHP/svUYmM6aoFQTmw4e8oYYZ6GWgnzmnebmYn4Ow/qLih3uSG/hjI86xljkdV2IPRBEDrP8RmFyVah054neOv9zCbthG7AJ2hII4b+coVdWk4SlJMTnSFX4wYzyCvEbi4Ox7ZrwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736445354; c=relaxed/simple;
	bh=b7CUrSFicTF3cdKAzm8Z+6gUaDvKKvCaOi5m+r7ZxLc=;
	h=To:Subject:From:Message-Id:Date; b=GEkifGx9n52s6DYI46GD6ywBIJyKoib9AmR/p4y4i4Lt/b3loCPBjlr1uRw0WZNcTQBXxr+4mxWaKI0ORuXso4GgQltmWTSg/SciEv+r3VVZHjUZuugqRt5YFK1CACeDcr0YUm7TkN3CbkG/XwaPTPuL7LYw4POAtMQQegO4dco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kai49q7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kai49q7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F8C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736445353;
	bh=b7CUrSFicTF3cdKAzm8Z+6gUaDvKKvCaOi5m+r7ZxLc=;
	h=To:Subject:From:Date:From;
	b=Kai49q7XBLAh0Xi7BS5D6dlx+jaZUtNl/8KHLl5bPbf2i01GDr3+wUP6iY08qb7R8
	 WFL3vKrcRKRxSJpUgH7yf+0oC3M2fcHX7SXLeGSG9RM90P0N211fPmILWjGH/XFwXe
	 sk9GTkGaYExWRJsahmPVeBF7sNJXyJhQnTtkFnQ6nb97xrg6C871wx2J4xO793qhTb
	 4OMql4WN5fAwpym0D9uuW7rUlTFa+iZuscPuXEE1yRPLXx1BF8B4ohs0NR73yCUGz8
	 KxZIV5Tc1GhQgnmhJ48Z81fdKRrqTYZmua/gXJdyD5ONSf42OZd54dQM/nzdOZ+XBU
	 1U27vFMX4HKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575AE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644535359.27213.1752808913067603989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91425395c2e06dfd6a5835d28f4dcced8079e805b9bdd129a5b2f10f0f93205d
Date: Thu, 09 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736445353
