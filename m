Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF848C3FE
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778002654; cv=none; b=WC88pUorm91qbMmj3yPpX2EzbPdr4tTZKoKj5pbmkYZehmWnX+geOH96aCHTZpjf6p9mGHBui5WPt51kpedgNERRtsBgCM459dKuwglQCAMK+PZ9qftA6lx27mYZFBvmAXYTHotNEfydxvkRtcByel2DWhh0nvwNu9k962ZunY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778002654; c=relaxed/simple;
	bh=UVLaLXKGFzQFukZ+TDzTl7SGNgt3amKGco+KhnAeS6M=;
	h=To:Subject:From:Message-Id:Date; b=qtSIFv+GtQD4PfQxXjc90EgNdndmRKBTt6vynq4w1uHY6ABcUmazuyfj3bwwBghMIjYMo2XIUKrIF4JWvqFxTjzOWA/F71co/OzdwlYHl/+IH6PVj4USvWkni+c+wkbHxX0iJcJ8PSHbINtTg3fK5XZ3QSXnO7vduW1BhKpAF9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMhZZLpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMhZZLpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07BCC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778002653;
	bh=UVLaLXKGFzQFukZ+TDzTl7SGNgt3amKGco+KhnAeS6M=;
	h=To:Subject:From:Date:From;
	b=pMhZZLpRsgSkl7WCFlIRXZbC1uRZkMGDFVY7y1kmwXvnsp7DDbmlVImIaYW9+4bUI
	 GBO2GNasrQgVAYMcqG43OotKrpmUEH0KmIBwMQj0QBdjpyQBaXzGCb10OkSLMlC/+t
	 QVFYbLEIGO/jqmlvQTh86tX78IpuV70JG7zTHyw6sCKhtJK3PZYCJxziVRwZbqrkBl
	 T8Vd8g8xVp0zppmr1KcNhvzVwOGhvvycbTwWp/PJNWNQSxBZrEsWu/G5J3OBfDQo/C
	 lrDzHXZ7QXS931OAvnSEQfF1Y78aVgbnQiQK6EYA00YMjg5jCilS/6kJzOC48Tdgzu
	 OIN9lP67OXtTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F5CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800265369.26931.9825581542288707222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b48a904402588271f16e7169f79934198576ec805c23cdb777f69babd0e57e
Date: Tue, 05 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778002653
