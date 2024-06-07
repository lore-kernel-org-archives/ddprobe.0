Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70324171A4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717732643; cv=none; b=MD6QROix9Zq7CRhSS8ql8barM78BOULHGhTu0N/ZiUHtC3aT8w+qG2cJrjWYBH04uz+1Y5GrTnM/bh699cVRz7h5XMmwNfP0w1aAQTcXk038mas0EZYtmKYMt3hnYmTxUQ2PTYOYYcBzKk2BMF2NQjZv3fjZTeDcCBqtqV9DR4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717732643; c=relaxed/simple;
	bh=ZyfqWjfIlqlpU5H9yHwQB1mkv18b+pc6S+t43The/oU=;
	h=To:Subject:From:Message-Id:Date; b=gJTaGHxjtL45vyjEHG/PNiyqv9CbwEA7P6adCUljHN0KXzaPaaNOA54E5+Hj6l+CQsDy5aoUBb0aamJlI6/0ZO+bcC42Bx123uCLlrm8pJnwDpa80ppo7kcP8xaQ6AoMFs3ujDTqPWoRwkoNvm0RqznOt1PVN7atIfQlzi/Kb4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEkLbacF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEkLbacF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9179C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717732642;
	bh=ZyfqWjfIlqlpU5H9yHwQB1mkv18b+pc6S+t43The/oU=;
	h=To:Subject:From:Date:From;
	b=rEkLbacFkDnyjbswdlydkRVK8dEhjCYCbw7EIFgkxjsAazhOcZFul96iaoVXLVE4u
	 62tqu0gj1qb6TOQsJmZ698vO4E0zEoctXSG1hbEBtML/5So3axz2Sisk1uF1PzDSor
	 nbAoWrXVWAnikcfYe9MYZ/oI9GLBeZbPqIjho9j5fnUqNc1InObC5cgxfKcAuWLVFI
	 ciWrGGHQ9u7QDT3bwpMLHYO3y01KH5u1Pmmihr1e6azKs5T1Pl4H1zKXTgwriH/wPm
	 piVXF0QBvMiKoETKatcKXh+E+xLJ0zbu3Wxffnw7hLm9kiNm+QlJHT7DExHmfWK9RA
	 Aqe/Rm0em9JCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F00C27C65
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773264277.22348.232812542217898447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce139aec0a88d79660db6efa5f17c3270174a33669ba4f3a57621091d23e9d49
Date: Fri, 07 Jun 2024 03:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717732642
