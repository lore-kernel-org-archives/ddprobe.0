Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16292274B51
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766309034; cv=none; b=jdWDii5k9lDfrK0rrNuvvmuJnG/TXeSNW0L94A8Aapr/A3dDM48lexlapJzA06U3Wadcvopr4lPkby2xJwVMEIs9LeXZLaoQopIjWARa9PuelATopHhE0C18alQuK3RKczbp567KoEaMLb4yb4p07bMWKXNwh/mZCbXBG8/4lZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766309034; c=relaxed/simple;
	bh=0QrgSV8WI/UhDHdAgPs0Gg0m5UzgOgAlGttoV/xo/k8=;
	h=To:Subject:From:Message-Id:Date; b=KJqo9we096C4VBVsbgp0pcEvVGmF1fvJ/G6H8GkfD+XqEcp2Noic1KrXt+jUPl3zlTnXivpeBiXXcHECXYqPNRE90EZ6o43dKm0apMv3XCwXpO9QkWZpYKfGi6NIifLAmHSkQWZPkTRHMxgHNvNVXl/uOKUKCMeJGugdqHS/JL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/fzm6t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/fzm6t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766309033;
	bh=0QrgSV8WI/UhDHdAgPs0Gg0m5UzgOgAlGttoV/xo/k8=;
	h=To:Subject:From:Date:From;
	b=i/fzm6t13+hxtSXQt0plWP2d0kQY/CK/cFE9QZ6v+EHoTsVsfxKbse0VBQhWy6AmG
	 m0lWp0ChG9YYOGORL0gzN1Fr+7uEoc6zifLw6wVN3fiMvmS2DPBQprIHHbZ2x5hmix
	 DMUjAF1kroXv5Yjo9kMVkuWp3e35ynesagZ5elfmEDGV5ktIpTnMU5Zly38fctq90r
	 2F5xurMEkEjVU7G1MSwpcLbqltYlczh3eIblzgEr68i6Lq3PekAMEiVwLdr8qqWUEO
	 Bw7xZbmSTEHqnYtmFBoOSPysErW1VpzkF3pVEV/25hVWVfktmQN0UrsaXKmXESkxVl
	 6SfGs0ccPO4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006CE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630903358.21377.10607235686580217925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac41f4c3524997937108de36bca25bc632ccbedadf09d2c20eb2232a4a4b719
Date: Sun, 21 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766309033
