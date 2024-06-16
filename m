Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7573114F90
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718552303; cv=none; b=ZCx/PYB4ZrDGgIBzWX//X8mdYsBsbbo5JHk09peam4o/1vnOmpb1TNw9Hb6qd/ygyam8FFvAb063FypHAi8H5H/KFY2OdOuYbDsdpkagUaNsuhaxiSpvRpuOPv6kSVCfVHOvfadrlKPXPLK6KrDJ+tuudwwOKIGi5Yh/gb0ILLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718552303; c=relaxed/simple;
	bh=4lnunlUsr1arSv2W/9oAZG8+za+9Xbf2EZv5WPplWYY=;
	h=To:Subject:From:Message-Id:Date; b=XZsD3Zf8VPidXIuuzTjEraxvj4fyU8f2mxzY7M9nLRwGgDw4uxRH4bu28t8XKlefT1zY5gkV4jQiCpMBEcNkLDHNMeXpMMm/0y7PmUJ3SCMhXcyqa6oLC98UKS9keEvdqe58Dl1+dA7j8nxVRXHiCccgIG/IPp6vRBNrTPDzH+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCEwAL4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCEwAL4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD792C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718552302;
	bh=4lnunlUsr1arSv2W/9oAZG8+za+9Xbf2EZv5WPplWYY=;
	h=To:Subject:From:Date:From;
	b=TCEwAL4V01Y5h+h2sJ1CAzr385989Q3aH9DB+bDSBbXVAiGzYWtX6RNZsEv5wmqJ7
	 qLrSO2T0cIMnIdk6TDZMLFcknJbISCd7pA9REG2CU2yYoMrACIA+R244FLJwmh+TTl
	 PBJRywbbEtvXm+fpBfxyXfNFaPg6VSO/d3lrdVuM/XCeu0RmeEVJqAs5KxTGC/7e9L
	 BZ0z31+zyCZ5pamYIF82yma7GNRXU2CbeEZD73K4orsgbncD++vJxmXkwpwmY6w3vb
	 NQdNwmBHdRiPzaF6hmPrPJGjh9A0+kDlfmKZEntjjXejqIY6todO4T6HFLSwomRX1c
	 GwERMvLsVbccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05CAC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855230277.21060.15476412742266123836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8daf4120b5e5a36e83ccd83520ed21f8c7fe9a19fe9a07d8b96e3e0263515415
Date: Sun, 16 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718552302
