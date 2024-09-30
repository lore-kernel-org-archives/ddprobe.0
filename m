Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F88464D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727655354; cv=none; b=BfxYB/LQ5h/aD76u6NI16br6KmThnDAhwRCJDHmIm3ZSd9DSxYdKHhcNlpQJiGuOVCFeoKk0ygqeZpNYLvwmxpopuF4hjF5n2bKuPyYvaQvyW9HHxXnYQzz19uzEj660LUjan+rr21TQEY5UAQVqoFUf9mq93c8TEuz0Na2hP0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727655354; c=relaxed/simple;
	bh=dCh0O5OyN/JG96b4nV7unztnli0jrKHCDMq0rR7Pqec=;
	h=To:Subject:From:Message-Id:Date; b=VWQFyS9hRT2C61tI6NEbOge1aK/JmITGzFAus2BYhkS/fgNwZSZ00xW0HXGQep4+ZECNDarUs3tivj/EkdQ1UzLAeTBiJNgh2/r0uQ8Led0+qywuD3lEJrk/gUme/st0hgj3xb0XJdf9OrMzo0/LRGQQOokikFxCUeRisPbBBJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nplm5q1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nplm5q1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA673C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727655353;
	bh=dCh0O5OyN/JG96b4nV7unztnli0jrKHCDMq0rR7Pqec=;
	h=To:Subject:From:Date:From;
	b=Nplm5q1EahO/xuDbN1NeZMIAYRlsILNq3WEM53GsIVwy6W1AHhy7vrMJKqwzwyNh2
	 9Y2I5hfAfTw0ZTKYOgQkc9Riwdy7HAz5EPAw0BCbQuu9+M+8Bx1LU+PHo4aB4DHpHh
	 TAkISqg0IEMfk6Hr0hAT5pBplLsA3ukovvGDkGsgdrkKph+2uJcPWkSwcLp5qcYjM4
	 E8sWXv7G8C4tRQNCgi3hLDCz4zI2krj5Pvw+Gte6vyJyM4JNaP5z9IbdY5TZvswaKE
	 CUFIhnMj9kgXJAc/CBNip/LEpcxpGesZgO06bhhPIM5zBe/oIIEPFrmjJoS/q8lXrr
	 YNj8ds1GC+rLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93734CF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765535358.17615.1452329610664627266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d625df2ac83893e8a7d7f932898dba8aa316c1ee8234704dd25aef354bc016f7
Date: Mon, 30 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727655353
