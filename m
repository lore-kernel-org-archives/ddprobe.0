Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1664C22E3E9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286094; cv=none; b=GjVgaibDICg1y5evH215CWKIMy2FEabqjYK6xB4eTvNqxtACyj9c10y3MD+YG5Umx/CzHxuH2yEjJi9rXKJxFCDwg47eTDb7//mcIUuUu0pa3Wnq7q8KS3UUMsV4ZIxHMPenFZhlOuPoVW0ChmOrvpJhpxAZ+AXgwIS3oGQn2vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286094; c=relaxed/simple;
	bh=8xlaxd0q8kOPiEX0qpmtnGPE8f9uEsCMXcJivI0YKmM=;
	h=To:Subject:From:Message-Id:Date; b=T0/1610xqhKtqp60/EfDXb+cK4FesrISSzeLt1rvNtV0ikr1C+ne6lMlG7cmVS4UpT8bST6HohS3pkdHczN1jU41a9EcPjGb4/EyReWVicmU3SRVolsOkXTlGq8/wVWVAl09wmsAtrcEUg9RgrRu7ipzBe5i8d77SQytwUiDWWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHeIVImK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHeIVImK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A901DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771286093;
	bh=8xlaxd0q8kOPiEX0qpmtnGPE8f9uEsCMXcJivI0YKmM=;
	h=To:Subject:From:Date:From;
	b=NHeIVImK8pppi7LNtVrGPcEIn04aB8WipHhLVOlNfMdNGNx7QyaTwzYigX37BZNUb
	 Qtl2xodsZDwDcoQh+qgiEinJ8SwOR/5NxeOTnwFAgZf5DXwfunJLcgbAxMJ5c7EQcT
	 bW3hExfAicHps1I08HZ0w1aEtBQvO08WvSNYvvUbrbZjFvJqVMAKMN8j+Wt7lzA6Je
	 JZ0h6+u7sUyVOyCTQd4u9dExjHrbEJB5hg7llDqMikRfKF9vvTmDXp7RFzZn9bgZX6
	 t/aUuzl9pQyI79ISZUuSkL59T+gWC/ZB0nY/TkHqOXL4xSODYgIANYlD2jlJ0iHKig
	 NhfT3PBx0W7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A2E83844
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128609358.6546.7724654090139740717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf1bd20c4ec222ff5547cf77e493ab1267905ccf5bc7cc3c8c474816a8ccac1
Date: Mon, 16 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771286093
