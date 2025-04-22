Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B4631A89
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745287194; cv=none; b=gVYi9iNW1I3PWg7dJTdB9/f7P/gBURYqeqAt/N3uVkZSCCT+9M5PHMNzvCvC/k/pUeCQpJRR2T+i5OyKOJMzQljNRMNZiC5Iyncrpd65Dq7bxNJPAo8WvUsuqr+8C/ulIeiv5YInhewDJG8X9a3+PyxfUvhPLwJZJ6a+nVA7JCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745287194; c=relaxed/simple;
	bh=nopxa7xDnp/s7Kv2dhzClfZQlCtz6wHyx7Qli3ijb2I=;
	h=To:Subject:From:Message-Id:Date; b=tZ6jgRrAqLhU6Xm6DM1SBvJhYMEKUWYCRfEZv8WxnwuxDSlCxQ3pW/2wanlgtTt2jIxro3WxNANPoqMKLom8ja7wrYPYkiIChq575zAkgF9SAI19Yjjpyzw87fBz3newBCqrhEngP0nm3eSuBae/yXsG7nLIKpdyUyGg56ErfLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2QtxNfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2QtxNfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE7CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745287193;
	bh=nopxa7xDnp/s7Kv2dhzClfZQlCtz6wHyx7Qli3ijb2I=;
	h=To:Subject:From:Date:From;
	b=k2QtxNfds+f46QhUgPCYIQyC1dpQK3XqSxyRAY/d7uayc5ADzHbQNaSP2RrlYxJTA
	 Qfu6TLd1itt0MBkVU2aN65VXJsppbF1ZoVgeBnWAcT0NEUF4zPJSC+X7ZXmzFjOPTl
	 Rby8elAwAgWyC9zk5VzUq2A5YaIp6tYW93yO8ugulbuDxO3R2z0o9lLZ+eUoO/1bF7
	 ifnRy1s5iJ9iBJOTcHcSDj1v7hoiHBL2Dy9TtcZ/eCMnLa1x/OkHjKb5JBQSP8knxs
	 4jAyADI8umdEsfpYp3kHCKQUCfOSTbIWy+NnJYURlH+ViBoQxqgz4ru2ZJSYaMOP5x
	 Jq1zRNHm8mI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D949C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528719362.8902.14319508597148070063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf8ed07b6c6df4ed7958785477db0880714bd85f062ad49ec5f31a596715ec7
Date: Tue, 22 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745287193
