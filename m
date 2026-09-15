Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442653BCD2F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789504234; cv=none; b=uIZ5QK35NvIiG5PRTrsgBjR/IjpS3giVo9P8a8rvGE6IB1haAhP2QNhLauLJZw2e9PsJhELo24K+AnbYEeqgXbmV6rtAOKsuATUa0hp9EsywD57Vij4sP/5/HJlOU3EMFuZdqcllwT4jX04/cuTMZzpZbR7GGCxh7NbOiiINaqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789504234; c=relaxed/simple;
	bh=HR93lnHIZdhryjGbm9qkrF20yLm4GGO+TOJ3TGm2GLg=;
	h=To:Subject:From:Message-Id:Date; b=swmr83V6ENhiPM6w+I9LSswVTepuCmxYStBIYIh+ea/aT3jDkDez/1EBMKG/O9OGPMQ6JJVxPE3ztxrFZDgM52xpPMKUx32PYlCSRRslUnaLZakvVCOyuRaHtghNg1B5k5ARRma93MCO+zOpEt9OUs7ej4WJveNjxi/w4+b4Jug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfwYiWGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfwYiWGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9FEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789504233;
	bh=HR93lnHIZdhryjGbm9qkrF20yLm4GGO+TOJ3TGm2GLg=;
	h=To:Subject:From:Date:From;
	b=YfwYiWGV2aSal/KqVO2xfrELqKsU9CYJ+2ZWSuyFv/Y4UlqI5SSLNDbFQWJ0cy4OA
	 WUuHNku6kc5Wt4k8xyKC+zDGtCZRqU4SwZ5dfEFOHOiYBZqC8JMVJRWC6EE1rR/V+0
	 +RKJmTsP1ZZ8GcDSK5EKH9eLWxU2jF1PzI/J7l+fP5dFXpn5AM5IbQi/oJVBmmLRLo
	 xaJRazbngqyEOrN8I/LWCIqAOuxBz3UZdIrwCChYEx+4hZpnafwpEIU+c0oqeo6jbf
	 BEULDPpw+988et3kO7U0PT1sJ0IuSCt9QA84oW6qo6RQh00QkO/x0vsOZAlhJWXtwe
	 2ZS9jpb7DfanQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CFC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950423368.14257.15732204771600616510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625e5a29f5aff6d920aef61906300280345b8a66dc43d423b4c679e40f408fb6
Date: Tue, 15 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789504233
