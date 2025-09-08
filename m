Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F263126BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757357394; cv=none; b=qrgaxuhgk1WOaFfwB8rpd9feZ4U8CHHh8eSiYQTwcjXY8KJPVJSWKC6EDvt3F6u04lN8V34/KPMaLdG9MZP7EJJ6HST2GbJGPNcY8nt7yU27+ExlyjlEeN3TeVKz+ec8lmPHh6oomQ/OjPHCfu/LK5QWM2BWmAkehLPo3YHmXo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757357394; c=relaxed/simple;
	bh=+MDxPODZ5jhvK1W0R3jEkuKxp/qets+Bp5dwTTqTMYk=;
	h=To:Subject:From:Message-Id:Date; b=VHOgmbIaZEfGMCMslQgHVMXQPdWVlRwgmuvOSYuRwS3h95eSYWSZQOE3CPu5DFKnsqyIk88PS1VQy9oVTGTsXfWIew9grJjxlpTu3zOC5lUyIF/rJKuGC+LRfsUtTE225UehwOpipVjJfpNKmRAZ1MeZD0wBLZ1PxvLijElMi00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxaoQwFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxaoQwFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0563C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757357393;
	bh=+MDxPODZ5jhvK1W0R3jEkuKxp/qets+Bp5dwTTqTMYk=;
	h=To:Subject:From:Date:From;
	b=WxaoQwFGDJEV0FexsByafRBX/CYMaQgyi3UOov1UUEqEQsWr//KdyLQz0AW3dwrTP
	 6v1fHV1/76IXp/n6+QQwAFIEkNPVRdWV2vfYqtkqXFSMA5Oova9P8u0B0pVuBR0rWE
	 q4836mnXPoPkDHr8NAABFAF4WwlwdjKJUbepqINio+c7Wpae9xqQpxu+16hzkNyHkk
	 ic32NBkIrNXE7fWYeKUxz7tCwPporj3cK3hHVh8pHEyY+/gizjVi7bGENlnOYjZFn6
	 skhcvqpFYToixkX7SpCDKzAeRre8VsJrK+P7GGHJIkpWNPCibHVGQXDYnR0Gy+BivQ
	 UVSTVmPHShvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D7CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735739357.16892.426035643684920565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a222a3a777f49c20ec76dbcff765a5e1bc945134575bce14a15c4f20eb46d6
Date: Mon, 08 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757357393
