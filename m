Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9EE1CAAC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789305634; cv=none; b=cGkBG7Cm6cA21DM+0kYdCGmlyo5HOFqfxwm+YFfM53IxDY+TWeLMg/0IppyCQfQOJJ/I+9jbZeEEsmDsmsRtLDsCDkv7A9c9Ixdun8Rv7a824GFlxO73uzID/kMBkb9pToIfyGFBt/ymYvuHYWxmDuHKx+FGmjZY3cc0oU9XjVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789305634; c=relaxed/simple;
	bh=UOX6NTXkAZnPElxenVwpLOxcSjiLLqbKFR/UFz47aRY=;
	h=To:Subject:From:Message-Id:Date; b=sSMnEF8bRrOiYvT0e2bRm3LH5Va54QLUxx3ife520DpGefnj4RMvPZbPyluUW3cHSPn0lqa/NBAtOyYwKw+gtKrOPbQdt49dJ1QgM2UpMz48EfRK6oEEmeDWRnYvAvhhnGYh9QgXhLktb+ObWPNACnFt3Vx1asgud3chN+TMrOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFr/uh/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFr/uh/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD13C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789305633;
	bh=UOX6NTXkAZnPElxenVwpLOxcSjiLLqbKFR/UFz47aRY=;
	h=To:Subject:From:Date:From;
	b=kFr/uh/VLP5E22lHoddSTlMmYQ/0WgA0yujJIpVf6iPRqb7vQ2n/hegQkdjdcE8Bf
	 mnK+OHKZvKWpByKV83gRXZulo5TFzsFoKiIzkyoEodsWR+3UAAvARHSng9JsZ9BKCs
	 A2F+jfc4RtgsHeXdqLThIX2sUZfVgo5swaK3qIwrXx/iZnMNzTb/yeQfLQoE1xZ0U6
	 U72xrmB5x2RgsANvW4GYOsJdOsP0xftdFG4UV+PA9TMJA3SK6NkLQvAU3vm+WORl24
	 H4mDRB4T1NHrW680r2/5oW35oJNySg3dRjCRye3z+SmjZw/O7+MmKRJkvO3G2mTuc4
	 YugyAZt8dTlYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A07C88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930563368.8872.4604946956450121179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c23a3048aa4b658fe77b068456b9c9c1fe72058f3a56ad869c4d091e750382b
Date: Sun, 13 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789305633
