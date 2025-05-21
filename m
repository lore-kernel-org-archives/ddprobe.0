Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44F2356B1
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747810194; cv=none; b=BqmvV2SISmVwaeimpdqsfP39ei8hvPpEaUP/vM8wYrxw+RudmQkcuWe8lVzx0qX+uys3HhyO2ERgvXuoI5wVh9CM3zCxoe8WkVKgy5W3uc7LrBCaM95jrf+gPuOjcMGS+F4604MPQHRTFbVPxFwMXloZkQJobwJqUFUbbxX2juw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747810194; c=relaxed/simple;
	bh=yr8VZOIxMDJYGP0amH9pPZcMEFaIcrA8l1QNdKIHg0Q=;
	h=To:Subject:From:Message-Id:Date; b=SuFLdyD4q85tIgarOI4uG34+DRC2gHK/xsHljC/JncKxYEElysBGkVb2JgDkMntGXMq80Zj+BB2bAQxfbLIXFAhsm61Lr8fbRTHK+j5izOPMAQb6B1Mv3XNNir2IekFUaiJ6zDUzX6Jw8KD2rQ7lb6vQNscoivJVgW1iXog53is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nya7DS/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nya7DS/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747810193;
	bh=yr8VZOIxMDJYGP0amH9pPZcMEFaIcrA8l1QNdKIHg0Q=;
	h=To:Subject:From:Date:From;
	b=nya7DS/WhZ68zKQzeX6diUYs1dE53l1C0Bn17AdevCjnzuXTh/fZ4ZGBEjJJIRMDU
	 lr2TmOhiAj6rDXLez4zL0f66iwaFWDtslV7s7h4Sd0mMW3WeJb7QUGuqlzhdjqrFOJ
	 TiV1whHsnZqa2Oov6bm5jvsJ5EVp7vN/o/PGxkvtZz+2rvg3CVEYkV32dOrAcrGONr
	 gQV+RvEN+2L85dPn8QwmcJhgGuSYptoc5WvWbNs71LGabmcmKFM6R0VtUuu5n0oOpj
	 rTKpfxji9mtmA4c+BwhOybTbRzymXmErWQdE/XWKKvI5/g1ADq8ONho9BJSceTQyWF
	 pkKB50he/STtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C6C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781019358.5987.16502879163259368906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88e2e99e9b2f37955d3358e4f6e80d970a749462c2f14c72ff1658f7d19aa55
Date: Wed, 21 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747810193
