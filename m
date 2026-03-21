Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019633161A2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774104894; cv=none; b=c3tenaxs5urepm5sOhwRGvMEETyCKzy6mqd55H/aRXYrGU0X9M5zETn53nRNy08zqjXrnZvXutWMSMcDTzIZ/dGgJw9kXIZ/WPLNE49P0zWMMi2/zPxcnIwwO8lGeUggut+ANP+SnyoPq7hkACzhxERFHF/MfHdowoHhkP8LRI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774104894; c=relaxed/simple;
	bh=XHYTQw5FT+FPzqiWy/FqdSqxL3Nwjv8HPKMJJQSq/nw=;
	h=To:Subject:From:Message-Id:Date; b=sCDBvZJKTbh+sjIhgdjquSQRVR952QQQjiuV5mcRDcoKIjUa5ZLaXHPKoX/cEeQO2yxAIGOhn69S1BKS/a0nA6wO6csAs8f+mFP01n2nCWMtbiNkZTO+2Dqdahe9XJhk06fI4M0nE2Awz7BXL2b/iGCXR+D7lH/iDtsaI3YtHk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmV3lM0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmV3lM0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774104893;
	bh=XHYTQw5FT+FPzqiWy/FqdSqxL3Nwjv8HPKMJJQSq/nw=;
	h=To:Subject:From:Date:From;
	b=gmV3lM0fFGgXJhBInfTOfUBLtd1iDEZsecnT+sUfhjw3VCC+t+1YkZ4YwYWRQn6Rr
	 OnMAKy6h+6JtQWn9Q1Elg1Lwg/8198KsqcYf864UPMu0eBYkAvHoA36lJ0Hz/ag2bp
	 Z5mcIAuorIHi7m9R3VZfx0RId8zmoTb5xSf9nCK+iRU7MjfbBZdp4eDi9mHviAAcv1
	 Aa9LntF2r1oZm7wna39UBvEplpngWdzvkYTumHql7JTHbO9ZMnc/HXuiSdZ9EaDcMC
	 cM8lrPb97m0r9viurJOP12NSB/hoLtND/POhvxfogPuoDm2nqRoGIbjgFtucdkWgHv
	 9TJNr769x9WFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361B1094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410489357.16098.8622024902969533957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be823d005eff4ffe8c49dd020dcf1a0d2bd334bc54ffe16574f44f580eb0f9ff
Date: Sat, 21 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774104893
