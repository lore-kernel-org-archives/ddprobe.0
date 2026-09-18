Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ED14D17A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789732234; cv=none; b=Y2gBJ7wgEMfx+zgLOhCq+Sn79Pmx/07oRsDyiebdKytyynu/Lcfmz6EZzMVNocV6R+6FdcUPpqa1P8uzE49Vw+L5QUhG0Dp02tcFGlVZeQ6mbGXRjJ/euvqTq/DvhqwusgGgqGYzDUvRUUGZ56FqOTXUPSaE5zg/G6DWwjoxGHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789732234; c=relaxed/simple;
	bh=qmQB1Vr29jfNW2Hf/Y3ZaGqgr7JiBxnUFQdfw/bb2t4=;
	h=To:Subject:From:Message-Id:Date; b=VPcKY/KU3OC/tNW94aZ5R/BIjBHurFBTMigVbb6SBAEOUU/abrmKByTq/ZruuxTUKTTHWsudAWxcMn31F0ugcAlsE6dqyGWVv0PMTY/7OAilRa6WW3vzcpDhkj95WCDeHXqPPbeijSW7CXLJo7lgGJNUBxh+NGU1XPanjcKdFJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7kgM/gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7kgM/gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC6AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789732233;
	bh=qmQB1Vr29jfNW2Hf/Y3ZaGqgr7JiBxnUFQdfw/bb2t4=;
	h=To:Subject:From:Date:From;
	b=T7kgM/gSivVZc5HzrNMy1MjZHOX5CdwdBuzyJLQN6gWJhgM9PxM2avJo7EVtW5dmV
	 +1dft80aQCKTfawZscQa4aB3DDy7l1faleGyCSJaf+M5aoWUl1hdaJmyc2Cp4wwtGz
	 RgzWQ72EOiN6i0b7fJybOQE+ypCTEAJ0T4b559rj0xy9ZZbJbX7AoYXnyVyHE3+Dx0
	 RMxp4adVFRIulFS7UfoqL0TC7/ceNcA/mZQUTajpx1qfhL8KCxM6oGen8AmkhHI+TO
	 dE6VqD3LpZjCSvIIuinJimvxzmiiYDgKROWC6DkEUGFVwjSwbvLjzXKrI6IH7CULh/
	 CT2xqB1asnFDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DAC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973223368.1672.6307118016939585007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbde63ebc7ffa651cf8b9f7d049304ab31e04be782e278b5303047d0bd760a25
Date: Fri, 18 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789732233
