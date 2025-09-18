Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05ECC306B04
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758225594; cv=none; b=iiON6zQCjO4fAuGsFvoYy/6gO8mXhxQfE8Mnj8MNQe9nayyE1o4r95TF8LRvWVkNYBtftN56Ps3vOqPUP7DMnYhocUhCX31cnl2/68uubTGQgtSi00ER1TFEfmdVEBAbuQ//UOhbf5JhsZIVF/2rTpNWEA0/oVAM5F71GmvfwQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758225594; c=relaxed/simple;
	bh=Z8jLo9uyuLcKltmgyHtIAiZmubBp1uRN5D1HQH6oo1c=;
	h=To:Subject:From:Message-Id:Date; b=u6/mT+uR3KEUv9o+6adf6frGCsG6bxG7+QA7Y9vXGBAsvRI0QqgGN0aDktlMjlcwrs5T/HNYNpyDNDMem91Mf/2JBKDgFNefRg25/8tgHtc52nuBiNo2Q72KF+8DM1Zst8fDbtCkzyuVzdyrd1jXAH2F3LyvJpTpY8B8Zuga/ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc0k5zKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc0k5zKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC80C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758225593;
	bh=Z8jLo9uyuLcKltmgyHtIAiZmubBp1uRN5D1HQH6oo1c=;
	h=To:Subject:From:Date:From;
	b=mc0k5zKpkL2lHBCeKD7/SzsAFb9DyoqyzG+QOp9azo6voFZNvmEiNSzdb+bNgtzLK
	 zAxLdt9Lp3PuoA32YlvOV7PBRpYq5z6KDjFRjlqSjtQxhV1O5LuvSk1OBZGcDE5Ctx
	 GVgH0zNY3dOF3QRGUWimX+Byx/6yp6se6f6c7r0hNx7/YoJC7yZtTYIXzdbay4X/ZX
	 Npfu4rORAgqs3yFY3zczWh7Ormho1Er11+zyjh6j7a6MzjUf3FMo7n+muI2SxjWRay
	 4ETi6jKejVnGzMSj9utsUQbUuNiIyvIv9NkQ46O6Bou1nF3ICV3DY7id8PzHWiX/Ni
	 H7a3WWBBWXLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8BCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822559358.23061.3745227740721830245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7a06a2f3ff9110e6814868950c5a5a080db43ae0a67e229ff08f62b53f2a12
Date: Thu, 18 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758225593
