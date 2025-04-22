Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A70B2DA0F5
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745356195; cv=none; b=KGTtYFcMiECow7uhCAmYvvopqRZ3kbMZbE+S5rJAlFIrv/gBlG59nrKjVvXzQ+KmLjeo7CSmlGo1aGHyC/pD6TmJ/srfxuroFsvMFvifrspXcmnazS1jyugS3WyEXURLeKjfb6+5iCkQ5jwt1gPuoZeeAHKQodll9zBliBHWwJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745356195; c=relaxed/simple;
	bh=4ZuDfsA5UPfHaC+F8hjf0gIUhLYt135CG9zKnjYfc6w=;
	h=To:Subject:From:Message-Id:Date; b=FlS7pGNpmq1tISkAWfsxYdKMlmh56fU/41wDhMfZmv6f3+z9P4hrYHwpRR2W0J9bIGruBNGZ5rnIwsNtELyK4jUH7FC8zGRcjI4XCoVGKRkLHXOukpWHHLJxUn9FUccBOAlVPRKAQe0MFWiUtVUdkYHG8MMXGzHlD6PxP5xSMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMafC5wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMafC5wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745356193;
	bh=4ZuDfsA5UPfHaC+F8hjf0gIUhLYt135CG9zKnjYfc6w=;
	h=To:Subject:From:Date:From;
	b=iMafC5wGHHkOWECzRNxHux01EzYh2HEcW7V+1XJCamSMcVjVH4uUEAC94TIcSOuno
	 7A8X0d3Qnd7rugaNmxh4yr0ZL/szAOzBADPInDa9pnFadEFfjwKKROCxy9hq1cLltz
	 1oTRUbBbP5rNsAZDqajUoGbXJgL0A9dgGurCxMcRef3Lb/Hj1tnlB8EwUMH7oe7Q0G
	 eGiFvLNHQlnJQlmfeJMppUW32tlnpKLL1Kn3LIcYPCIGR0pT6uaefbU4p5YSbpzwBN
	 Ke2O+EB7gu9gHMPhE1nIjbeL+JF/8o17/aRcIrY7i7c1Z9e4NRw+cJLnACp06YNZhO
	 pF8M30UqxJmuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC57C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535619363.8779.9980889200075439309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c072e98a42606bb467caaf5df97ba28bc86c2a60b0e94829c55a4ba5efaff02
Date: Tue, 22 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745356193
