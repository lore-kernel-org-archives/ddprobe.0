Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B96A95B
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722796554; cv=none; b=m/2vLAonVS9Nd9m9DRlviDlkwOzpbXnc21edZhME3GD8T+VGu872udp3OVGvaftKjamkC68Y2u88pQLDUoDxccW6NFkx/QkIrnuu5rdwguv9FtxpdCahEiQgjlTHKk3sssphIoxEklfqzHdgrCRIuU20YWQGMWgqGtgkHgfRi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722796554; c=relaxed/simple;
	bh=a0quTfhvwTZAPPJ7S8Yp1OKkQcb1Kff6cK8qLTXbSH4=;
	h=To:Subject:From:Message-Id:Date; b=kjYB9TiLT3L9fh6Pn94WqmRq0cF8gDl1SrAVlbDGXvPQJtn1h4ES+Ef/Fztw60D3o+uqgIYfH84f3cqsQ+8SdaQeFWDHxJqxmYIrx8gV15yoCc8cQ+2xUq1scYkl2lK1jPU/MUkimwoG0z7RoNEcPhICqfymQhtUxp8FaqedqHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=md7a9n8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="md7a9n8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28DC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722796553;
	bh=a0quTfhvwTZAPPJ7S8Yp1OKkQcb1Kff6cK8qLTXbSH4=;
	h=To:Subject:From:Date:From;
	b=md7a9n8A6kPBzqyB7xktiMxGFArS6o0TVbqbxNBFFjVkHSOg986Pn03ojU9rYfDm/
	 oUa3MF8NmKJ5OXrtZgfJSuY92wrUjEaGG2e5lbhRHYc1gYOCpcdnFItXGvVsaKsQT+
	 owprIIDe0sBihVjLFyG3DI3Y9+/OMivd+qETiJJ7hq/Xs+qUwVuthivABZES0seVFT
	 y3FfydZO8evVfrVASaaFEVSol+3kJcfdPa/UNig+x6wLLZxZ0m6Lmpv81fb4dXsJpG
	 +QQJNk6RCcPisIkMuq9KX+0hCXF2Lb9m07megf952HCW/IPQsjID8leQOBJd9yBWhn
	 WiFZAQDNotUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99275C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279655359.22983.8826034557995183287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4f66abdc06885fb75b9391878918e392ccf5dd03566670ead1ba7ad3f7481e
Date: Sun, 04 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722796553
