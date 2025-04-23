Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67E19DF4A
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745447394; cv=none; b=NDVT3pP+p2xbsg2AnyKGFqzdJ8tAXHixB1JtgqZJ9Z9/nlxIZq6en3M+ec6WRdORg3AkVFNTk2AuVHVkZOVvujon98PcdaLyuzMDBYXIX9PvZ+gskPE/dI8fhYqeHe0TiUBCtUHtepQjtsZgwIqVPQ1Wssl8ZxB0KmUmsDur+4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745447394; c=relaxed/simple;
	bh=tn3zAc6hU6Lngqqr7bC7mjOA9nTQay44d3+ee7AGTqs=;
	h=To:Subject:From:Message-Id:Date; b=sDq95TLfeJXiykzrQfk/EpqpqIr6ahKWrPW+GjsSi/1h0aL02oHx4yIZA9q05FfiTpUUjIs21K+iQu12Sn9SMju7wyCw3nEF6yRFdNakGWt1zyNExJt+dJx2WVlY1NrkJ/beeQJrfjrcxbCGEzAxb1OTdhXlnAAa7PA6rNdthlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZ/s28jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZ/s28jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745447393;
	bh=tn3zAc6hU6Lngqqr7bC7mjOA9nTQay44d3+ee7AGTqs=;
	h=To:Subject:From:Date:From;
	b=BZ/s28jgM0HPbaOrupZahXDPrtk5DTDVuRVyFYcHeVIcys7mONV8AjsK/Lw82ELQ0
	 cQAXdVTZrvDbjeaUGJDbK+L6DQloWgaHMJAIcGUOVAEDl6IgjRWhR2SH9RjzkIm1nB
	 TDapDhrZJ+SrjkDsBkTKLH67Ye5jx2Yc8Mc4K/4BLS3oXxWAKG8Y+EpevS3eTIc43v
	 S+UDhLfiKAymYJLfB/vJWiyIx8H9+0HuPzBl4/com7GXjehTypRxEmXlYIoYZZnGtw
	 TnO0lLYBfdGe6BH1wbjVZq67hcbnw4cDV6nZGMeimwKoataG5RIBjc157OkhDlIPUR
	 SkBDeHT3uxgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544739357.4983.10853682593192411392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78d115db2adc829d44d94c651f1adace441ee1220da0827b975c1555b7f8fd6
Date: Wed, 23 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745447393
