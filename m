Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8AA3E9F8E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791087034; cv=none; b=QIUBzf3PLfhaEAyq285taUipte/nPvWie4wqti32Ubpt6QYmZySjQAOSHlyRkPClsnGUpz9Q1xHR9+Auvx5b8VYrZ5yfT5nCtP+SYKS1CBZ0oWP++B1ZdYJGkWCbsNErlHB/iup5T6Xx9uvgwqFOZksJdlAC07J2XkSCDZmFaG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791087034; c=relaxed/simple;
	bh=mQgQ+4gDGq5qHXNJcKX0MvlXr8NwUyFSY8UogUkLBX8=;
	h=To:Subject:From:Message-Id:Date; b=hiSMj/WEcL55Gdy0VJt7yT2Ix/mJB9JoY0IsRjd2O4h0cX2s9tjHrgM1kRifq+V8sf1O6+w/N+Vx1o+g3rIWdduwBdWVoMXwZbW6dK8SJLrah4y18H4vxN2NDr2bRT608oOx/+AvT6OAPYMZnMab+l+yxS2OtjxHjypTM6DHroM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wspb3k4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wspb3k4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD959C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791087033;
	bh=mQgQ+4gDGq5qHXNJcKX0MvlXr8NwUyFSY8UogUkLBX8=;
	h=To:Subject:From:Date:From;
	b=Wspb3k4eymMYLu+/ngjQB5glhr3mI7AxPWCDS29GG0BiYue6nK49lyVydFaYUSX1p
	 WnD/NraaKOjroOjngv54utOEGiLHCALXwXuue+Ipvx71g2ZprGwKO7G427H7wtdB1F
	 s87LVLwuRgHihI2F0m9UOX9MN4zpMxvEtPSt6XgqaV64MqqrL+st6C8d4iwN17Pfvy
	 lWnIBrLvC4ozFU3DaW4FnX7aHWj0GByhIsObf35mpxLAGjBDe7WTVwXbSkc/94rW91
	 8p8I9zjctXJ58a9mGpqz3DguE/44qY+KRmRYLEek+Sya8WvyPVyGj7bdmhrCJJVphY
	 ytXyGAvEdwWXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC345CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108703369.16107.5126339747810776204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04a1c0ff3ccd1f9b4dd9a679ed4fc6897f138318dd38aa3ac77c34d51ae6530
Date: Sun, 04 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791087033
