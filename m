Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED5136358
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751704194; cv=none; b=mtFvTMSdyjbpqfEVbDIzac+r6YIhjxGUMpIf/hYMz6uairqLcE22y4HyD/cC15PQ3B+gXRe0yh5bten1ZzgGmqp2VPyESmQ3k+3oaCOG9i3oSWHJp5tqZ4ayUeBPEeljdWWIeXwvV0Oza3LPODJAeyjwjaYSCuNOsb80hTKemog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751704194; c=relaxed/simple;
	bh=X/fua+HDh7n7nAjsWtUvLqOUndaWdi1Mq7ZliegLfCI=;
	h=To:Subject:From:Message-Id:Date; b=rWCmWjhpwGPNIsPhfjc+c6BkW6Z+rzlr0Usj6aYNh86WRod7bQZJoEWtU7z0NBd+lk6CYbsl/W/R07G15Anqeu4qBOXsOgfRRRkoXSkUgS9VcX4gyL2ffGzuXa+0m4cycyMDZkvRIlM5Clxc8/LtPMqA3WQtn09y3rHz96P7yxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvvgChVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvvgChVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751704193;
	bh=X/fua+HDh7n7nAjsWtUvLqOUndaWdi1Mq7ZliegLfCI=;
	h=To:Subject:From:Date:From;
	b=fvvgChVGqULFe3VkUQXoWV8YZ/PiHPXWr/vFhJ7T7dpCd6Mz5wj2KCYY5kkE7E3OQ
	 ZqmrHcz0NZjUuUsZF0S6BNNT7JsgIFeiPos9gjFNemFz4YIDn4YT3qQD/XY7rmzGyK
	 O8chIEhxBOb5vetw0j3KoiVbhTNRygWDi4CFMNQST6qC/hSDdf/ajrfWdssftwynbr
	 aTOXmf4ixU4Ar7P+3LNxNLK4uK8e17f9g0MupkNa6CsTyDmd60i59XR/gHAkxi2SzG
	 zerkRYZ2B1xtA86Wv4TVpJPvUZQ/4bfgHYBP09le92DKNlh1Rx1SLseNy7RK9ruCNS
	 n2AvrDkXs7Sag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFEC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170419357.9034.8836355527165360532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3690dab8d3fe3a07eec60f18671fbc2358e2e14558b2488c8370bcb1498680a2
Date: Sat, 05 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751704193
