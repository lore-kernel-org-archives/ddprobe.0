Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475951898ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740387534; cv=none; b=kCD2COWR9pfeBY/rgXPoIFGcaAHVpyVupshW9DJUr/D2othaOqKSsJ6YGQ8LWR8Aq98i2MJMya7V1uBuHU61X6/d4Abo8axtIEGj3DnYyiTN9MjjO4saBjuUjKWmf32acTRrcRz5pkAiI+9+eM19/WK2tQxpW7eIWRmDLvHMJW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740387534; c=relaxed/simple;
	bh=2ImbnAOXc9bdsGaXgPB3m+u7uYUDkMFvsLJyEcZ8fho=;
	h=To:Subject:From:Message-Id:Date; b=aJQiboFSh6mySlcaQ9jWJLis24fkNEoKKoHEehjaHKRsRXAKiFVNGBnbsaULICAZpQjwm3MAfyICRMERsMDoW7Y9m3THxGTYr5XHw/C/6JfzkEFRw7qFSDEKj2B3Sn8uK7X0+C3D+VAwc0QjWiJAVc7gbDVRUDU+BnXpYffjQz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpPXUKod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpPXUKod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0969C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740387533;
	bh=2ImbnAOXc9bdsGaXgPB3m+u7uYUDkMFvsLJyEcZ8fho=;
	h=To:Subject:From:Date:From;
	b=IpPXUKod4qJpsAndmNwhs7rxC0yEcT12h8rWLum5KtsC2IgIVob4pGifHx5/4TbnU
	 pv73ChIbA/+R5jziaREyYaqRIKjl3fJ61SB15SBhEyiUffzZdzvKT9dZ7capz28DDw
	 Vgne1eEOeLlSBQhQo9X2cFllAUWtvKG2fKqk61PxXnI8j9RtaXJi1lXr61aPjaDnaV
	 fBpYZCW8NwMZMgcCfnbmy9ES59P7NotsU6icNvuCDYD9L6HHjcdKP4NvksZHdzqs/p
	 f/+gHNp7yhDp4XwleRAgd3xEiKtgi6kjYHic33Z0q2Xs5oCMqrTBKv4n/fMabl13gg
	 DTVqSQUQG5QPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1A1C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174038753362.26740.11644465321486694865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf663a928734d8a1661c986140e0e69ff61b22521c524fc25028d315f46a8a0
Date: Mon, 24 Feb 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740387533
