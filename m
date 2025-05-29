Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281F3C01
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748504994; cv=none; b=AHouTrt0Z7TUt6IhdzdqC5ohe3lHVepoByAPoXQGkU6cvh/RP30uA/l/dGS8UcArMosMOIKghZwgadwtSg5aheAbg1avEA85myCVJnN/Sb62iOQTrYSaJWfy7uXGAGl+U3zKcWpU2XP6V93Ff/0kSRGehJEHZ6aZ9JysCtHZG+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748504994; c=relaxed/simple;
	bh=V75z/4b1oPKj1C2ZyeGXiEw/ZfaOP3LSo/xw4KCwyj4=;
	h=To:Subject:From:Message-Id:Date; b=Bj5rwcMDnfuypNz06Ey7CTrr9/7VZ/wMxOU2GegjwQ3uirTT4dPCvVcEtPOOO1DdniJG+14DRjhGsdAuquj9vuk7QytWXVRNSk2LkRIf8CX06EsBef5mNz30/dTzzsvuj3vNghrXbfEvWBEnSNBuw90X9RHYyHihETtkpmGYV3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vN541AoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vN541AoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A42C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748504993;
	bh=V75z/4b1oPKj1C2ZyeGXiEw/ZfaOP3LSo/xw4KCwyj4=;
	h=To:Subject:From:Date:From;
	b=vN541AoOiE0EaNiTj8D0i46GzGLRhxU1qG01cg8bUB+m/V6bPXue0kR69GzAkOQPJ
	 AeQOTlPDuuc0GlS0zuVvdC0/T4VW5fI7eSehd0YVWHjaG6xglHGG87Q3raT+zNAQ8l
	 JqJSy7A3nGu4/WwA66gBtwcpZGnEidfDGfeKSnwhlpVBvLldhydhkR7jCT4vPL9Q/V
	 41le6WufT1Kx6EIl7Vlnmbm4hbmEBqC9qtIDa50qlMa8gQATKsyKyJ9nCm1F1n/Iq7
	 rU9QFIiBGgbU3A+Y0GVdwp3ggHFnkohsHpEoZKuZX2jZQ/NmXHK/zyO1yv7FbTQ1dO
	 i58+oTvCJciUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED56C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850499357.12571.14548419513358871664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb343c72ba1a6faf8d2ea3fb3b2482f6fd1c8fde3e160796a3ec2414cec2da2
Date: Thu, 29 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748504993
