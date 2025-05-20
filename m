Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C96B635
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747736994; cv=none; b=B98A5B1miWTDVysUf3TtHFCZQHpgtinbAfcWnAWWPL/XUhmuyWQ9MKGvM0i862XUDOTYTokVfNYRk3WZ4z+7aVchjoWIp9Zz6TM//Bk3RcZEEaZ0YBzeFh4alXH2FAnwud2lQKJUeMJJPZeAycaP67ms8zrHnfDKkxmTb30KOco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747736994; c=relaxed/simple;
	bh=gB8080LAhnNAIBiiJeLVk0rhMhC7xINAWXhz0rKpTh8=;
	h=To:Subject:From:Message-Id:Date; b=risUrLjwq15N3OGr437fmow3njV9vGlKOVDKXd8whVYFP6DtaRiKsMZHQthRkD7jX2Y6A0fO14L8W1X99gVw4iI/bP8ocLuulYrJA6qrLtWbnYS7mgt0Xzw+s49I800Y6uUtAFI91Whut3AZKQN6WNmIMwL31z6H3CfCEeCwJyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa7H20m8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa7H20m8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D18AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747736993;
	bh=gB8080LAhnNAIBiiJeLVk0rhMhC7xINAWXhz0rKpTh8=;
	h=To:Subject:From:Date:From;
	b=Wa7H20m8uPDPjskcNKibad1037cmI01+PLPOwSKLjUQvF8dU2BuAHUtW8vHO5gNje
	 GtOo7Y4TlLKv6GkL8Kvzcr2THPoZnG1kR9V2Ncl7PEeSM3FdVWz8eA9DObaPRgGwVx
	 QKdG/fzw8DB03SMT3Tm5H8UxbmM6Qj6cejRbJ6Mjy/eO3Dbc6bH0kGThehNWuptQdh
	 1lr1x/R0/oPxO1+AuG3eFCt3rOlDJKB2KkmRIbsArHn8AtMOQtNuxHesjDoLTQlsY9
	 NVf1oNgXqU9lefnkQyXjIeUNVBzn62QWFzxJDrQL6CuYcm1CcN57kaeE6JPB+oZhUf
	 LEBBJVKQW7jJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF26C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773699357.11399.3961528939464028384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844164f672a5cb65870bd5ad5295cd320bbb467597b58ea7becfbe36cd8c78cf
Date: Tue, 20 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747736993
