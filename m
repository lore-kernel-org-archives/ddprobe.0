Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1990D22172C
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832795; cv=none; b=B3lm3KMqAVHH/m1Wa7nMlp0EY8ArQLok8Ld7EB+K+q8KGtbI1ce1+JR118k7jG/Cj7vP88AwOA4gmj5oT8d2H26DP9B0qy71tv5xDfouqUbAYYrS4GRRQk74avniUoPtwlgH7iVjuy41aiZgsR3uwqFgOESq9Pl2y5VZMdFZevY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832795; c=relaxed/simple;
	bh=FWeYLpEc3lc0a6MYcSwSeo9VaaTFee3Hvu7+V4sIOSw=;
	h=To:Subject:From:Message-Id:Date; b=kAYzmqIv8jtuK3mqfC1NK3+GvkAlm528YcEUh5byTU9AdoWO+z6d4FL8GVIawaAQgdQkIjpfrpw1uZmu/HBXA8v1vIk2aZtmEZImm7FM4252cY6X4F3lMefQ0nskWfneMJB7dMdQHoDKGf6txLzBYKfTXw7kwS3QHK7slSojC6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtqZYXU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtqZYXU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755832793;
	bh=FWeYLpEc3lc0a6MYcSwSeo9VaaTFee3Hvu7+V4sIOSw=;
	h=To:Subject:From:Date:From;
	b=jtqZYXU2JA7skueJeLJObsTht0yYVcABFSaaHaaAAIE/eXQFZ6bhhGA8w6mgnVR5O
	 ei7ki5y6EHj2tcpAHGoHGDIlQGpLcGE4o1Co25ja1mu/JW1F588S6b9Djasez/kVz9
	 s53eJD9i2LeIz8x/ViKxYFAzU2wuOwl3GnTbXPHXgT0n6Jvi5LrKpSiLRZgA9XDrbX
	 U2xkuSWPZSlymY2MHgjNScPsyc+HsfLq/yULnjbpOKGO7peIQc5pk+drqBKgxgmnR8
	 fcm/GnZ0xnQid5Not4vDU1NbrW6rMiXRWSyL+GeGxTcH+DiDgSSw0zD2RU3/GRSbn5
	 aFV4emDRoFHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80ECA0EFA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583279357.23134.14436515537857883784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e209732c1d9ede79560910e9c83d8707f745503a39622d8fa7b9760ee38a2b69
Date: Fri, 22 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755832793
