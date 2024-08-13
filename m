Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2741E498
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723585554; cv=none; b=F/BmyothudLvAIqC0rHCtBNwGeBHxGLW231yOebYp+OZJHCG7oGg250ln/hO1Oo1gpwEPnUB+I23qqpvN8DsWjaQlKDYCjvHBYIgGgP4HJRCZ/hTFVVtv5YmyIUxp2lh58ODKgv0fixo3cpXV9Jb/c8Pzjxjo3FvBmny2vQlirw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723585554; c=relaxed/simple;
	bh=sv3HYO9b75Oi89e8qAxMBwxv8e5S8BzUUC5z1SMZoOY=;
	h=To:Subject:From:Message-Id:Date; b=bWg6YdlxN0OJozAaHTO1mn0t8lPc9tP3PKlGrng5avyxSmaos4put7PbLSMk65qdmE+zRgTt9v9rCpBIRAJjO5Y+NnsiQa1WVinSstOP7So9XErNd62XZSJkwac5MUCA/XU0dUFZxKhf4k7R+7HtMjvnp0W3LTiz/CF2OeKruNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf/UmCH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf/UmCH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7745C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723585553;
	bh=sv3HYO9b75Oi89e8qAxMBwxv8e5S8BzUUC5z1SMZoOY=;
	h=To:Subject:From:Date:From;
	b=jf/UmCH0w9PCUXHr4dNBYigjkrAxYr3jRAZArqur92SWxwvykpsODbVKJgC4ZIR4O
	 k6cmEJn5q2hk6lFAbP3KzwnEB32Ui+uChT4tbMJNB2gU9XVFIRtu+d4p2Lzrg9inM7
	 zBe8j5OMG7DnGturg93PdV1sd7Uyh9MgIVlT9x2Ax9c/I1BjhceFx1Lbe8ZWxC1T9k
	 seRSq+1brUy1f7x/UfqTYpFvDUUQzu+shooQlMd//FKrrUYxNIosnRz0imSoYiSYLy
	 zoysUr2/rFKzyuNaUxHSet5pB5z+KdZa/DAxZBQxrtd2MP9qYTpamb1mBZgZxNIoDO
	 tOTVlCY/3Vcrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5EC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172358555359.13851.8944880051449269956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9116a93aef88d11d169aaf3f5f15b00838254c611a1fa536f65fe9aadeabda0
Date: Tue, 13 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723585553
