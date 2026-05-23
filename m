Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A588184
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779547954; cv=none; b=f4NsPzaNyQioqSK0NiWiqyp1/1iNQ6+s1QJI4RiJyOBwB1ZiveCkcVOW7RkkUW9DaWO76ZRK//2kZxRuZzX5RBm8CMCfhCvb5YaXf43oZSBs5beAXFpq2C2MCYvN+idIdyebPdtL92sfk/r3lLcQ08F+k1UmdCwfVPdJfn4DCrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779547954; c=relaxed/simple;
	bh=5eNBqAZ3YXfIdUDQlOe7i1Pyge2LJT2DQLUtDIfxRy0=;
	h=To:Subject:From:Message-Id:Date; b=R86kATRKpwHBP7/OMEPJmqVRqHL3hDNQvseuX78FEMeH0dFTv4YCANFfehocbBN63KB40AXkh68skyGe+fEyytlUQWVuVJaOaC8kF98eAGlge86CrWc1Is/DamxvGxBoVHHVB5yi9lEoE9/HXA1HqR8yhm+sGa0vZyiAdOhdCTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfErjuM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfErjuM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64FAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779547953;
	bh=5eNBqAZ3YXfIdUDQlOe7i1Pyge2LJT2DQLUtDIfxRy0=;
	h=To:Subject:From:Date:From;
	b=EfErjuM4Eqzzfvrl3dn3WNgU2A0vQSED7g2wW44auayrRL28I5t0XINxrwYnl19p4
	 0l3A0JDSXvmqRO9EbFylCK/W9/61AuzSD/gVbMaVkCdLsKZ/Cnw8SPBf8rCKOKk0IV
	 j6TPxgJOCogvyN3tPhFw1rNplkyyZxbQ2mcFqqUkQrWT0ljjfufau3F3LkBzIRs/1e
	 cmHzAFYGNRzD5vzF8Hmb0W4T4MGLR6Thz726Drg3ekLTXraw61h6DjgStMODkSVCs+
	 TEoCXakO5duzpnvqVt5F+2rejvzTb3qn0TrFaEqxEBI7CA0XPbkCC5HOPG2ltLfZGR
	 bYLQNy6GgqGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A0CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954795368.26670.13351033761937863737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a7c9bf20ff6bdc8512aff6c077b3249de57a5ede26852bab91a93779911aa0
Date: Sat, 23 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779547953
