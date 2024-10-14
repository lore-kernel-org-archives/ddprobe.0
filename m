Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227F4EB45
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728921354; cv=none; b=YrKa/hFNjzBszxVwvJWCzZli6owXYG52GtJ1BOhFwZGZJpsipmrNcJ7eSHorVAD+s30tZDNMLDCiGgkP9tp4adD6DOD0B06hv1c4QdvPVzWBNq892Q+qCfRZAAZtSR3A8nPcbdkmdC/Z+zeILGEiyvdT4SPWT+gwTxBNa5r/GEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728921354; c=relaxed/simple;
	bh=MTA/q+8KdcWwtqsZBxpMc+C5yRZXDrE7EK2hCerPEgM=;
	h=To:Subject:From:Message-Id:Date; b=d1cHYr+lvvshUrtMuQyySFXfdSy3bLvn1pipd0cl+yWbdY/y5V65iPu2xXIxWB8b5IhFiVXyTPiz/qKS3zriIubr29IBBRKQMGhUxX0HK29DCz2/eeu5gV+y23oke4et3zF8kbgouVVbo23ma2ccjrojUmTr9+1VEBZtlB/1r2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDpTRdpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDpTRdpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBCFC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728921353;
	bh=MTA/q+8KdcWwtqsZBxpMc+C5yRZXDrE7EK2hCerPEgM=;
	h=To:Subject:From:Date:From;
	b=sDpTRdpWXYjIVEfRYGzDjNBc+pL+8SAsjkXuz7IB5WhJTGryRCav2x8lYvlIo29+h
	 SIGLrwn7ahor8hFrs+zdLTDB6rk12RDJvusGC529bwM8WbGV3eEk/OK1CyO/7vZw6L
	 s19ENbELJUg1gR4H+iaWIitMlBnq960wiG7fCOKCG+mP8iIHa7lJNyoDllU7bZWnaA
	 +xObu+OTiu5HHO3Wsfq0mjf6TA8XZoge9jx3W82Sf6S522ttn2zlwXyiWXw+swhGiI
	 yEDRAtrUolHHqBgItsfAHraAggWyxf1K9fqdtcpQoC0sLvKcPOAbnW0T+OaUu5P4nr
	 WLC6lt4BAWiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F4ED18129
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892135360.9589.5717280122694138427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef031c9fc43a269b805c85645721511faf5599b50c03b5f86fb66e377a66aebc
Date: Mon, 14 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728921353
