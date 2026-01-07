Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5E53A7F73
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803635; cv=none; b=nKb2sKyroiImhQ5241DkvIElunvRbb6n3KqKyMQYQd0hoOQbNViDAEJmSNfHT+37fhEvIfuKnxm9m2SGNRCpjejyipT9ie9E8CNqLU1klme5W0PhWUjcgHcL46JWLP7rnH087eooa4csnXv+P0pZC2w5agEEUwj4zwN4SFBe9nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803635; c=relaxed/simple;
	bh=62vcr7eCs4VX6ZD7VzUeY6fQ56Rcc1FBN5IPTaqu6gc=;
	h=To:Subject:From:Message-Id:Date; b=khF0BTdpyo+DmWFxxQKpDobC77jcXcnkQIHcs0NNcFkVJ9lXzlFhVwa25sQs81HMNMBWkssHS9lG8DAe9tm/UXTv8nfBf4V/9uvp6M/W1cx/6XmmzdD+RcMyD+7H8QUjSi3/O2hU2Vvc2A0k6T5c5gZbMPk7pHiGimQyo/pC20Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqoiKtTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqoiKtTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B07EC19423
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767803633;
	bh=62vcr7eCs4VX6ZD7VzUeY6fQ56Rcc1FBN5IPTaqu6gc=;
	h=To:Subject:From:Date:From;
	b=BqoiKtTvZKqy9HdhnneuogZiFXqZ8IoInldNYk9q/Ps/1KM4zVj26SF2ZUG+Zpiyk
	 3epz25aSbfB0MZPsIYwaLZotboVE5l592OrBtWeN5fx0An3Jgs2KOWIu7AnjGsXfo+
	 vWt+E8UcriDdDF/Up88SuJklOIoP8u/dqrOLqwgrtv4FB73Ou72x46yY0nEu5XTcCs
	 q8Z/Fmw73wzqyf3ZCFSN9ptcdYfoEUUolV+HfTjqtAFyCYyCXPnDLfoSL0SFT3AQ0t
	 jgSR0VeL6omn9+snVwm+BhTq76Ie7c+XbuK3ceV46Tu6UxXiZ+gov9fZ5GkkFl+YFB
	 SY4wJHSIWuDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F137CFD65F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780363357.22232.840787472494338720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c333996b6fa79fda6f9792b7dc76fbdadb3fd7eb87a35e74ce91f3ea1ecaf64a
Date: Wed, 07 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767803633
