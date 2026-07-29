Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA084A33F2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785334834; cv=none; b=JHC19wSK7R6s3C5sbRzFNffyuouzSPDhocqmoKZP+JwSNFPynfmkv2nPT0sYPJ3D0Pm7uWPkgu3Frhc+NIVN5OL6CS3jDPjg1qYmJbMVoPW3aDhafy5uQZoCumLEV2yy04EHIp9MhMpSf/zCFinkGXAm7TfOUFpJtDvMQ6GjKtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785334834; c=relaxed/simple;
	bh=hHPAYAHmB474VcIUVFblco3LCg14BsoRXBdPkRpW5vQ=;
	h=To:Subject:From:Message-Id:Date; b=eQl808oQYrasP4g1NVmVzUJMBGbvs5/DhyWbkhiO4rHiRtNj1t0GGTfPTCCZCcVVq3pWJ+P0OyzPHzGqSGAbjytTBWeeTBvXp3HRL771v/EGHDMygg1UFD7hl2D2ekPRPdKhtnJxXzsT8yqP9jjKBxNtebLq3//YMjRn38QmG+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfhaAo9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfhaAo9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8A9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785334833;
	bh=hHPAYAHmB474VcIUVFblco3LCg14BsoRXBdPkRpW5vQ=;
	h=To:Subject:From:Date:From;
	b=pfhaAo9BHvu+hZH/Ma2J8WJ5Irh8JdOM6ceFLCoWGdDaeR4A7xaGN26yAYnoX406B
	 wgsyAQ6SP3WiFtca5150G/4mlIp+MA62IkVvnB+IxrGbctHKhUn00pMIekHrcyHi2e
	 19TPJ3X8si3M0QybtaEMLHqOlsnv+JTrcswbHH6WsVHxj4I59lF5IJuuJniTZp9PTo
	 J5X5rKcmi35R2jvdzSAowzz7VM1cZGLQv50JnIYU3BU8cMnmRLkWwQAGm3fwamwiWL
	 bBwv7O//kC67o8lKVaSRj+booX/1MiQJx3AW2WirWo0FirPIYtTxi4l2hh9akc6kWq
	 5bn/EqXC1TX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A34C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533483368.21126.7125987551494640567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddf4e9f7781c99bdc91b03e4e6444e795fc17c6e52939746c6af64b3863a74a
Date: Wed, 29 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785334833
