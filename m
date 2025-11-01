Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E90F50F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762024194; cv=none; b=gDZkYmJcRyuL7+jYQLiOD/xmIN3MvACqQiT4RVQzF5MSrbIkP4eYcSTxLHO/Q7MhmbYijBTOMRgZ8tZ4SA0q27+bw32S1fXijq4FWPOTisdB7T07HbP8+Jrkj8LZm6MP1ri8QSY3CUswZ4ge6H/lk1MNS+gRUqrNXyvXV1C1I0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762024194; c=relaxed/simple;
	bh=PAKVuxV37nWpWOgVz1XM+gOw1mWAAkr6kWKaGoaF7Bg=;
	h=To:Subject:From:Message-Id:Date; b=PwBx+6KcaHECcT+E1luzWxG1Ie2U7Lj7V+R4uOgBAITrwVYZsSr6XJCJJPMRpGNIM1AEsCkO9dHVYP3/YgsaEaHO0UYmJ8EieTlX4xGQucjX1N0OwDeNPyNxH6pwvRCHg82Q35a9i+PyESlYt2dAVW3afkcr3b5MNaTr09OhE1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ1lJKkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ1lJKkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A28C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762024193;
	bh=PAKVuxV37nWpWOgVz1XM+gOw1mWAAkr6kWKaGoaF7Bg=;
	h=To:Subject:From:Date:From;
	b=PZ1lJKkr7OMC4j6u+PgXcRW/LdsFMfkxE+u1Y/SIxuRx0cyjveXSB3vDNjsrujcL8
	 zasfHK6ContPTaJ90CSL1+BctumuC6PAhyVAOcU4qb0fEmKGrMUlemrsEcMH8epg2G
	 5W5KwHs2LtrlnpqFKHTKu3CaI1eX9bLUKSZfmzniMuGSj7+P6Kc2wVIBTBsjJ1yfU4
	 8i5deNY44M1c48ppvp4b3qGtlO4dkHd5f5iu78hrRe2d0qeieeKlZaEM733b8Yo4rk
	 +ktB8jEd6rPAnf7i7v9u+H7Dfqc4z4MJvfXEBdUNZTLDdiRfhv7eaCcNuAyuFxFzHz
	 gy0ILQDtmJRfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416ECCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202419357.21595.12337530777314664477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea39c73a564aee8d5c442709fdf79bfb8ad23e83307edf58d329321830f7c95f
Date: Sat, 01 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762024193
