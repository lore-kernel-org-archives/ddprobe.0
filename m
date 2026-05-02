Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF8B672
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777709254; cv=none; b=uFMdbT2k2cK864Duqptx27P0moyBMkCm/XgHz8knxyTp8cBBeSrVIigqJXdzWit6qn97ICE9Sd/sldjdgWu4l9ZY+m5JS5TXoCCkzEGH5OkUfQIvyYww1L/OGTUnICKFPlrlEdqiTpx7rWFzERnCU2Gd0WZEiGn/yXkblQSTXOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777709254; c=relaxed/simple;
	bh=2SbpX89JJqUbC2C4mOrCC6ZmntUgloBCEvR99qiGWlU=;
	h=To:Subject:From:Message-Id:Date; b=WY1eGVe/6n9PpSIz86BKBMubOUfEaXJoq1i6u2a1HZfJC3DB5VpXS88GIiITUfoJ4Lpv1PBdcCGESh2V8mbVH82+WyAYC1DUQc/GcDQYe1yVrUEvx1uH1Wtw5qwS4lOZ6owJUNLzSOpNIuzUJMNMAKHVs3AzK++TSJEvCD1aBeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta1g2Vpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta1g2Vpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BCCC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777709253;
	bh=2SbpX89JJqUbC2C4mOrCC6ZmntUgloBCEvR99qiGWlU=;
	h=To:Subject:From:Date:From;
	b=Ta1g2Vpl5II60TjkTIFKCXaL4AuAS/lnnwJm5XG2b2gnoHhVMS4SWtFn/ahwtZz1P
	 EXdd01SKivMvEd+JuTs75lKF9SifIj5MZF798czbgAu79AACFANde1LR9MHhSiToXG
	 F1gtglCoGLa+XidEUhsUMzx3N3pO68SXTu81DdRvriaeiAnUnAdwP8r6thijrgUJ7s
	 n1lpF69wtvxPm26BCyEyrte7HDUFfTs6XMlgWsBqloDlQ234/9alK4TBZ3JZtHnBKK
	 dHdoEWidHAri+j4mnhv2rdemrNBewAftSLa7u81bN+L+SWoR4aspjHbl5ffz980UXG
	 vGvng9zKBmZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5600CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770925368.21569.15547727377986110269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a10800ac740d9410d308abd17bf4ef7e535a12929b3ba4a9f5b2c8c28c4c4a
Date: Sat, 02 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777709253
