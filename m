Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51668138E
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716612803; cv=none; b=JoF81lwbSQf7Hq3NjQfsXzhChrn1FJF3A2hwER+v5fEZehkJR2YEuL8FhsEmj/Xa5cIQDPPc+nzJNdWX3qBEcprfKBFTbebrpi7fGNE0Djehn3gm5PHjrBn+2AiaPwzZDVYDB/FkbH0TSlGI1P+6uQGEMkg1tAi4RJ42uNrWSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716612803; c=relaxed/simple;
	bh=37MUwTFH6k2/hlNu19x4BdLkXuqpj7PeaMOpTQp5Trw=;
	h=To:Subject:From:Message-Id:Date; b=sLECTPQ913Jx69ORaelI/9fYU4eXvvbLGK+JKQARvRpAvqhoi8OP6gcMzhvzxzpF+Su1Bi2xIjgUKog87J1r6IRuO8cC+6Wn0c3BzihwAhnOWk1tTAm0TZ8TAu+HsdZ6GooUbjUOxhdzvYrgBaFD9bZlMrA3gmXYGL2mW5qvf2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZHLUuZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZHLUuZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4265C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716612802;
	bh=37MUwTFH6k2/hlNu19x4BdLkXuqpj7PeaMOpTQp5Trw=;
	h=To:Subject:From:Date:From;
	b=hZHLUuZngPoAMBFu5qkhGaTtJP1nCYQpS9XRA1UzYVzF0kWAfoWbwz1gQxwZH70i3
	 mjVUAwVe47bHa1+ov54wewJlViHdo4sIMvD4LZgitSeg/iFRK/t3fpHLQ9Bar08eI1
	 HZ/BDqIrFlI6DX/vCBlCrHdn5InCLPV7CeGktQGDzFI49wdjMjo1umcGQsRsp+P/ce
	 eGT7EizweyoXyMfWUnAC9XdDjftdE+EaNn+g10p8p/9VQtnIvlXds+KSod/350t14I
	 U0aXSqV0XpmG7HU+mpRh4dE7P54JefJt/efGickLqAuulEvN0msdOVCZvE4OizML8l
	 XZNDvJqAZDJ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE42EC25B79
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661280276.6131.5280604045735617025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c15a4eb1ca3edf12a2ebe1234cd555c8e66c9bcd71dacdf5ada0aa73283c07
Date: Sat, 25 May 2024 04:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716612802
