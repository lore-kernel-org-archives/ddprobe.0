Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C432ED2C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134194; cv=none; b=gYMSyX6BCkat2bk1qzvRx4TtcwgqNTtylh3wgBGObIfvSazShYq8H/YrPFHdfV7R4StpggJP5ewG8ssQ9sg7U8RP2fhWhKO+e4C1cjySErpodb/Q0lQTaj0ULGLZTScuImgNea0+GbW4TB/7YpF3II+B+9/ND/jPQMFXN+kXZv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134194; c=relaxed/simple;
	bh=0zE7xYLgIhi0GfSkocxx/f7W6k7XnCe7vZY2g7bs5LI=;
	h=To:Subject:From:Message-Id:Date; b=fGRrDlham7v0qiZYmtiaMRu2PRQ8bSHZLCrk/zz29f/8RDQS6XNPxl2+08c4mu7POciCGFBhz/V7eqc2lIAJJrU9cw/4AuVknfjaiQJK6fmmZSnPSN67QaUzE0bKNDR8IrGuEIF8Csvh2sg5JH9Pj71ydQVhMSfA/ygNQGVcl9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXqh2DzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXqh2DzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1447C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763134193;
	bh=0zE7xYLgIhi0GfSkocxx/f7W6k7XnCe7vZY2g7bs5LI=;
	h=To:Subject:From:Date:From;
	b=XXqh2DzSJbQWJrFPmjkqkRZE18ZS8VW0TWCKSnmqhtY+U2ys7kGUMKnIkEALibQyw
	 Of/vFfOzYsFjVTFZuvCICg4oeayORS9LJw4xsqxDr8BmX72j6dmBJdmgfIvf63SUj0
	 VXcEp0vu/ULFi+5eT6bsHV7BZzzRTduFUz+bMizpVRdbB5f8bRFO42Ul6Rgk+XSH+k
	 UXYWUSvXqKeStt0PExnry9YMtXPtnSnyby3T9n7XaKk1ec8dd5a9IJoeKzfsAM68eD
	 rx0jranf9cE0mZexX/s28AyyQ5Bwlr/jlXL8rAvP3iZF6Q69q9UMX7A3WFJsJ2k+vG
	 ticpwmmQpXxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E3CE8D44
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313419360.28312.10431048421396513698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b593213f6d453818ad2c5815b84d4852518ab4713597cc018f23a921720832a
Date: Fri, 14 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763134193
