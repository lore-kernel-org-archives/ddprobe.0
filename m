Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133951F75A6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769245434; cv=none; b=KD3VCA3zeZJtJVDJ2MJTFLW63IhoJvqShbgLV0jKQHBamlZfgHbMPGdSYKWvklac0QJkllWZFIcqtf5Xg2vqznZbyFMvjJRuSREo3dPfAzBvk6fdKwQG6NnqNkOq4L+stovKGo4OKtZE9lXBIeGVa4VSmXbkdvuEqgrZRre3irw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769245434; c=relaxed/simple;
	bh=Jilf6A1EgFNnbevRuD3YVEAGWwtJzX3Cbr3bMA0P4Cs=;
	h=To:Subject:From:Message-Id:Date; b=RdMsrlCU3ggFLNg5qHo/XqcEIL0PZInnOH70sccsuxbuetzU3gGwMFzqwwk1iU3r/6/75BQbzcA5AOvFAkKOY6IK2R9bngOfeHl3bGeT1fQLwvRfvSDyZlCW1RP1AA7swmRxXYVy/lxVJYmp18s3fHSpL3cHnNTESJaUlvqDJcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxPFa620; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxPFa620"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769245433;
	bh=Jilf6A1EgFNnbevRuD3YVEAGWwtJzX3Cbr3bMA0P4Cs=;
	h=To:Subject:From:Date:From;
	b=bxPFa620EMmP6RwLw+F1qTeMlKPGSnZv3z8kGRYyimcZ03pK/bVLp/tiPv7dXfVJP
	 pZi5AipfVq4TA9D6vIl4f3qfJ+e4ptN+cCccINWBh3LEWaWDotcQ0ZSTOn28KPzKDQ
	 Mkb+6FdQc/yrhfqZ7XwcIC+/m8tDYoM3PNv963rERN3wVDSOEu9s4ov+PTKI+MDknW
	 QuCZFrdnWu/PWgoazq7ShWjg6S6qtuTElkSXpSG/tLExa2X8EFomFCdAUE+n4YKLKX
	 BZVMjkBiczEwyDO38rV2gLU6O+n3piSrA9tuN3tXL6IsSFLAPMeHSLMbmHmplgZDaG
	 3Jecg5B95oFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F005D715D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924543357.15220.4086162277527011613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6009d384af32bee320ba72469b91cd511943e0f038330816b8731a8c46fd1ebb
Date: Sat, 24 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769245433
