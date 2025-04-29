Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36B4213E67
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745950794; cv=none; b=qziq7d7h9kfDb6NbDVsEx5smqRqqCVmMItosLfwRVkAcG6wJDJ4i54rIwetEgTKZnXECsn+oTwSjRVTfVdz/w/GB8wwQjvwGGroboYpITHRpGFxzPSZ0XzkEjBzxa5vud6qIlPR5LsBQbsN1ho+2mUYwWiWsQl6yxAKUjomO+AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745950794; c=relaxed/simple;
	bh=x0kZUQBjJUxviQjpBHoZGOpnJCdqvXoS7uM6jqdCW+U=;
	h=To:Subject:From:Message-Id:Date; b=Pb+i26N9NLrq81kTV/eMIzqIjUw3ZBccSxFH1OElpmDhDqdqh75aIXYvwvpVtEJl/ygT2TaEUaQHLrLAtZ6F+QFuw1iq128mGP6gxHkOzdMPzUUniERJoMdR9XeKVydNimYIYoV+0HKoW/Z6iQm0/GP+Ak/ta/jPQRS6xdds6ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4A6R5fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4A6R5fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7715C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745950793;
	bh=x0kZUQBjJUxviQjpBHoZGOpnJCdqvXoS7uM6jqdCW+U=;
	h=To:Subject:From:Date:From;
	b=T4A6R5fR4plQPjuJ+bbkeqO0IVJZIHbLlT4/jcYQo2O3XFW2fhcIL6hwAqP6wF3po
	 7/v/JCWay1u1FH3Ys7olqq0QNK0cPJWZx+wFn5mMWnMn6oRIFKQRCcxn1Z96raEtg3
	 pdzYs6Oo5XZECG1RZIDUW/bSsSzeeiVd8p3wIQ7NFn42sgiR0sHbZ2jEmQZ145CLqv
	 vKZYkS/8onamQgQoUAzcL4uoIPw9VGoTcPoEl4tMgZ7ANc2r5OsktBF03i1vH0ZO0P
	 jPmdaQIzbXvoN2FEgb4ABLJHP2IDLuVktJRR9eJi6VXZ8jIerCaHIMJAy1VDa25Fec
	 38xSwMod4a38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ECAC3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595079361.17264.2361330461521880027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01866f63ecad002290c0828ed9b53f2e8c5242d34936e71bef7216e70ae915e2
Date: Tue, 29 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745950793
