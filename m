Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C971F92A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743563994; cv=none; b=UlbOiM04bD4ietP8ziwTYs13BsM2o/58BYgtBu4YhkWS9yty240+8AKpAw1PIGoBfOMOiG+b2f/JgnQTSwPo7/4GQpwZF+fdgtDT379Odq+IBg2S2Z3cN/aTKeQYzsPQoCKdKiRACA3gmRfl1HDON7lGVGPBwnsbeyHcpaJv5Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743563994; c=relaxed/simple;
	bh=EvZRn6MXvFfVicFup4qutI/0azTk3wmXdWm+xI7k6pA=;
	h=To:Subject:From:Message-Id:Date; b=MOtuBYyvbPdt7Fcokv2UBvC4PjLNwzFDnm35+4cG2AqGG+LCWUs4UkGYxYbBRJv43vJZd7MmTKZ11jh5j71X4bkMHG9KrDpOd+x1MJCJm28cNpJWuK3DsDwVnaa7/2s8PvTMRD6+kT+fbX6sUdA+02uhK6APhWXkdutgdm8Hqdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF0rhx/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF0rhx/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18ADC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743563993;
	bh=EvZRn6MXvFfVicFup4qutI/0azTk3wmXdWm+xI7k6pA=;
	h=To:Subject:From:Date:From;
	b=hF0rhx/U12l+AvsclgRlN1RyqG+zXzUypcjCYxLfZwL2CVuWqDvKudyL94ZscNJj4
	 C50poFH6Y45KIGONxEeMwS7vPS8VzgtnQLe91gNj2YhJT6HilbJmU/BxV8YRf0M8M5
	 hU6D4z8Xe1Z9yoljblik+fKz9YtaCFws6mkHqKTJ/sDDN+w7TjYlHTFaWR2P+jFCxi
	 VBQMQvEvlz1fjKzIcTruwDyyvnjhPNKBOHq5Xgpp8SejYIm0iQa6GsWMWcQ3nfGjXm
	 /lzs8A4SOXQbtLadeKmARlAxUfYbdk1GeYfHGcuLnPULPyDQKyDQNZszjyxf8k2dRX
	 qaAOP9OYwPOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987CDC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356399361.20006.13799959777536566092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6532262ad3ed6be0192c38dd4d59586cde9c63e110866a4951bbc5893c845be3
Date: Wed, 02 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743563993
