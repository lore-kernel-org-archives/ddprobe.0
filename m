Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F08113698F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728330954; cv=none; b=f1sHk0IV4zefynUnPUGvtuguytZSlMwkUMbgQathFfK3tctKtRQsW75Ku11fw7HrW0VjuB+wX/BA2cLcOW2iWDZAfdNaey6d5kSyG6ZN5HFXS3/78BJQTxKxay5tXVmGdSbOBbv6pPoznjg6ZDsCDbWPzvDWiK1KcmlAWLCi220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728330954; c=relaxed/simple;
	bh=F3Hn68Q1dYhJ5f0cBqc+g1FVsegvHRT+2s5qFtGy/Kc=;
	h=To:Subject:From:Message-Id:Date; b=g5YQ2Kn7y6f6U3rk3hSxnsYImwmd0Itu2IKJM0imQuMkpVPTGJrUglT0kmexzyGmvHcb2chMtL/8TpxM30/r5hY9eFa7ofU51JUjGH7QAutNmURDJQKW2MQM3NDmzXlj7/VnCpfCFt3F3BtnlJvbpktcurMdE6HN5V4zhgZw1nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoVRFRHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoVRFRHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F2C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728330953;
	bh=F3Hn68Q1dYhJ5f0cBqc+g1FVsegvHRT+2s5qFtGy/Kc=;
	h=To:Subject:From:Date:From;
	b=ZoVRFRHIzPXrvj/fcXB60pjndD0NFwXBITCBA/zxmllujUHH5vJEg9bRqaspXxSug
	 5YV5dm7t2q3sexPaJGPU/jGRJWiZJ0YDhcM2eXD9KmZB8msBrdNhNy+g7P5MV0JWee
	 rMJ+/WxUhVR8ri3c9etyUKYOJm5ha2w6NaMJ8H6LFQjmc4pTMpYZ+Zon5ETAGMrtYQ
	 EZG6C08zbmBlVhKs3n80gsC4M+tIRHZMavX9gbwi2ocjLufi44E6dAk8+ie1c0HWpB
	 /hiG7VbZfRvOJ/dkZVfPAsnFxnbRwmKnE8W04XFiKNOPObQixDu+/HYHKHh2WWxd+f
	 NdSNsWHc2FPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FCCFB458
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833095361.16404.6389353237745166691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0642f5c6dac3bd2c450bb8487e24841b6d261de3818d9d5dd5f7030d70695ad
Date: Mon, 07 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728330953
