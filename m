Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167F7325492
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771533894; cv=none; b=Zs6zk9CamrZralXjewWFNqadP+2nlZaJmlCcicf7Gtti210XSalcYrm+k7VV3HJ4CNuDSxzwfoKeqbq/bkdVcF4ULg7asNRS9JoFl+v5jpviT9it+n8yclmt70XAqYHTGYubjJ+8PZQNzC+cPV5c3ob1bs5qPbw/nykr7FcnGNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771533894; c=relaxed/simple;
	bh=te1sFZUNDQI9e7h4bOZiCHim/OTBUKrTS9QkP6jANHo=;
	h=To:Subject:From:Message-Id:Date; b=vBygsXx7rErXb7DLGUKZ8fcq3s6phpv9Px9NHodUpz4FFz+Bdl2R7ALbfoISvm/dXSW6TsnEbMxigeo3VmJkqjRLkQcexAP07MczNHoDgSQfAHIh4XExXAOUtZq26TisojpRydhcn2gVSon5okoIqksoOYa5SBvP/EB4MV+qsDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFQWRSlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFQWRSlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECBC19423
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771533893;
	bh=te1sFZUNDQI9e7h4bOZiCHim/OTBUKrTS9QkP6jANHo=;
	h=To:Subject:From:Date:From;
	b=jFQWRSloCypBezRYXWORIDKbuA5PoMJaCsEPiqDH0ux9s4w5bthY5r9VHWJxGHi6z
	 1ht15DddDM1288dGdYdXuozqKDiOU5X7qLhLxMvB1CIGtGVNOHqxzjPAuDDuyJJ6k0
	 jEfArL5QcZvfJPUTQHz72acSBYqfbRfu8veCxKpPCFoi8S4ncM7Qar12E1A4A/Eq/w
	 WGG1Rua2cVPPkyYdgOGhYikoymTvYf+TJzNy2p386MOwtV2relMGa45IeYYq7HSa6m
	 vt+iSOoMo8PlGq4TAdW3DR+KvRvV1APNMvI4ZNzPfdkFMMpFMOHO0hwiSH/p6r/ylw
	 ++sHFMCiyMEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236CC531CC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153389359.28998.12008310069396915398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a459a8103d75c797927c2cbf4379784c6f46e64923d6ad43cd9f6cd769f11c
Date: Thu, 19 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771533893
