Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50036D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727568354; cv=none; b=qbEtQxnSuQvihYV65L8DdIvRGQO93mhALopsmwEY+88GO30qkr/k/FLJPTGJs7hm8kLoN+Qsq/aOlPN3PafGUpFeN99HEy7gL0oDQhp4VLbJCSnJx/VRUM5Vgs/qz958q2M+6mx5KXqikWULls7zBZwf3w19KptEh9ddDuLU8KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727568354; c=relaxed/simple;
	bh=RdA6uo5I/gHIIj2ckjUWYgT8CKMLYCbHpSbS9p2l3HM=;
	h=To:Subject:From:Message-Id:Date; b=YbXHp1IEytETBtsSTSRq6HbQX40L5E8r9UDjezUYNaMzWjP2Gii9zOoY7gcGfFkiJpr6PQmiNqEJejGU3B/SGUa/N96eKgTBOzmZQAT6TWe1D3mh/1RRtNO7jB32YV077YJqncAIKXkHFuEj0ohuhkcq1z46QeWgd8ZEViQtoN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwKHLhlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwKHLhlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A895EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727568353;
	bh=RdA6uo5I/gHIIj2ckjUWYgT8CKMLYCbHpSbS9p2l3HM=;
	h=To:Subject:From:Date:From;
	b=dwKHLhlJ2ORbhF6ETecdoL/YUvuwoGXlDqZfhM7bNs4KvTC+iMpUlNAt5DctH2OhV
	 dOabgPvIeVgwkfCPXYZyoPch7gRkdl8ayGDYkfPK+Vyv0JizRofJsk0C0rmEtuLOtH
	 p9jeO6gQzURgKzO1d9kuBZBFLfeG1vVNSg0ETuA2aLHRs67uNORGhmWTt1C2YVBTSw
	 8roEgUP0rmqVvqFNyruUCDBKgQJaCBWyB1O4xDM5QykgnupNRhTOwW24vfcxWpSfzx
	 1+yZ5qrMQYnvXZ5BJ+Xxu2CFd1JpDWr4aOdC0EYPmh0OjwcQjVFP10/4kg3ny8j5UG
	 du/GGhcT0VXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96875CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756835358.32285.14578199487628892404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac00c268b1ab05e78e27ad6cd1610e68fc4ef2ece1f6388fe1127a53d2db7c6f
Date: Sun, 29 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727568353
