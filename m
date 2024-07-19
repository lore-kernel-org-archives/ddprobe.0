Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41966184D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721355354; cv=none; b=La+NHALztHlBuI2Nn4Gn2RZZq6XRvBFHYSEk4d8/aurjKmX8iHpJgJ3sZwiLu1hPPfsNBp4cp9KFkFZTa4BSmlB963KTo0DVBqreZrZxgnEgE4yVx1djyUCliDowuy0zUB4GrgePyB/ZPvYEzSEHAfqF2jtJTg8RIegP3CsjNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721355354; c=relaxed/simple;
	bh=6Ql6k9ylMXbOqraUpXknt35irdOH7pvQksgX8BW5kxs=;
	h=To:Subject:From:Message-Id:Date; b=Zr3PuSbD8Py8XRrKd+Ji2pM3NtifOTE7y6v+KIu4cKTHWrzvIHMj7it4fmGetTu7QBXTOrCjp5MNywdLKW9kKPtedeZ+DPvoe7MyABtV7GNWNxewptcSoqR1ePZvfJFWYdfMXM7ud+BkWwJC3x71x0B1cqYgqBJqllc/QBeAh5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn/dvjpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn/dvjpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F4EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721355353;
	bh=6Ql6k9ylMXbOqraUpXknt35irdOH7pvQksgX8BW5kxs=;
	h=To:Subject:From:Date:From;
	b=rn/dvjpQkzYCaj8Qh/mwCO9RpOXbeoV7SoFZDT5lgWzr3FFdYzcYTz6dG+OOdK1r5
	 KwbCWzNEfnfQ8PQ/vsenYS+cpJ1xnRQ+AHbRZIMcAAmw09lM0NWaV+3Fv6bHuvbe8p
	 kL0odDq4T4lrQNVhm93I5NOfGCPC0akNEW+TWWNMDrXQso2T3yKYSAbt6gRZJBITtT
	 gZBiuvL0qH43CsggGS9j7tUalA0/k9Q2YTP2FFAoG55iwEhusdFoIipbr+ExdPNp06
	 HE+5+92oyioa0M8VvFcOMhHby3SuKl+W0l1JQFkor2aEzbCJxX0qGjB3wMBwMePilY
	 IgxxP5IivIgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A6C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135535366.20927.8029314927363652573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87ba44d56150c4f36e08b99c36b4b76ecd2bfedf9f9f1e7793beaa1316cf483
Date: Fri, 19 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721355353
