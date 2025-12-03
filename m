Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199CC3A1B5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764721974; cv=none; b=fo1Gn05I1OBYUQDq1cXTiq9H4nfz4wr0rhXN08VKm32JE4APOtDqNMezKo6wJCSM74Yvu/7XCahdWaNrz9bpHLXAXmpAuPxznMCWjOO8RRPAeYusyFtZd5D6bJKVnndTM2zB1MvuQnTTT7bODmMYEV9KQdJgX9c1WM/KNWHfkVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764721974; c=relaxed/simple;
	bh=t1Vy3d4Iy7uiOpETgf0pkv3qTdfsnp8rBhZQziWqhDc=;
	h=To:Subject:From:Message-Id:Date; b=BxSt5uVwtmwf/kiAryE25IYMekN18q2Hw4Qi+4WM1ok1/PbRSSVp+w0F1tI03C+CocmOiiGev0Il3uMnbz/iJTJJKfHI92B1gGUusU3NcISmeApvqzC74dmERdEzLZxyUSuWSlT1vweEv8+/cPBBQCVLnZzbkLnUwBTzhJX1gfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6LLAslq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6LLAslq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AA3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764721973;
	bh=t1Vy3d4Iy7uiOpETgf0pkv3qTdfsnp8rBhZQziWqhDc=;
	h=To:Subject:From:Date:From;
	b=c6LLAslqnyclsqfMnpcVuEpCpxFg/3cZEW8W54DHL4sMeVjUtI8W0TNBOSEOQvAly
	 JBQdFuwSh8Ro1RUGjc6Xxpinnv0RuV488dsoVxlosEgtolZwy2dDVn7XnUsyokMxtK
	 PAkAj8U8XuLG5Gqh+iJy++yNVcMvvkZ053lxAYCgKvZTCTIWR2NQqAD7g4oL68yH1o
	 O348b688bpZTIvVmaTYTKfdvwQdnQyibnAYeTOOjPojAONU5F6hv40UY7ey3mxuWhm
	 mtrein1HbhVN9NvQPIU19NnkWl8l0kt4QKB5/UwqZDWJCI4b564y9J/Vyebz5+q0wh
	 mfQnXayNUM6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE4D12688
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472197362.17226.17575111748026405504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f3a02ef76075ded6242c72e24f346349f98ddce1acc3a620a185daf5a0694c
Date: Wed, 03 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764721973
