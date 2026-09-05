Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372A7314B63
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788587434; cv=none; b=i0A1WvZF4GilEZux41UeRtAfG18SUT8MAhH1hksW57AOczb2qJ2mR/vm5UT44B9vK8olCiuu2ZKt/hWv2aiwRNWPe7uU0TMfdzk7y2alCfq+fWQSu0slF6GCzDDDQRyCPLoxWi5y9usTRSg1aMQ9u2aLj+5lG65r7nejw1wvZi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788587434; c=relaxed/simple;
	bh=A39DVRMUp6F0EZkjrUrIeKdB1jagckirBPPNdFc51Tw=;
	h=To:Subject:From:Message-Id:Date; b=HSWeidEJ8KoHR7dp6e2vfo3ZpHNxjY2AAbelUAtCD5AkfIP70976A1isNWfGPR0ix83qlsnjkyL4BfTz6o3BshEppo1wLNH3Y0Nr3s4iVbt8mkXkBS5JL8BxDXh9tDoLvmdgEVemo78YVXyc/C1SsDn5XLlSPvuLDbsJbpXh86g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1lnczz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1lnczz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF494C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788587433;
	bh=A39DVRMUp6F0EZkjrUrIeKdB1jagckirBPPNdFc51Tw=;
	h=To:Subject:From:Date:From;
	b=h1lnczz8DkIGIK4IOvto150zLNMly2LxJcgWSfkx2VtNvfEmubryUHjWG0ypokERz
	 boLD7dLyn8PEsDLDG5KBprli0XXsN5X8fZjLC8gvgAu3HfPy4/Aq3LB5uDfJhoJaJm
	 3EkrqeWPLVJ7Sp+H/6p3k8jPKrCkUKqAF6rb9zfTNqjh3TVsvSBhhK8ASuR8Kwmpjb
	 YBRAkjSG89ifHpvYQUYysyL29oJJY5Lv1Bnp/M/6e5akwudKHNrMp7SuwQfBVVOPDY
	 wKblfz5JE+o2AIXSLd55S3c1X6Tj7QCAbebuSP0lXUEL0Ucswzb0+cf+R96GDRvYNq
	 4CVIrsg/QUb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBA6C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858743369.28479.16069496791194033746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f313a271d0e31eb0612cdfe0aafc5cfef872e08362c4db6d6bdda68c2534ed
Date: Sat, 05 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788587433
