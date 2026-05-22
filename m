Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D055372ECB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779460954; cv=none; b=htXsDtBLgBAzOR7T3C7B36p826MeB1NT5vcFmzApUOZ0Qyd49PNTCkHe+kXob5VX9plVtdHlyJpYPcfsxcr3JQTd6BfhtihHq/abgpN1w5AmpUen5ZTl3NZj/MQGdTvV5QllrKob2SGyMDiTnaGtM7VEa9KxOv9CIOajnU2FL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779460954; c=relaxed/simple;
	bh=+SxvWFJp2lLoCoKe5s7CHY/+OE87e6M8lK25vRGxRrE=;
	h=To:Subject:From:Message-Id:Date; b=DDxJyaLaPOpnruCSb6Tvbc9dUfPcUv/LyvqzS+LsM1+rww2Il3OI0cmYDnRjmFdgfAUBWcBa8kSsjRodTr+EFzXbktXJrFoc+Znbu9mToMB4/q+YxK10BjzPPgfPbN/uUC5cLXH7lOW1HY1qw6mhXT3WSHb03Du8BE1MFg6hl0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rko0iax5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rko0iax5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C289EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779460953;
	bh=+SxvWFJp2lLoCoKe5s7CHY/+OE87e6M8lK25vRGxRrE=;
	h=To:Subject:From:Date:From;
	b=rko0iax5w6CYFukZCZPmDv1OUvS7lzXJi1FqJm38uu03bcx9/lULvFhgOoqkcajcZ
	 V9dKQuP+hd3SqXUrGQsROHYFwuoRgZZiI+hf8pOH2F3nDYSOXEvPQSL6GSbn71HMpw
	 lNq/XzzJ+GUxqpNQ6QpsCb7FYbgTXOFsrOnpg5JsGfH8MszD+f7BvCAPdTpRQbMkY+
	 GXhiLXnF9vDwWa2V2gyh5r95O7Q16VNiyW7nZQinFaqLQBhjVXfUAMHyvhJlbgllpq
	 LShLO0jjlJEjv9Dqa4cHKLrSNOExmxkU3gwODYWcE9Bi9Gh2sDGRuLlMiMuYSVoCPm
	 f+3CcCJ3MNviw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCCCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946095368.16324.1539133683560771634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f37360751359b6d88aaa2325d8d2c53073e9ab935c00c5c18d8905f9860f17
Date: Fri, 22 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779460953
