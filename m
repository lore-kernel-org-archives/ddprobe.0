Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB1D390C85
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785439234; cv=none; b=u9KPzRV8AXYZ1c2ybmWg9sWia5+RglsLtYHFA/+3rnYNBBYbyafx3wSvjkSdkRDLeKc3ppNtVJBsgAubIjjhUob9TiB4OtnV4ry4lhiLsOB1O6kYdNdANY6h8F+/9iTT6QO7EzBmsaPQFHqrA5BpkaH4Auf86ZwH2kjsilOETPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785439234; c=relaxed/simple;
	bh=HLiBCYryaZ3Soz7hIoCsAdZ2KJfTiotmtWfgyzFNte4=;
	h=To:Subject:From:Message-Id:Date; b=pLFAND5s5FKXxwJjVURAglMjBJQodE+cmWm871OaV2igjFjygKJXrbKEzGHpyRVlUU8fg60zaH8X8exVPZn0NBPg7BFqOkmouM4KuMHHIovLXXcX252BjTHnY43WMoS58o/Kr7yXu4Iz2/0WCoPjoknmoXFrg76aihfl66QHpgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsKsFQJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsKsFQJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4045C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785439233;
	bh=HLiBCYryaZ3Soz7hIoCsAdZ2KJfTiotmtWfgyzFNte4=;
	h=To:Subject:From:Date:From;
	b=jsKsFQJGYQUzEUGhn8WfNqnv5otetS87bc9Jw3d/6hrd3AASVfDR9AiU872kJswwt
	 YOKs5Q9t0xfrwhESnmGqKAd05NncsDBBLOjdOEowoptTpId/Xo59ME0wdbcpF7zTPb
	 b4A6TQ/Zt1QHtLgJO8fqnSJ7EWiDe5y7OK8359pKPZ+2bpNWEvpRgLE2NUwOwOQm9Z
	 oU+LsSDQgcOQTzB5ExVbiaJT4+YLOd+Pm5+O+IHDIxXHJtBjRPy7wRCXHtyacHnRUo
	 YOkNTWlNQsjEoorLj0yOjvPyBIgL19Znb9n2DdP3PxV0TqDkaW8sezGUvWqUCm81yA
	 iZ+tgLgMQ07ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D65C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543923370.7982.14454354996749167092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11282e8f4b1248f88f519f82397bfc2e35a2faf01d7339392cdb7b3b6dd2f608
Date: Thu, 30 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785439233
