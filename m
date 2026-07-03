Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F91F94F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783117114; cv=none; b=sQHW8TFsDhRy1mYB2t7/2NSSfuNWriQqvPKVjjK1XhCZhGeMcwMKK92ove5eKqpZweI6zdV24PyG50eSfpFCC1nMv4wT0Pe1SSX+1VFnNz1PnBBX3nw5vCTdz6ua33gqO0S7YJGGk8/cxd/ZZ3o+AwY1BKj3WJdMlqFiQeKYxm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783117114; c=relaxed/simple;
	bh=vdErfifQJo/EvadRDvDTddLxrk60NmI1SaRwbv8RITg=;
	h=To:Subject:From:Message-Id:Date; b=ZRT6UZ/NbdhSXCm+n5dTavrw01M74qHKPtf0CJ5g72MGv9xVCoMo2A5yt36SybY7pfQEZ/LGcn9UsGvnjRgRB+YGEkFt974OnJUgh8Zh2xn7fk5tcPv1IcjIAUuNHMWAFoVC2lxD1Q5S6+gAcgzpcLNcAGlUt6crFsuIPTcSoe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhONwBPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhONwBPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17AAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783117113;
	bh=vdErfifQJo/EvadRDvDTddLxrk60NmI1SaRwbv8RITg=;
	h=To:Subject:From:Date:From;
	b=YhONwBPaExsvr9fIeIG6kg/LN0iYP04R9FWMwt5NUfaE61pIk3iDI6jmfiEahCmmp
	 +MMD+HU7JZQ0EvBk9yTm7jWPL5urcQ8dRJFqyxjMtX3Q+eXMIZAazmQ9WTo3HGcnmd
	 mshBGSeCcorFmx2OUtV8ddE22IEvQKvyt5BoiefJ/jy/S41iQ/RfnDaEl0se3YeyQv
	 jjSdV26+3e3uUXJQGWl1bMUMZjWggNeEB+Pt1bly2jQ7D4ekscPGX8kX7JJwn3u4RC
	 6pp40Dv6ua0M9vcpRBGGBtjBRA7bHsr9v/8cTprx0VD/UAEHWUJ3JowEdhkJbjfeva
	 CJRYO80b58C2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311711368.13901.7882119013982365033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f311c9515beaaf377f6ac8c75b20af28ab143c899b9f77e356cb2bddab372f7
Date: Fri, 03 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783117113
