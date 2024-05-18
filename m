Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0508F49
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716069743; cv=none; b=Unx0KSPvxv9ZhQjQ5v87FE4wIT7eC+Cw85gE39aiZrRrExocTw9R/vQWS7imQRx7cvrjm9vvMOxzWN4u4DlM5MofVtetqzKdVTmdxn6TxYzHqphwoNwpYoegrCOHHCWCbqjikzqvZLFGyjUq30EG4ehDDhNpelu7TtUjdPZUye0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716069743; c=relaxed/simple;
	bh=2YoVhQJJnCluu16rAGkvARnMEleFnYBcjFgPHayiq/I=;
	h=To:Subject:From:Message-Id:Date; b=mw/9X7sE4zrkroP9xmj4yHx8fUiJMTg8ngbAo0Hlr4JGmJj53LKFEPYhOTtMozQcF4qo0h2HdhTBP/CDOIXwXSp7eW+Y1SvJHPkPDXMxpU4+mVtStCN14E3TbovhnNKpADRQ9uI8jtrUIigySVKNtRh+/r4pavZAl788EYvegXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doYoLt0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doYoLt0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E98C1C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716069742;
	bh=2YoVhQJJnCluu16rAGkvARnMEleFnYBcjFgPHayiq/I=;
	h=To:Subject:From:Date:From;
	b=doYoLt0mPEMYqXgR2INzYHFo1VhzltPLYhKOA/0DfikAuHuJGWjIU38gfRAS0tb6l
	 YBzifFHe91OZIeHKTEesR/8gfS04YlyKLqbtrw3/yIHv1Ql/SpSWq2BtYUk/29NgFW
	 Hu7LwLBQ0sqzaPS53pQh0VjJ60jaDuk2aH08Cty9qutdquXmVLH6uJlT/4Uj9cJE9K
	 PyInJ1Ds7di91Fwgdi74Yd4B9k6uGPLoQ7EcNrPbujd1mB4m2hN2WGY8W/wVnxjHtI
	 MoQdnciV8xQC2m6irMYxuPZorzqiYzwEoAiicSNLNK9wi/RTn1/vOcKjEYpd8NWzKG
	 QKhNpqGOfUD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE903C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606974282.29792.9575851503592288131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2478b7d36f353ee8edb6e14ccc81b9ba504ab4fed41f2f6006fb3490d796fa2c
Date: Sat, 18 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716069742
