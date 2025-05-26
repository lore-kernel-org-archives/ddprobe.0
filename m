Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAB119CD07
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748278794; cv=none; b=OOq8qH4SYAlim52CtFeBEVLojfWLT+O2tTJwaV0hxd9NrtDBoL54SNkBy1bJ0vK0453P5IBCsS0aqn3WvtbiB3IJopP1VqhoCU2wr2LFCySxYgkQN31KsBfIYZoPGytozXJ1YiyBK1eyh8rLfxrA1nYTNAjVOPoxDHYxgKchizI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748278794; c=relaxed/simple;
	bh=1YNORW+Ka0GXHdeP9CGZ5Ja4LtI8OQzDhiP2CVBNLNU=;
	h=To:Subject:From:Message-Id:Date; b=COk5KKO8tBoNoTz9SGXrgA9lj9pB9Hktzs0pBhQf7Ci+Hut0UXDPt6gKXl2MPSmtmn+3F86Ihn5ar144Gzc/NWCliVeMHo1XvTsCBlQa4UIxO5VHZdED473hMbIOGijzaOhUSI9aAwToP/3k+OuELXuKVd1dbBp43hVaugehZ7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTRzwrz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTRzwrz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E3AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748278793;
	bh=1YNORW+Ka0GXHdeP9CGZ5Ja4LtI8OQzDhiP2CVBNLNU=;
	h=To:Subject:From:Date:From;
	b=FTRzwrz/j6FaSeXjMK6Cmke6PGdslLxfluNDoELt0TD2N3sCWcu+h/YyJ5nBavjrh
	 t0Y4Errl1VnjDABa6f+BgiCuxxzCTQ2iFV0L5OmPxOP0hi399Z1Jto4p9rHmveeSyk
	 j8UMdv25vUrrBupKd+VM1PJtAOEg0iSdab9rfUkN5FiOkKax/ZxT5xOTjnLvZ/2C2P
	 OhUcgnCPLMugmknsPj/vVfpMiJX3k5ug2RnbKyHAGosUzo5M/91+kG56IejKAdKAHV
	 eKDWhJoD8csqHgdtkC6gch4J7xlFcFYJbZT57ld4Z3VM8C1YnkHNshcpcvy2nh+t4h
	 JsDVNyu/LrU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AFC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827879357.30198.2942825666790343063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa85724f2b3331764447e8bdfd46716699b0ac7eca2b5f90314f1bf687ac07d
Date: Mon, 26 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748278793
