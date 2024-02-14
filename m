Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166381AAC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707909497; cv=none; b=Mk8B/DqAse5AJ193cO1uOMWvqt0o+ip6GKgV+/a3ek/yLshDGW/SLiKGDrT3NUZlN30REKT2mxHepNHBT5TRMi1bJhSNO9L270dD4K81fjjVvpQc+2RxzUGhIptlaEAQxw9CLr+chSPO5FSWODJZtujYyEpFqscltp9OsUkKDtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707909497; c=relaxed/simple;
	bh=l0v9PuH4UWIA6wYvvwD7j5FbDvVy4Snth0BGVJS2jr0=;
	h=To:Subject:From:Message-Id:Date; b=DHKq2quWv/o415QHmxl059GdFoepBhcousJgXFV8/eVxIjNSq5LHlGFjkrsyeYyqPlwMwzh5anBCccRqSXX/+/LsSYAsRZjZFYh9b2zlzA7t5Ty5zbxJF/KxG/Mz8Svxlw08LUSRpHH0mWint22EMnrkQBgpCzfEqhjGyqxV7Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLGBm3Js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLGBm3Js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F3DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707909496;
	bh=l0v9PuH4UWIA6wYvvwD7j5FbDvVy4Snth0BGVJS2jr0=;
	h=To:Subject:From:Date:From;
	b=LLGBm3Jsb6I2gAM911zM0/lcAs5Kb3lxEWAYS8jNJnlLMtXMizLbHx0mGUqjwNDLF
	 qQGJAVyYBJv0dMamVxRpPhzwZ0T/3hHKaZ8xTLDSQmIFLnq2TmWysp+QOIrjFauB0F
	 SF7Ryklodk7o1dq2VPNome2U0PQidR6J6A15QwmHAbAh7Yd2J9cuOYFFwXLkse5hD9
	 xWpDWTdEvEtIhsIXYj9iDnHNoXK8m9j5PELHjtOo53C0JxpzCjdXcvAuAQKEUWnLY4
	 PVqDdc0i0fkLlvLwR56jhRSnh4dNCTJH+z8jEUDb2EdUE7sp39J5C0Thd7U2FBzszQ
	 zJVRH6wqHMtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD82C48BC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170790949637.14956.12112434365857318907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5273fc141360ceb9a1f69a9f70d613dce1d38d1ebd87872c038f9c8a9a1198
Date: Wed, 14 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707909496
