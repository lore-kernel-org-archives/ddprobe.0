Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380133DA5B8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588114; cv=none; b=H1lnMMPFbYv0Xv5g7GVkjsIX568RHvX2Mlmlj/UYYlhgOjAZfOrIDiodVpSqyCOUD3VJ7T3tnR4WDHwEIAQfhMKpBf1yyTCqrM2n7B3u1GbG101gE8T27ST/J+v0e7CBIv7JD8rf1s/S5LIBE4NlpA3wRwntTjk8fnacEBSnaAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588114; c=relaxed/simple;
	bh=mTW1fRaAQ8kMbNqFm/91ICyq+t+mbyZqWBfSHw4VDOs=;
	h=To:Subject:From:Message-Id:Date; b=ggfvgiQlsxloV3itZq82Rghzsl0bKvEITnLy5ywfhuV9kqoz9Vj8RyjJUTmsRoWyDF/ZJxI8y0yg/JpgREW+DSZUl8Qe/sVkr3vL0dWTdB/DepomAgaSyCxEoUnu/iv5JJeZDyVJ6NZ2w9R5SHw6eNIWhw0V/Y6k/xIGeN/NN1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzyPKqJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzyPKqJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1BBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783588113;
	bh=mTW1fRaAQ8kMbNqFm/91ICyq+t+mbyZqWBfSHw4VDOs=;
	h=To:Subject:From:Date:From;
	b=NzyPKqJeP24XDw2pnQPKEDNOlBZnRYL62bcQij9YoKpugJhSdm1knSw1jcquuATxh
	 zBoxiFc6bDaSGO9j842Evt7MltGD95/Z7hpFu857WRVO6ST6h1gf5vFwbxWjjPXkcZ
	 vw2vKHArFfJlswcifpNhfJmno7Drg/4F5aOycr+i9yplVahkaLv4mfNjl2AeWve0Ee
	 NEVRqKAnXDKYI/F6fxIJCsoyvCL5DsPrHAH992eC5P85hq7egfFEV9EKgkTcniqBUw
	 XBPHgLsCZYK1xC54vbtk1I9MRwP/SxmXH3kHBcHL/Q+2UfLmz6Y+Wx2VoC32gtH8ln
	 A6lL3WTGJnEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A825BC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358811368.2608.15596955475697668922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f422d7a6d20a58cc7caeebb19f6281d838b483b4b19ed10b7799a6c094d68ed
Date: Thu, 09 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783588113
