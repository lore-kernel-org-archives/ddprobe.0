Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55B17A309
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752727194; cv=none; b=Mbr32bVWhipGlU6TzeJcoeV2mycmxvOIRM0l6pirgm7yYStQ+Cm6DYdNvTbhhL3pIFMzJPEOCPxZiGxjjLr6LI815AWMABur3RfHpN6zsAiqAecA1zQcxkie1/wIOnxtJoTrVQzG8Dvetc6NHfjEd02p96we09RfP0cZi0XmfIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752727194; c=relaxed/simple;
	bh=jRQHn2pE8/JRuK+K9HPi2sbI6K+oUazhRjdOMsZ+crA=;
	h=To:Subject:From:Message-Id:Date; b=d0SkHRVKTdX5jt9fqeGFVKzZKIP+75VFO8WtcaWsLtFdMIC5Eynx1DE0kGhDTD1YlbOYqEAd34Rr0w255u90ZGG+ZxlpmSre4yOVG63fcHcEWTFJKy3jWs2Od/sf+mVkd7yzwPyvCgBhMufWJ7uWxT200N5jtzBMug3dATFHzc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzHSb4tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzHSb4tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752727193;
	bh=jRQHn2pE8/JRuK+K9HPi2sbI6K+oUazhRjdOMsZ+crA=;
	h=To:Subject:From:Date:From;
	b=YzHSb4tvKhc/t2Tvta0OloUPxEsd/W10BKa+d0mjeCDTIPonmKO0hj/lZ6XAHNP+r
	 HFEA/gvPS6Mm7dyeXRGg2ls9x0teVeYDurZuREKWZPKe21A+Rop/7GJgag9Rw/y9sZ
	 1SIltQ28pYDboJzcqtsTG0nGFKp7vR5S9WIE8R07uSlzWVRBtB3XUVPeAL6dpsIgzL
	 vEYZWMkO5wwJiMwUMD/sQk85nhWjLjhi9vYr/adAqLCDdrD/Oyi4NHQNOX+SPKzrSC
	 bzncVbMVWFD258QWt/wbHaoHAQknxXRkDH9+l35EjDlB255sCekfppYrDe6IRZ7wel
	 p9ZiUqPRiLnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FFC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272719357.15400.7983696225601707164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3324a3b917e436737dfb8087fff2d77bbe5b1b829e1fe04a11c88f6934bbe13
Date: Thu, 17 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752727193
