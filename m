Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681344F5F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713414563; cv=none; b=KVwthUNkEGBsuDdi8hHpbs1Pg70U7tfSkItA+O8SesmajUsilPBvloknjyDcUm6cFxDZttUj7emPEqnY1Ho6LRR2jytTDwWloTtyzEaKpH6ulu9dqpR/qs+FARXTMQwPgiv0t6WI1nMyOA9mw2K+PrXSM2mVwFZGxkURbIxve7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713414563; c=relaxed/simple;
	bh=XsFauQ4TSIkNY5MeULoqlhlXJLUDJrOmG+yG92kjxtU=;
	h=To:Subject:From:Message-Id:Date; b=oMOOMitHx3+E94Yh5kzfPLa18CBw4qgJgeEF3bZjFmkczSlxRitTrayuSR1RaBHnSw4VRuuFvy7t+KrlFtgd3bCWt42M/9e2RXOqkPj8ethpQYio7VZu6PJ3ea06BY+BuXm3uMQNnU7m5LsGuPrzTEpZD8qi0ePeCwnAkryGQgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxxnO/A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxxnO/A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4725C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713414562;
	bh=XsFauQ4TSIkNY5MeULoqlhlXJLUDJrOmG+yG92kjxtU=;
	h=To:Subject:From:Date:From;
	b=pxxnO/A3P4HH3EfaX5C5SvEJ8hebAeAkXP9FFea882cBXEheokwYxs94q5u9CqIm9
	 ZNSwcSJXi6a+qjGjQD57yt/VrBuAOmzYhUPdgJsba83u5YSHhPRRSGd195v+TepYHb
	 HnT2E7H9TxyEAhoZ3wuuUDWgZTzVAjZmjqBejAPUB5UjO6ptKrHCvlQhCu8kEWQ14P
	 x7Bv4NLBTEKwth1PnjSYQy9OKd7BpEoGNiErUbbigmfABAxY0Oqhi1VylrnnVWz+xt
	 0AKsk53M9M2sGFLgfCzg95CfhT+2bNZiaH1pWnZA0F9iHJ0RhT3MFFsZZ7dp9Y0Njk
	 RzN4/VIQS4njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9091C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341456281.18946.18008711244018303530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdf62011ef93f5899280184b020a7481396c0f5b0d150359b81a50fe766cc93
Date: Thu, 18 Apr 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713414562
