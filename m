Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0E8307492
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029034; cv=none; b=KOLMh5qKXHAm6dCGLmgCspqZlVghwgxKIfdIOU1Bjdlw7KJGT3q6UP4Bun9+SWNk7UDHFB7tzD+9qSOlgcnh6WkqhjrcSl+Zc+R0ac9PfK1nevPVVD2zPRWTFNd5+87XN7atJ4vbVPFvqA9ON/3LwYHJC6byyvpUCbdcKZ8DdEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029034; c=relaxed/simple;
	bh=AU3WsPkI4F0pbffcpsTYeCROFbWiXtBLqWRb1yKnORI=;
	h=To:Subject:From:Message-Id:Date; b=kES9Q3uwRCjA0RhwT0TIXERnSUIshuE51WHwMCZH/gKvuONTlOUsr00BDgSowJNT6d6Pbx0FIBwCvdrY5tXaCjC4heR5nb9pb19f+mbTLudkUBhzJ+j8suoag79/BFt5+AgtPdEt4JMwn4jLNItQQc2pqq7oxTquoLMMGsTbbgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyzpFsny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyzpFsny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E91C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770029033;
	bh=AU3WsPkI4F0pbffcpsTYeCROFbWiXtBLqWRb1yKnORI=;
	h=To:Subject:From:Date:From;
	b=OyzpFsnyqN31955MHstx6B+MYYl7CJryvt55B7lHvgrh6CWYPnmZMueY5WZ3z3nzd
	 oaR/Jlt9SD1L9IFJJbDnvN2YLN6ug/p7hnbZFL+1a4htdqby1qxl6b2T7oGdW+/uLy
	 B3qmW6aLpc+tx1rn/Qc44lWWX9nqbWbAumkfaITJfSj2/CqRCLgKTftEWyucIR2Goo
	 qXExzVUgPre/k/xCN/d/w92MJMG2ETrEwInerPglkGR5Lv3ehf0+yL5jS+DctZuXMd
	 b20xV7fsrXfRJmy5z4nJmS1N9rLYg+ALPoNY/AQXHk/ua/XdTeWguX5IFOWLzq7238
	 l/70opS/adZgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93460E73153
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002903359.17041.11078269215328150823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3c9011653bb700d821ff5f58269c20e1be84cf2aaa3cfd588ae078ef900d2c
Date: Mon, 02 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770029033
