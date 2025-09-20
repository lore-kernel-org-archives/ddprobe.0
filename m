Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BBD4A01
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758329394; cv=none; b=BO3vjTsia/htU0JJggAYwP5V//z32VsndKiFkZC9BfC+a3/QZMkyo/HJkkeQ5Ooj5h59e8J1+zuSaHfnJYeepPza3hp1+CFickdvFkcWUK6F0qAvwhQedQ6VJq30oRsLdv1qgxtuG3eC3FSr6+6b+i1VtLqIDMGiqiB1OK6n550=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758329394; c=relaxed/simple;
	bh=6F5SOKbOgdpBOhk3NdTlBNapnHFSOHhxGuWxvNtQUqs=;
	h=To:Subject:From:Message-Id:Date; b=thf0U+syQ0pqEs8FozbZHFfoyq71wbUvLZSxFsg5TRu1fbaniYFHkSyAfKg6JInrIXoGAlRyl604GDauaMwyLdR+K81xH2LTYtZTOo3DS1d29iOk++sFHA4ASLRFgfrc9QToQqyTPYzL50nJP+afx8eULoOGWQL7S7OSG5lGtv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+ZOyetY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+ZOyetY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A51C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758329393;
	bh=6F5SOKbOgdpBOhk3NdTlBNapnHFSOHhxGuWxvNtQUqs=;
	h=To:Subject:From:Date:From;
	b=h+ZOyetYd5U/lwv1Q6LuwHE1fi0d5bzn9ezvdmFjJbSK3iWjksh1EZC1jt2PuD3t1
	 PW9GZqJF2IHAazHJ9ysz999Sur0lCXO12pKaOKin9LorhiN45yabrBJWLkvhRL75R9
	 B6Ag8N0Ti3Kh0jKGDDqaeIE4v/GBSnBMYNH26p5bGXkiJP9A/Q2oFCdQppqmAftOCr
	 1F1lbjlH+l1C3Ol+Ur/09JGsRVN4xReeygUpavAcdQE2Qz8rm2OtH61tloX0Xm1kx/
	 eO+z2vgqdug0G1BYIqxF7V2HwyJlnxn8LeadkFpKfKXrY6wJWZWxFCoH4+qL/Xoj9v
	 AuIkoo43dkW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94169CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832939357.10657.14536153761041601744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311313749486398f69c9643b4dc2965cff08df5be5ca5df254cc1e34af71d1d4
Date: Sat, 20 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758329393
