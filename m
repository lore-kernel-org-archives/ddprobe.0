Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E38AC8EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756444794; cv=none; b=u50GAlngdG67gui9JlcUFWjAWOyeR9tWBxwv1LQFcalE//CdKzyfkLZF09Pw0HW3eRf0JvuOYWQfIwdBTJMcbIe66swu9WdVQG1e+MPfdwZPdhlskr3B2U21RmlIZqHFAFGrr3s+Trw+fsjhm4Bhlf2UOGuJRYtBONQdknftauE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756444794; c=relaxed/simple;
	bh=0UISpBr8HHh4L2o8mtminxkeOr5zaRYhsnm+BDo+QHg=;
	h=To:Subject:From:Message-Id:Date; b=V/EAiW7iMZD6E0TnlFcVyYvhxcwK63XuoXj4kVrfIstr2vK+U1GwESKKRpmYPWpAS3pmYM4YiT1madBvFhVSmGSaFhKXvOxxmrRof+oB407r3HPhdTK3vl5M8K/c+YUNz/PWuAdAvoSp9Gm2djJIT2Jss+59rapICt5fT7nYCe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYIOnQY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYIOnQY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756444793;
	bh=0UISpBr8HHh4L2o8mtminxkeOr5zaRYhsnm+BDo+QHg=;
	h=To:Subject:From:Date:From;
	b=nYIOnQY8juDvKHj4YT2iKHPnBbrnC25rq6LF8RhhWIRRtnUuA6OWRXF84PIf2dZyw
	 PlpCuUgVTS69EOGF0tOHwVs3Sa0SJCe8t2XGy4NoK3Aze6o9NZcz9AccbSTA2sc/3N
	 b4sSsOBUcb+HOE5tx9h6siurqpe0zgDXF9oWXoCldgIOppdD+hUtpbOqW7+StZeaL+
	 eO2RDd5PxMyEoGRSviwNl2J10As3fQBqr/Ncaba0YWi2Vhej3McSoobv6keFpFxAYA
	 AVw1PmC8Y6EfYvo21tfyf8fkXOL8XNpiLfeJxr8/gPEyBnViSF9aUQ/8Uf2XRkCNl3
	 z2192JL7fPdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91604CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644479357.14343.10406414375046496080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133a8afe323532c7737c24a2a3d990473b181a2ad4167ca7a053a5a4caa868d
Date: Fri, 29 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756444793
