Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D8C14286
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755829194; cv=none; b=irAibt9p7daN3sk/1rEZNV4+mta0nPs+EeW/cVx45Z3zvOz+gF7jBohQvE9myHSO0AH3lwHWk3N0Ak/llRc/WaIbu9F+oerMpPAO7+sv7wDia88aHML6wE0RenytGHICipbveMGhUOVuSBgy2WKAgYdfcTguuxGfEQkXUCuAYSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755829194; c=relaxed/simple;
	bh=vwP8l9A+3Put9uxooS46VUI+jxHoVvaTL7BDkhgoxCc=;
	h=To:Subject:From:Message-Id:Date; b=NKgMSIOaEYfeimT0jK8VK8DSNL7aCpkdNPH0KSQz5rYatOUa+O4tVtgHnb1s3SPn1yxbvOQJjUCrRVcuB2bQKUPUrGrn22IvTvMNYq3UhV2fuhPq/DSgw+QQfBAXPts52Y5zhzrEa0nGYjT2FV26WLLHQrEP5ctL6JXi9cDm+LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndBQNEql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndBQNEql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE81C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755829193;
	bh=vwP8l9A+3Put9uxooS46VUI+jxHoVvaTL7BDkhgoxCc=;
	h=To:Subject:From:Date:From;
	b=ndBQNEqlYwxXFqj/CMjhrbCL0S7J/zGojbjJ5Mn+TNx7AeEvP/VZwylD7y+awDgQO
	 nuQoRG7DlCKCpSZDcq1uvEfaKJ6iDCbpv/hBuJvjQ24h1TWRVoqTT5wdLOVgQ6HObT
	 LtnL68DdWAJ0GPwslkBbxLlpsov8+t2Lm1ImGD/6Fg/Lsi2Kk6BxCAVrppMeeivj+G
	 FKxz3vvAtwnhFFUKt7SjjBXPUkVrQqS2+acfOFoYL9WAPMoKz+vVdNrz1VLUikucFO
	 m6m4xtLBr+9oVccZq/RLCQnKB/sKPQYjVEWWI1d4LrjEx2eVgEX32KBq+GEvOi+BmS
	 PVwqYobEB1iYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D73CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582919358.31775.15185053295927370637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9225c1d0eaa7822bd0aac0be24b30fbbe4771c4f95b95786f8687f3eba1361
Date: Fri, 22 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755829193
