Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F1846C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754507994; cv=none; b=kn5qGaNA4GnqoDG4GTUrTTrzdfGiJyCPmwOgdqlSboflcpLVnOErov0gjSFOg0If2kj9mVli3K06Hm9K07T8E/TsVDA7BqAIjtCMSDIDOcYHt3FP+4RH2HwHKDYtzCKxAr8D2eUJ+CmyAizuhfF4xVBN1B265fa7bMtYF6BmdQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754507994; c=relaxed/simple;
	bh=uTw8UYU5BZ6+O//vzmp01xHKACgrYzasEdz7YLqmdu0=;
	h=To:Subject:From:Message-Id:Date; b=EV4c6M9y4q1PqNS0bn9NvZfA3cHYmlmOtO4Lwm5HmDDtXUTogI3E67pUoUd5DUq8lZWqFjrounLnbPY9kFNOPEBPupeNLA/xawjkiruwi/QoU0WQm8kyQbhRsAe7R50kEKKDF2qIHOqtq0n2ix6vrkc2ds+lQGmnEv5qSQCE0hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR/w5wQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR/w5wQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754507993;
	bh=uTw8UYU5BZ6+O//vzmp01xHKACgrYzasEdz7YLqmdu0=;
	h=To:Subject:From:Date:From;
	b=ZR/w5wQdnwvdAC/xPdKVHDlWaVjtooFHqrGEYS68MBgnDCSl0UEfsAylG4ycwUGVN
	 PTTQuNAtql9RfBZZDuSR+8NOmzhB0fZmFkpPTDFFGWsxcHhKhVxgYWXopjt7Ygj/Gn
	 KOPgR+ewm2O1hla3DGo9+togvcXUf7sXHBNnYtwx45NlN1lmRemevlYVCfeBsi5dtn
	 xWiitkZ01C3xUXgl7g4KWiRzxGXihPpfiHQV90+F/yrzhofkQ9d8+L8mKWYlZHOeZt
	 9HBbkHwfczKBWvqjJGFFcIofSir1Jxb3rvXy3bI6T87m8J2lETyIf8qD+4pIfZMKcz
	 Q8AIgFw5G4mrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92742C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450799358.5803.1345283682091897162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1068551c75ddf295b4a6b7e546f997503f313ddb0b71b0a4d97f50f872886f83
Date: Wed, 06 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754507993
