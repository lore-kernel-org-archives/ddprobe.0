Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA721CAA8A
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739014554; cv=none; b=ZcQPv5VYfPGeY3bujyCSsPObyuE18p3DnYHgZrSEiBJk+u+CQ/yQ79cs0eVRe64v6P/7vBWb+rMPuwxjZgkg38hXVUC6rFtoy3tlj1ampRHAJQHCMAfOqo2FNOskemg7EAdMFscvYooDhDzpzrK30si1UMq+TnFeb6F44oxhwig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739014554; c=relaxed/simple;
	bh=P4k+oEhyHHohHw1p3ZieaWJopkkQ5fSCijzEbV0xC9w=;
	h=To:Subject:From:Message-Id:Date; b=Pu7BdGV0C6NsrzrCc+68yVWGgBG4sKMx7rNfW/gtoTnRsdMw6Nkcydf7H/mh1Pz1Y/Va9CSacqI2iIM+mKB8YUNLm6NO4WxAZqW5k3OUeKPwbF78PctFUdU0SKm2BfbIR6GdmvBVfkjA5ra1J/C30Krg9tibpKOn49PIM6VrB0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNgtZfk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNgtZfk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC78C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739014553;
	bh=P4k+oEhyHHohHw1p3ZieaWJopkkQ5fSCijzEbV0xC9w=;
	h=To:Subject:From:Date:From;
	b=jNgtZfk7TwUTA4RDGHkNZxmUwz30yPMzd2HTelZjxEnpiUkOA+zEYRZJYYWzGhHtB
	 p+NZB0LbHbhzAJ2RAiOi+GtVXgU8Awkgza7VmVHSMwXaevpTOkhJ97mEm8dcuqL+qE
	 o/kT94F0eGKnpmNWJPooqJkP3I12/Gk2YYR/q0INwo2mhB5WlWVkhNyTO2LJCALBpe
	 iM2U4vzy+Cu85q9sQ+WKENJ0q/7QKoSoM/IoDGA2YRgE0frICWGeNLH8A67OOAwaaI
	 b1CiDnKwFGVgCgNMXsFCAZlaydg0fnsXUwvRL8VB/ubK1N7PywqVpsF+lpnJLWkED4
	 mZzPfEAompBDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE14C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901455363.26917.9813111903545326288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1242e00516fb5895d6db4fab3a0b42f179443e9a3ccd2fb0367f188eb86496
Date: Sat, 08 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739014553
