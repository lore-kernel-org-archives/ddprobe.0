Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E1B30B507
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768521234; cv=none; b=jNzNbfID6i6gQx3+rwmsT0A8lYNJKA6p9hrXTdtIrkJCFu/vHogwd5eedPbB95rtjNfU4WqVF3a2VarqncJz24ad9AnqPEINi4GNOa0zWGRiKwZYMPpfR3UMcTpJbS1DE1e0koTOVTu6PqDoLeh96KVllJDQbRBBoVQfy44pRqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768521234; c=relaxed/simple;
	bh=IPB6ZEDxNK4AFF3gOuqrEG7CfAOuyhsUuHMLlsF87e8=;
	h=To:Subject:From:Message-Id:Date; b=XZ5+Q5PxLiWCv5llCh4K4067NlvXegHNX5BYdFAzX6C1LccjRYiM3qsWm2AKgjucMpqblhQTIn59xctwghZp3ailzyk6UPrY68/HCT1HZORbjqNY0KGVXs50JqNprMfz7cQ3YRhpcuSx647RYsZrv3XIxzUqW+7i7qhQ+BIJIPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnC5VQyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnC5VQyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6F9C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768521233;
	bh=IPB6ZEDxNK4AFF3gOuqrEG7CfAOuyhsUuHMLlsF87e8=;
	h=To:Subject:From:Date:From;
	b=JnC5VQyPf95z9zLs9l5U1n9OfzaPyPHGQH9DNonDHVwlsTb4fMudZgiKTNedEJG56
	 fTb27xSXGVz8dmStJpTAAXLW9BbEP8uSdYZsY6dsqOPfsKtO+1ZUQMq1ApvhrZ5ClX
	 JMwbadR8o8GqZXuiE+t+kkf4S4kZfChjjcIKSLJKBVYly6DfpsiafwcqLUR55HJq09
	 gbzcovRfsdmgih0ONEjmW4RyfjPaRCMpY3a3AyS88/gU2v6t1Tzlk5Bmv3BMe2ygnL
	 KUldZFDy3kyPDLjgvcUxi//Q54PK9tcppe6JUHZ3miS7gwM1n9Qyy3PX2kjarKD0Gd
	 5UOMdPObvCORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE51D47CA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852123357.12421.1923351055071321406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6b12621c7fc0dc56f9d2aa12fa279f69d8370ee42d77290034c5dad787a732
Date: Thu, 15 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768521233
