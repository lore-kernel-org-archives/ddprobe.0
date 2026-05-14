Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204DE1E5B70
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778724034; cv=none; b=odKDlfg7h0fffV/x5W+Z1Iu/2jRlnxEXdbQ8YD25XuF0kMmccuHQBhdsZlwuc+QEvYXWJuhq7udzH7y1Ep6vg1LU131RWn4uVwngOkjJwCziRTL3hyjJ41FqT/QyYc2r8r1ohm9xJ6K/H3cXUO88xel9BhXplJ51dM6Ct7Zb4Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778724034; c=relaxed/simple;
	bh=Tq8UpTMptloyTIjkUzDAfdbMLBsvR9vM/cuot9CY8pA=;
	h=To:Subject:From:Message-Id:Date; b=jNEs4G37pIXxu730tRXm9ZfgOAxkDjnW/uzowOcv4Mnfo67tFHCtPxh13v0yjcYTek2CodOmTULB8rCKOMuhPGk5vo87X3XM6sj/BK1HuA0iXkMIkbyCnF7NZ/IlC7A4G6OEaFFrSnSLNxpBahw5B/tdORzy7aMt/eeGVsT+1Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5uK3JiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5uK3JiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2821C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778724033;
	bh=Tq8UpTMptloyTIjkUzDAfdbMLBsvR9vM/cuot9CY8pA=;
	h=To:Subject:From:Date:From;
	b=B5uK3JiZDcKSsvzxGrpt46ZoZto74wbiHPPP8zHV++yXD4jEY1heFb7Hzct+2SKGl
	 6fMGCPZNj1xUOqpdWFvoFyXM9T7xPiXHL8L0ufHAOZwI/GxNzdogANQAqxvkmX4fxV
	 pI8OKOONZ0nL2NQBappjnU3BHbwQHSf1pL7mNOgdTECq47Ssex9kcA40xLCDFTXp2y
	 S91KvkCkAStiXknR/BNzhSQbcmIAai++w00mjNgznVqE0WQ8KQf96kKSPxSxrhlSov
	 /f6HPPPqaV+Bp/LGhgef2e291kTiwPEYCe4uSyCDbFB47s0wknXypshRRzCwnIceuw
	 hhy7UGWF1hPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0495CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872403368.4940.2386792903753001321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4284cb93abe89564a684490f32153046d441be33affc3bc55689e1cc95aca3ab
Date: Thu, 14 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778724033
