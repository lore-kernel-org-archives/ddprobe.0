Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386E840DFC2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776563254; cv=none; b=aIWkn0Op6wvcXIZf2SFfToYSxxbEUIfgLuNgDSXnF0kNuJdlosSt8JX8ZzFH/+I69+uHw4T+GOHDlAyNxrxAkb4Y20w6UCIH1TiNuTDbLajCj7lMg/YPnDQsSVlchfEDhRFrScuhOiyoiyJZ2j8jG/xey49TPtgFlEd9Q2ebS6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776563254; c=relaxed/simple;
	bh=DmSWpkgrLRHpruHSQMkZgOzmB6Dvjq1F/cbHk7Grg/w=;
	h=To:Subject:From:Message-Id:Date; b=ZQOeXHJ+4IGULxwOA0NoD/avrDMzmL7iXmRNwr1ucFmAmukGkEr1zMXN+evuT1SYhdSB04YRtvb6Jk6mhrPFt8Y2uBIneiH8vI8NeWiEVjtMxVRG1Bs+zWK4LIyWX+kRhrXqsSxjVNQVRj+ynH+ZK/aihm3lklVDSMoeFvgyoqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRD1tS2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRD1tS2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1113C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776563253;
	bh=DmSWpkgrLRHpruHSQMkZgOzmB6Dvjq1F/cbHk7Grg/w=;
	h=To:Subject:From:Date:From;
	b=tRD1tS2hVOPfmQgzCzbdOWxbOg4w129QvHCFOVhzfEJC6zLfSmZJUzwYUbgCLXRKe
	 eZMf86o3Laj9os0tsxOHWLckRuKEYJDc1EfAnvLM3pJbvQTAL8eHIGE6Esf+HXXPRx
	 MPC5czj1rEknJxDyAiBIk6Eqr9fdKgbQi8vR+X2o3QTii5c/DAo/S/HkCh5c3I3j8Q
	 RKoeEbFcO6NTBxepeRnDmPoOXisFsoR4bzP8MEYnOrdpf8EdAvvCr1M85POXWbvMop
	 /aTDaVU7NTGR6fHaVCKjDrCn7LMOKA6+ieWJFhf9YruvKDyNRvefflQJb5jlF25oNJ
	 hxMIgFB7HRIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE8F99C95
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656325368.17346.717065102479346794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d970b428774cf089889ac6a5a1f1bee2ed3fe5d89ae58c540efc98a2c1af5e3
Date: Sun, 19 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776563253
