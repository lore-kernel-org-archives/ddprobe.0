Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0295C242D78
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754911194; cv=none; b=bRBlcWXEnPk6I32YN0mWGzYHISgDUPDrhITx4C653wei6yN3JUUbpV4BU4i5otl20U1n+9VZoc2/S6hMpjSRLYNcs9fGvpoijF04FZBQWT6afKUOTNvD6MoSjHIKP6YP8zxoRSmI8vwmTqsNV0TMucS5m1zvQyMNamTe9pjyo/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754911194; c=relaxed/simple;
	bh=5LUxYieY/+JmU5HDbXJ7W1p900x7QFnYLbnidH45L5I=;
	h=To:Subject:From:Message-Id:Date; b=n8hX81j4oU4eME2Wk4/puEJKOB6esc58gvcdRgUUhTyi6Oh+EDdytexBqWrVavgb8TcQ+kSpULVqyBipG0AvzV3y26Z6JfK6v0n38FA1gju5hGboUr0jzAxItSq/xUwAydsE+TwXiHUZsRjr5M5H8LK2NW4H5Xy7OOznJQMNo4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqUu/FKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqUu/FKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D791C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754911193;
	bh=5LUxYieY/+JmU5HDbXJ7W1p900x7QFnYLbnidH45L5I=;
	h=To:Subject:From:Date:From;
	b=KqUu/FKTB2UyJyJmKzsoKdsmuagapVSpFohKaTlIi3tU6F0i/+wCt0f4jbCpKIoZv
	 rISrU4Z/auKskfMwxidB210ykPLZJiZ5nfAT9li8yt63jwwEpLVZOL0nCWhgRppcoZ
	 IDJThngXMcueZVgeYz0BFvJd4O1zVDOXmQ5Ob1FL3MqkZmMICTylsMKRpLHipsVQw5
	 /zmxaO42aIao8of/gIJhil9HQHkBAIparpLrXZAJu+w7JYutNm1VVCgdJKRYJU5Jxl
	 8wVLSyEdjz6BIb34gyTK4kO2DusOp5590IP0i/Ps5h41d/sbZE8CpwiCo+V/WPE7XN
	 Yl7EJbAZOyT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABAC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491119357.6920.3590473019375442096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5400e21a2d5f8093956ad56fdf044d2a9ce2bc3297524e3103756185698fe7b1
Date: Mon, 11 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754911193
