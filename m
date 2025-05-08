Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA1288531
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746736194; cv=none; b=HcAKGmfdB9+pViqf8kihJHVv0YdTBaNEf7UlcQVQS4fKhxi06LAFIWuS8y3DL3TUxf8NL+YOoUwK2n0cGoSLn6H6tXCcBWaj8sNbSDvc97CYM7FAtRsONq+FUiEQ+ddzD35KzkIGjB9NAMIkhbIgeZ7AWFE+6IGbITsmjfvuRH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746736194; c=relaxed/simple;
	bh=n/RKin3IZxzraZc+dlhU5owq4B+Otau70251S/hcBz8=;
	h=To:Subject:From:Message-Id:Date; b=ny+OwKVvCM9bdJ51iDAJlwxDej5I/Dyv4727He9Awi2eAod0Y9n0iZtUNXsSfnJGl4uvTu91lRy7nh+wkizLegHAFY1CBNc6FR4PHJapznmz7eUHhaKVjEobGPqFq/zc+a53FVrmGJ9uCBuebHD5xPgP2u92VSy+15SGlvJQJko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOIv6sPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOIv6sPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9198C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746736193;
	bh=n/RKin3IZxzraZc+dlhU5owq4B+Otau70251S/hcBz8=;
	h=To:Subject:From:Date:From;
	b=tOIv6sPkMTkCSbVYmlGOb+Xwgf7ppKHaVzLYy4AU9lb7pC3RrdFOsqLArhssFjBky
	 8eQjcg4FukR1R3CV3e4WwTxoeX5T07BmkPdrCelzgsXtPTo7xfnuE8pxA9WJDq7p3z
	 cfUby4VMIt5EfVI65YKyk9xjH+rsamIJwLdb8kgmaU/TgrZn7jQKcyZiElkW6l5mFO
	 SBLBl3FfDEk03pPcTgN0T5WRmrHhDTfr/E60P86tM3AEGUgoxPV+V26p2TZ7z1bHfN
	 N85g+83NLLNaZfe1EUH7WJ+mUP0WLnv/Ev7g1WEfIFIaQbiRxwqsQhF9UaB2x7t2zt
	 5lEq3CobPU1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF9C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673619357.995.7269210576443289741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27a285b52eeea52a3d83317b73cdd231ec6be18f99514b64091dae9acbc31ca
Date: Thu, 08 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746736193
