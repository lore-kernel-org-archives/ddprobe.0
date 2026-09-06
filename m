Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4522C0F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788725434; cv=none; b=tbwVKvS6kzg83Fh2oi/RtU4MTfjW44qPiPgjj3mjFRZz3ITpDK1oxhgd3dzK9JjW7hlq1Qj649wSlChzz1jWrx0UcA9bzhnD3vxFKgyVz8MqZq7Lop5KmO7JoKeT4gLtUWBZzANMsZ6BV2NjK3V9cbO3PzACWvDp4CBMwJA4eAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788725434; c=relaxed/simple;
	bh=Ync8xHYLDSURZtbHOAQQc7izUfT+idwe1JYK4hgKHr0=;
	h=To:Subject:From:Message-Id:Date; b=dhefy00J2vg/lT7y5aSlCeCeNHvUzRQ9RyePPIiPndG0J8//NENhnup1QE739fRsjtf3z7bBC7/9jZ01NEwsJnGMkkTYGtJ/xHjWBfvWOda4TvhJFaKaZJHqZR1q54LBRbbKLUOl7LynNYBTmmN3hUSNgvKy5cyf4wtoLPoUrTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEDlK3UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEDlK3UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F95C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788725433;
	bh=Ync8xHYLDSURZtbHOAQQc7izUfT+idwe1JYK4hgKHr0=;
	h=To:Subject:From:Date:From;
	b=BEDlK3UJaVf6XP9kMWEoJ2n9YtNaqp8wQHZBQFidZlLar1g74R9vhUMToBs/EMEwK
	 ADU0FtK1re3eswun96GxVvHWJ0M7cA5X9NwisNJERCZ8m/OgpvzC0zL1qtG4xEqRrO
	 pFD0IS0bktF2Rb8CkbuCrz4et4AeFeiKIN5TLPHTRodCNEvywIEiriRZ9Cym77XPuO
	 wOw2iIvsLNqjeXQiOEHHeNE/jiamZ8p0QQVSx3KA1JrZrn4CbWO+oxiOnC1o0B0ubN
	 13JrQEppyPopMCBq8jatVwE47YSEPFoPATosK2mF9M0djKlSw8Dfl9PhaMtXVfboPV
	 IFWxFvb6dHXNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E6FC79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872543370.13132.8739939126876234930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7238ad748a90aa9f3c3ce25999543297d06bcce5face229dd844142841501966
Date: Sun, 06 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788725433
