Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326CB1BCA19
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737454554; cv=none; b=bSyVlfaBaQ/dGlbpOOoHPTh7bbnt7FAiHdRg9tW3xwbS4EdY8yod2+lVlEgdHTBcWIEJ6rCYiGydi62hYp/s/BLXprH+V5FeyOF4VA+NUpdujKCpznFRlQNPHGU5r3SQsY0CFNPF+SkrY/uztqDiIPiTCWRSXXu/Cb7qhQBOnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737454554; c=relaxed/simple;
	bh=DzBNC4+6OpnsoKAcXwivmzsqPsaaosJO+b4+fYFC0fk=;
	h=To:Subject:From:Message-Id:Date; b=Bc9l3D+JlOJVGuseVRXylEby0Seqh56SRNjC26N3RZJyoJMU6A6AtvsYcmrdqaeBGP5xTlndz9EmuC6QDydc/DkHr2pM0/TuBwC2vOPfyjkHsJ2R+gq/SYVSmb/7kOvi1O7IcNOBl+opjN5Mze3kuyDbtAMHXIzJ6IHhESTQGt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz14+FmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz14+FmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E94C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737454553;
	bh=DzBNC4+6OpnsoKAcXwivmzsqPsaaosJO+b4+fYFC0fk=;
	h=To:Subject:From:Date:From;
	b=Pz14+FmLwZs0h0AmXhrUgVQX1c6zcNhZu5mNlnkydYp2IJEvyYzoJkCpGSKNNQoM5
	 T/AapoVY490Fe/xN6q9phPnC5gPecyd6ApPPogWxI2Xsp0Qj6k3uSKGrfsfNgd9P2H
	 gc08Vor/Rp9Mc6MAyV5c9iBrpFRJ/wpzrLRuFJ22zOvnnXD84euKZGpQVUrVg3o7V8
	 zlbr0xwwEdNQ9O520uWeyvkaBiR0mOW/5AgAcwpaw+mS3GFF9SMgWKHaZDRVnJ6Azn
	 BfEAR6Z2+3NHXgr9mnV+1Welt08bVPaBPWJ1KRTbBu0vgPH8NjzBZC9/xcGNZHLX0j
	 zmIjqPlfO2Ijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94457C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745455360.13725.16319355324039927317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216ad6ef75191cc773c5af6f4c9d1248f98d19ad74e866fa133d8118f39d3e0d
Date: Tue, 21 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737454553
