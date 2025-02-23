Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D931EA91
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740316134; cv=none; b=fi//WoT9qrRBY6CS8+OCwNPXxRPxrupxlHlp0eClURRriW6MFa0GJUf+nznuHW6ft7GqgQXbDt6eLZGyfoyydJybTzXpaJX8lj+2AZzCKbI6gEEq2bSsxKswlWS1zbp5BHlY8KuHfOpUT7HdPtKahtkNHWhoJQdng6CRyCrZkVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740316134; c=relaxed/simple;
	bh=HTF1KzWEWFAFqQgcM551anc5vLbHmJaf4jF22JxjHfE=;
	h=To:Subject:From:Message-Id:Date; b=dtIT9qNVUw6x7GrZoUkoAXCTMsxiRDKZ2S+cGXgsmsxwfL85dQGNJAz0GxBw2n8Au1Z3D8IKfCpFFBYnz+UJ5pQVbG1tplwaeY9gnB54lETezBbaUH0+72jveSojGtLVzTwZLP6ZmAeAkmB1k2NQ+kao1iscV/5jOtYCpZp0oK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rs1LLHMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rs1LLHMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FB9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740316133;
	bh=HTF1KzWEWFAFqQgcM551anc5vLbHmJaf4jF22JxjHfE=;
	h=To:Subject:From:Date:From;
	b=rs1LLHMF1Wk0xDg2YFBakl4fwt4nQY53CDy/jGl+POgljggLuDT+ZSGZ0fXvLGyqg
	 NecnL/pD1QIGKjsErdmtJwp7YxXuglHxtzqxIx18W3jvXR3zbnpzwxwTbG+byxdpec
	 FOc3Oy5penuQyZCDuDc50R0p5Dutq5LIA2/F5uAZUexT/anfGgEdjw9jqH0It82iyv
	 iDEOth0NBLdKNnwIT3MAdOvaJ4n6OBtZ4EuBhfKqR5B709Wazr807p4c9TQdoOYEWH
	 rrVdj4P7RmnD4ML7RRiquY6gNaP42b8XTI41PCHk9CxhzQM/htglEpZYebupMOfl+M
	 A7SeAFrrEI4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8E8C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174031613362.7007.11037746952953860011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9910c79dfdd044bfa83ec229b1c59ad3fd8e96cd54f62efe96342c3325151a
Date: Sun, 23 Feb 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740316133
