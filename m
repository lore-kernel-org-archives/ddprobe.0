Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D422B9A7
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752937194; cv=none; b=oX+EIKz/kdFBqoe3I8V1KB41Gaxf4ZMqYxGNsSmz4BGhDP32EIqA6wbUO2/0y1pmAv51U5nqNTxqJne8E59FvY+N1f7IoP6hGpU2yXOrAwsP1G0leCfTMruc/tnH0wSUAi88lKVJXsJNdE6tWBq2nVALy29PidRH09szrnOHQk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752937194; c=relaxed/simple;
	bh=plL5GUfmIDnAPx8CyekQdY4TQwn3PEVnSqAoPxYNBcg=;
	h=To:Subject:From:Message-Id:Date; b=ckZDJINBA0qCZaoITk8iQ9lq6W522EPVHxNX3waSC4CrRxsUlCYpsyP6p6/pYMM1plCc2649sKTSO29urLvqvpQV+UsYihR5OiUZgwB1Oq5wbGyVL5G8+6kbLd6Qg8ad78YHDJHgYiBexzRXMHtR8bkSnBNgRyhD63pi3m7jt1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTeZ+Wl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTeZ+Wl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752937193;
	bh=plL5GUfmIDnAPx8CyekQdY4TQwn3PEVnSqAoPxYNBcg=;
	h=To:Subject:From:Date:From;
	b=MTeZ+Wl0R71PpD6ggIRXS3uX7a/zEDjbfwXTMb0GpLutd2raJPaSxmmrgWMvZmE9L
	 iCTUA5MrjoMtba8Op1XhaKeBGwsy0GpotWu2ywlvzbXbSpJ74rkQI1bDXwqaqgbJYF
	 ne97TDsYcMAEDtwliI/YnRjhXgR/vjCmESyI+13nPtAvKze97c33TuPq/zpNjOUVAS
	 xw6+TE737q2YrkNBKkI8l6pB2tm3/2RG+5f1N1w6W5Z/jB11h1sVB/k0QCM86jU+Jq
	 oOTCCeMjIG+aKt83YLlIgjKyibZzjzN4OWaKnVNzFcLWUeHtm8crkqzVxvInAIaHST
	 PzxUVrQLOC+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF4C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293719357.23232.16468164361886618426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8a7430342ce0406d1dcbc441bf34566c839944de36d5d6412ebcae51acbaba
Date: Sat, 19 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752937193
