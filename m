Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A8299ABF
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757578794; cv=none; b=gYJgp7GFTnHCQ+tbAfUlk5E8cv/DJ7sZkexRGNQQImuOKpTH3B/fyZjBTJ+Rgl8jvAONi+PEBIMsIQnt2n8RASAH5ghyYqIQ+Ou7+LYOUduitQSloRqATdsL6eSK/P9deRynuDJRu4fGWfrcInJ9M0GK+3tC1McdY7VGimNwHn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757578794; c=relaxed/simple;
	bh=G8kVn6GE0gjPnWnst4HJ/eZJ8Wa87FHigAxUtiZhWz0=;
	h=To:Subject:From:Message-Id:Date; b=eeDjdkdhtXz0wJp2IQWfx7A77HdHDDPkNMfpL3WphYgzw8GxQOZJQqgv/1jmwpRTOsq8nlSGXv2sT6avchhSoLqP8p3qBXo21yuwU2lIdH/N/6uhUoVt6Dm5Dhr8Z6pMioaAELtharYXAoWuT9+zhjk6ghEXJEci/A9nAdb0Xoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y92aEesC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y92aEesC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09B1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757578793;
	bh=G8kVn6GE0gjPnWnst4HJ/eZJ8Wa87FHigAxUtiZhWz0=;
	h=To:Subject:From:Date:From;
	b=Y92aEesC11BZ8AFK8lzd1RoTZRu5ggJzLC96g3995T6xR8Lii+0XuVVtXkUpItEak
	 eMMBcKXKEKEkXoQXIknlW/m83upf5DI+Yb66ALkiG5SPxNr0TVEgc6y2ZddSYMZ2Of
	 Ng3PeRsNch4nBy0ONRoLjLNgFeuozz96uTu9ITPuAdre+LeDU0OQr4qUk9ycrn0WJP
	 Hf8QRuTcbwnAWH297Una2S/hmdayWlWw3lAlQQP9u4Vyp+ZIhH8C4iqQbrZcNaXdrG
	 2ltcUvFMxv8Iz1P/7NZK01gAjHecRQ+3fw+X9t46QntbZvRDZWjp5B+rj3hofvyCR4
	 zu8Rm4N0P4aGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA0CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757879358.6379.10686399107589154112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ace81ef13e1cd48cb73de4a0736dabc504f8df3909241469b0421a7b2121f37
Date: Thu, 11 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757578793
