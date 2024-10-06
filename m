Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293733A8F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728246354; cv=none; b=R0V8MoVtf05H6pnVFSzumBRxPd5cg7d8rQFGJDYP4v1s1n6cx01T2KZ5jCDwC/1PxWciim1QK5927y0K2+uJVcvwvlI3tTnpmO7vJBsVVKzrxxT78TaTX6rAde46dUkKz5eR1pkF+/XA21HLqluHYRfrdlDt6l/Rr46dqNlLgLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728246354; c=relaxed/simple;
	bh=YytUKHmz9ww+rWv9kFJ4C2RaMz7gvtDQUnHJZHnwMfU=;
	h=To:Subject:From:Message-Id:Date; b=JxHURtQbDBL8+2g/H2o6vQ87E9nZ/6ILIG2UAXKzNk2n4hPQZwDeUOy7vZx805kc7AEkZ69uBEcI7MU1RArIwsjPNazgZgnfF65ajr/7cTcrzNlzNsXjF2KCyAjOEFXjVroPP7wh4Hw3pmcyY71zExdg7G8bRkkjR9RQx+E2hho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeTnlN8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeTnlN8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728246353;
	bh=YytUKHmz9ww+rWv9kFJ4C2RaMz7gvtDQUnHJZHnwMfU=;
	h=To:Subject:From:Date:From;
	b=oeTnlN8whs/GvYLgMf+Kpzn1YPs1+D8PVJ8GLFKB3YQRCv0Knw102z7wAOmsJTUpV
	 2qCCjFiAN3Km0dFBGtsZbq4956YobXAqOmWHMbONKCd+xiwFRFFx9ke/LWOKIn4pCY
	 0EGgdzfZDd5OGbQllFdS6TG+TKR9iD556KhUwooAAVfzQ1ycMbjT1BoByKdXZXF3ZS
	 1HXRaPp/WU21oegCJddvKOoG9jgNzQRpq8ppN7kw3VkRtyKkaLaCKiIkhKXPbDcr4J
	 VNuEWITJEYkcvcNDQ9VgbvmGQOmnmlNx6VdTkuH6pGOKOxxMp7q6wuYX4ODOOHkgPA
	 mg9nr9SDMLt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94316CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824635359.14486.6087370835552232262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf21b91d55f3fda95aa69ec866b2842ab54b2a007415b1c817d11f48761ab17a
Date: Sun, 06 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728246353
