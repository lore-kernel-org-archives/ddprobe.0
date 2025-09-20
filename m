Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27225A48
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332994; cv=none; b=gFcLMkrcyiACUbHd3m5p6nkY7GHwPP27lkY5h/KSL83CNBCrpee+jkcPjPC9OYLT+DKwal0fnSj471ejbhOZfh8xArH9+Fb9Y8oytW7ruaBCowfydWVi4sGOFXup5k2ZdDQuVyBrB28pSfkiG12QtFRC582FNVNe2wygsLQTof4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332994; c=relaxed/simple;
	bh=Q+7Ksc2s4sGrnMOHTx/5utJjDUI6LtU42o+9lUdIaxY=;
	h=To:Subject:From:Message-Id:Date; b=QjzMeztK+fdYAmuz4BpYC5vjMsCW1LJAUxY7PJmpBWFxEm67Onw1OSB15WjKh+lvCobbSV9wob8zOtoK+zIMdYHNov4QmhEuj2uH/GsVmyzM+xMPmHRfm3SPgmXt3/pbF6YjvmbMgsLJsKo2sEpZmoXMhQqqPnk1VtLUs0ubILs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwaN31Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwaN31Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DDC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758332993;
	bh=Q+7Ksc2s4sGrnMOHTx/5utJjDUI6LtU42o+9lUdIaxY=;
	h=To:Subject:From:Date:From;
	b=QwaN31BdsU8I7bzcrSIlAvKfH9eXRxOOjalnULKRDT6imBv0p9fOZ0yxNgOdAt2So
	 jH02HLpJDLsYNOBvxB9voOhuHTHNFgpc86D/2UTNPvdZqW+XZcs2hbM3lY4wY1w7qJ
	 41cX3JIlKgLoVBzjvw3FYI91Jc3w3wnm+iA5p0EsFq0LKulEy+p0I7o03ZRQOBTIV9
	 H219XJxSR2SaKz437PsFbMOV4rhNUhcYhpoXjmBCMILRjqvHlsjVbANaKdwiNARIpO
	 8vBvxTg4IovlaPGYTCVn40MblI7UnvRJGZglV4TVn/Pry1vvE/CjDuAMqOUpWnuzOB
	 vnz6e5gazaKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A9CAC592
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833299358.7085.3100641714812248919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8374bf3039c00e6a47154673b867fe13ce00fcbca7dc8adf8951aaf9a01d61
Date: Sat, 20 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758332993
