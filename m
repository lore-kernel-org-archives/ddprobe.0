Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E94145B3E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767669234; cv=none; b=bAX1PXkoy2Ei/Q2PoN9B/EGxufq3P3s7UFIs2p1P+HIi7w0Y7+TBFCUeId23CvFt4FrKNImYF9Y7vdL+11PsVKifTw8lxT/+XbvHw5eSXiQc92CBtaaYE2Gb4dlUXn1chU+I6rYWMfhGKaVa23DaMAHXfAdlleJA9wIVKVKVuo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767669234; c=relaxed/simple;
	bh=VOxPZ0tac0NELxsIued3yfFpj3d85zx/42tvaCQTOeI=;
	h=To:Subject:From:Message-Id:Date; b=qwor6EadoCqHq07YIFF0nUTdXBuGzYDx0QfbxcXzVU3xfikeianG5WKdefvkTA036Y2M/52If9LD9kcvfHQEDeaj6gU+gV/4azQHQOcUaM/TnF99iHahKMDp89oHCXA6hW3Mp8h9FFKnpQjTqqlZPz+6ovH2d3s2VcSZEMUo+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahd51WMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahd51WMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767669233;
	bh=VOxPZ0tac0NELxsIued3yfFpj3d85zx/42tvaCQTOeI=;
	h=To:Subject:From:Date:From;
	b=Ahd51WMBLIEeUCEuEFuARIYoJB8n1Ed9DBWMXyRWNklC+oHuZGRlEt7n2et1jQ31y
	 cdy1DJvIkhcw1+aHwggoagmOHvE/nJjwRhRjPMtVDJ3CnqAR1HWay2NYhfVxCThB2S
	 HJatiUW16eJDgtATHGkkvk+NAzFGIXRrqAy6TU3mO9ixTUKNjY+3Fr8wAp7HKgJ+sI
	 nJvQeQPUAuHcspEj+AyrXpEvw+gRVaABwAO5iw6Ko5p0wySrYU+2UMN+NDX458qb8o
	 Xj9rqrE48ZMvVIsxbOxuZVGw3f2xkoeEtmnxROzhH6G6+Wi9ZePse9KxJgzd2PrOet
	 PJxcQGOhB1Cuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E8CD0431
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766923357.5442.3451192382906071109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281132e3d68f424ed99a3cf6930283ddf3be46d6c61c38d9924f9440d3ada9ba
Date: Tue, 06 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767669233
