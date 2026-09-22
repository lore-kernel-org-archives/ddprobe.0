Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D96D40927D
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790109034; cv=none; b=eZhypdiToD9Zr5QJuTLwJVyFUnld1GdDjjc5DsHWS8ZDXhfLu3s4/rZe588uSIoCDXD/llROvPgJHFrUvGRzeWmYU8smx+RmXabquHe1P3CgwBIa9Zsaav3OV1k48bx0Vcr6NueNz+YL03X4/p21JPk7D1aYvPrjB1mrhTODrwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790109034; c=relaxed/simple;
	bh=BtKgt0TrcaJknRy3wC5eRPQCw5wLZjkAt4maCLNiz3o=;
	h=To:Subject:From:Message-Id:Date; b=q8speQ4tFehFZAvy3BYjF08Q/HvlTLBXyowcC9/ENnUeqnKgfsZF2Dmv65HM+HQoSRSMq062uIANRR3HBx38PTDi/R8KKqnM84buiIfK+pDqnP24Bf3NPY8M+fZFjmZ5yCtG2+BFC2bL0ScmK5Hil7nNZ+H2s3ZYqJqh0ALEjq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrlJYsoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrlJYsoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCD7C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790109033;
	bh=BtKgt0TrcaJknRy3wC5eRPQCw5wLZjkAt4maCLNiz3o=;
	h=To:Subject:From:Date:From;
	b=RrlJYsoyLOUczR5HUYanM3KoaqsEGzxR0nafE24DgMjbroB4mm/HdX6blViOzGT1z
	 GEg21qx08/Ii9hEokzH/DfVL05qmmMFFeK+KUtCibt+99LyRxro1buT8JvGF8TxBAu
	 aYvKzcDQIaRwf1mky7EsFblWrsoxlvpwQf4tgnmw0n6zokqQjwcEniyYVYSlzNQBb2
	 Vx07DH3k6nx0yskD0lgBebirskIXvxXzhJgAb34XgAYyYqZbQ3zpEpcU7JpqXAWaMv
	 4uLnseBIHsiABJXJHSvTM3pjpUa1xGptBfN1VtRkfpAh2W101ddStdXQ+OxxhBaxBK
	 azduhhVgKw5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77DFC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010903373.18256.1266820379068487553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812f57e2b903aa1df594d1b5f8a56fa1fd7786ca64bb9f6b630c52385781fc8b
Date: Tue, 22 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790109033
