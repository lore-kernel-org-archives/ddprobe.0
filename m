Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E3838DD6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724986554; cv=none; b=kS+ZaFPvwtXavZvvBTFSI3YSZYK6xT3DAdfr3LxgxjJS3bu5SQsmRdpQBQW7lC6NDndA3lnf2NSw+VbO2k3/tSy33JzaJrG967WFIH/jXtzRcGOvytbpQPLi+t/OjrIvspUgBU0M4VNw5YLPadHeYqbS+Lnvu3USMqRo61+onIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724986554; c=relaxed/simple;
	bh=YBQU71/yv487hbhBEUzkvxNojclPORUgfibkPNRtFUI=;
	h=To:Subject:From:Message-Id:Date; b=CWNekXK9uphfkrHj+7NWtSYEeqAmbN+yO6MwfzPQ0DJ4C7lWa/hymDaN6XpsmN97ecywq8f+z5OxNam9v15B7AdbndTrdUoL4vgZl8ZxXTwzheNhA03ujrep1e1t64Um/UUjO/CIdXuQF8DIfGJH1/qR69a6hD3/IXyTJkQuTwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nreWAHdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nreWAHdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F4C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724986553;
	bh=YBQU71/yv487hbhBEUzkvxNojclPORUgfibkPNRtFUI=;
	h=To:Subject:From:Date:From;
	b=nreWAHdvSdsohuJVjBkfhy5lFZPR+hmcwR4hBbvePIAPWYO6gM7Bi9q4I78VNa7/D
	 qrmj+fjOW3KN38MydMO/oO6sNch3ct9LJaY1yCyOUKiWOEyRO4iG2F+jwE1ydk62Vc
	 aJ2uQj5I71+rdHOhre0g8OnTGcNWp/UuYMcSX8UE3oV0JS93rNbwvXlsYKooo520cX
	 h2RblQXfKSji0fw+B7yGQUb7g2yTWyEpOyeN1EvBFVF0c88OymmPHoVsTOXrucAqfD
	 cBzMy1JpLO9wqBUPa8jIt3OxOr1KfyN3Mo3f56y7gZApsNGEzJB94REoK/d0/mOed+
	 q1jpOKkHWNk9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B62CA0ED2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498655358.32430.18005849025042978069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30f5fa49b8aa1bf99d73c0d102afe3608757228566fcf3a22d06e5b41b140fb
Date: Fri, 30 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724986553
