Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60552347FF8
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770842094; cv=none; b=AbFTELRFlB70eEvv2pU07ZPxEaV11OogG51jsorHB+yHoG9EzWoy/TRLbdMPgKAFaWVooUtSBVY4MysZJRY0i2mS/MtDJ/h0JtNhypVqX+d12J+G0Muqp6PCiIQAgDHQwjAMx+gFrCP3yM5pAb5pC7Znm4jGwcItzaJ3RF5q928=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770842094; c=relaxed/simple;
	bh=b2Yi8plrBZ4taUM1lk/QZHf+qKkDF0dU9pUA3igkMuk=;
	h=To:Subject:From:Message-Id:Date; b=U/QEVtbDP4/djBkqzepgc96k5Co92bWiWR43PrFqCdHfes8l4YjWO2HmIzfMgSwz/ShpPRXOJHsAqupauxCUaoF7UNllxPDjSTWi8vguKn8KUk6NseQI/5/QM8ne40KqY1X2tvuj35bMpoaPldpB8WW4zp9ueU3tOqPtFXa9+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROZTzUby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROZTzUby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC869C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770842094;
	bh=b2Yi8plrBZ4taUM1lk/QZHf+qKkDF0dU9pUA3igkMuk=;
	h=To:Subject:From:Date:From;
	b=ROZTzUby/JlkNyleQoHy5t5hFH5O22uEG64v70tgA7tBLC1SDSXp1ylTSLZRlp4lb
	 xnTVcQBb34p4fJ+Y5JV7/MLfoJFVnzb2NRnTmdFVIi+fKua3yzuB1OEZYovd73zJGh
	 vzSWskOY5ATytr0SgTDFu7hiKYsdXVEDLx3qn401qvXbSTiwR+gctZz0EVi6j1FfWQ
	 pehrstXxEAtFAIzULaPBiuota5K2FHIwil8Ud/6yIcAIAWUCm02otaEJMNtibZTVEq
	 Wp8tVW1/Ub9iV60Murepl3JGxDbIEVSSlxjd6VdEJOYHrZjAKSWBvl22KS1jenrmFQ
	 uMgn1ZWpT3u6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18FFECD6E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084209377.16122.16655020516327698113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a6769ac5d477faff2213529726d93d984a045586ea7dc5760e56c34fca079a
Date: Wed, 11 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770842093
