Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A06B2F8BE6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755019794; cv=none; b=SUw4XxCks9Hy3ZDxlWre1wOjG23CiNUBZsw/NVkhtXLCaBGqufy0k8z5g0cD6DKeIEW3ACEZ3zHJaYv6xqNor/BsIpKm0s+AvTYh+9/057JMMAaUhiKgl+/VjxiYU//COo1sIM1YBhspA1npEcEP2SY/qja7HyyTtVJvSXKmKGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755019794; c=relaxed/simple;
	bh=oo3rvqfYJsNQOyx6K3bkNCyD4+XiOi7vpTUHVJqc0rE=;
	h=To:Subject:From:Message-Id:Date; b=KID9FiGmYD226QiL9vC41sgEGMskWJOr+RAJiaoW6QxeQvkmlKVzLQhw5pJgautMB3/pHGOsMV5VI+fR8Kgq8MDoNRS4QvQB0d+H4R4/5JlsoEfWXkylI/A7WnrLr0GrNQhjUhARgF5jYRmKPsT7Les+fhgfIu7qdkIAsZjUVo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u57V/MZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u57V/MZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D044C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755019793;
	bh=oo3rvqfYJsNQOyx6K3bkNCyD4+XiOi7vpTUHVJqc0rE=;
	h=To:Subject:From:Date:From;
	b=u57V/MZl0L/VgyGksaSuLRARGj71ncU+WF57gqk68FgYBBIhm07TvCoHGcK36VZmo
	 Lz+yzu4czbtMFnMIGwsRc1zulSxY/f8+O5r4q9KaK7r+L8gukAjna+I7kViooNPdoZ
	 wSpJFuzVpzODXmePJ9atUF5XJejqrO6N8lZHb/bGfE1RcuKubJQ0V94pFY+5z6xxHy
	 dboBCc9+b0HAw6wAzmJgKJRPpSHd0iJuqvSZYIEo3XbVvhgC5k8/uEsVVtOtzlwqbG
	 Sa1xLsBZzGVsXkgsEL4ZlQldGZZsaYiPPoh7nb8VM/yDhveVqDLcBnwta5ShLOPGoo
	 Ejp/sx0YR37gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9FCA0EDF
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501979357.30152.16392368469481454291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d9e8be64e25c49f3acf551745f1f4cc5ba1e3c300533cddc1032d2acb7c7fe
Date: Tue, 12 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755019793
