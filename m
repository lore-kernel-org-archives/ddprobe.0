Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF8430DEB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761124794; cv=none; b=l98W3I10DdjxjdyNf4ZB1In8jBmuycsCbPLiW1s9kJsd/OKroSOsh+1rkUeZov4a0pGY5ZFJcTbH0T6h/jYkfSiOVtmtn0KaASNg+SzjWwIaEKVc4Y18FmHcpaJv2KJemrM/PYWg3kFGwAaVjwxFYli76BJBOE8GlZACZ+OKQAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761124794; c=relaxed/simple;
	bh=q0YsQ1o0caykeB0pq1FGYtzetZ1vF3U5jfox1172l94=;
	h=To:Subject:From:Message-Id:Date; b=BLKjgoWb6SWc3wgwGMRrgWTifCsK55xU7MR3nf8FW1Ne48cVd+LHlUL48sEB7jl6082eCL1PmQ4d0fUeHtMn+8cabAskKhUw+1GiURY08eNpaPpJZlds/0uiyAILijtPEqkcTeqe5n6keBybjewLAOQdoZmKw07vx0/XnO512Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQbyoVKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQbyoVKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA74BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761124793;
	bh=q0YsQ1o0caykeB0pq1FGYtzetZ1vF3U5jfox1172l94=;
	h=To:Subject:From:Date:From;
	b=MQbyoVKN/J4jkP9V84oWiZ2QD0fSzSr0QQov9GsPX3gbuhs1KqnPOO2gATqbX4yIk
	 D7gWFq8/IrYBqbhdfAMNrdMs4++sFmpUPPxx7zv7kuVYEO8WfujT6kci530olMPXr2
	 SsIMQAxsTqxwDIz8gk4K5dXfztodOZgGWkqmuSlemFxWKwdTmjLdE5vhHPXkvMOfFg
	 GkUKTBRHSe+nAS8pbjHNycr9XCWzNu8MBQZxUii0DxvbyJXV8QuOv5yV/VvbFewZMf
	 OGgL/h2lSm3206IahI7P9EPSRZJBLJWVSHyyOCKkZGmW7HgOAXKLYXM9o5IGTn89J3
	 7kUMdHn/M6ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FEDCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112479360.25463.8280499359264758308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2606ca0f8bb5c97420090fad92b8564c6c4a572a4f8ff15530e1fa87da01ba12
Date: Wed, 22 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761124793
