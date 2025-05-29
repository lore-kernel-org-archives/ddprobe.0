Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51665EEAA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748492394; cv=none; b=duoFoot+cIx9YPzvkOlO1Nm26/BOER6gosD3Ah7HMYFsHMjYge/nyV5+EhiaBbu1x9oyh2nN16BjQFnNpWRvPtWpsMWoyQ46M1FyZolgNX+nOw9bTu3DzoJ7dHiHGvy/3jLUDsLuCj90SEjjMDZLYxN31SAGnru91d7i4TTaa20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748492394; c=relaxed/simple;
	bh=KXpH3Y7SxoNXGULeNAuHqGdbLwXLUNc0dU+eZN6vC5M=;
	h=To:Subject:From:Message-Id:Date; b=aJX/LJk56GbnvymMSUSqCEgclFVI5MlRRUNwlYtr9L39Q6gOIgeCtzgJBGI+qaa09ya5Ij/d8Sd2El9MM+W1sOYRIitsyZLjoEqdQXwdGmQjpGMt2rQOLlzF2ZEK3vFQe/OtH/zfxURj5maPhJufU1zULTo3v43t3AJVcB1ynFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5QY43IE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5QY43IE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C20C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748492393;
	bh=KXpH3Y7SxoNXGULeNAuHqGdbLwXLUNc0dU+eZN6vC5M=;
	h=To:Subject:From:Date:From;
	b=K5QY43IEpit6BWgmDshP/ka7/VQ3boCFreacg+a9x31BlpGxNh+dbR3gQDh+zu/tv
	 CW9JRXz68t9DnJOBhTYjlbgEYwvbwSzqt/SbW5Vw9AHz5FvNm1iJtu9vWd6XNSXRaa
	 rBe2dGmu77MBXTipZ0emG1QbR0iZOS8AHuiq1/uZ96FnmJ2ogIYXklH7RmwVeaJBdn
	 nyEuMbcEXcxkwBLh9r9lOv6f7osWE8mZCYSBfhrMYY2WxQ8bEJ1/LT7H0GogU0H8Fh
	 DJjdbKJ19moxDZOuZ2D5PMtGtg/VJFOGiGTgkKKX29nfRducyMgp++YhwJs5DPBdfi
	 YRKT7ty0l9Smw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EA2C5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849239361.29016.11963992080473070252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7c5a3bd93bb69b05398d066d5d9da6659b8e82da67acd577d3ee31fe655542
Date: Thu, 29 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748492393
