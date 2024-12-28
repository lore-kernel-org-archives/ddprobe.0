Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3107E4C62E
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735385754; cv=none; b=YtCrxgo/kqFolCmTGME7sQKqGufEmqBNxzYdP8hQNDmzsggPk9puQNi9gPR2vJTqW5tsT6FUOL7Vu26pt2YTNqe7r5aETAaSl70OK3XKjR51/Yp7y5ChmC2MA8E9oDUFShVYihRu/yb6E5LsrUr4AlpELLFHX+GzvWwzuKUmCcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735385754; c=relaxed/simple;
	bh=UXOlaC5AMV38ZMr07wc5/XWeDJSB+FdVIwmUmz4JioI=;
	h=To:Subject:From:Message-Id:Date; b=WryuB4wQBc84XdMazO0rmxpZtK7xP1DK6+PKLBQgnTzgWtrAsLWYmSxYJ/WOyTj0J8j2XE6Xy2rEUqtSRE/Brq0NaJQslWc1t6NN3bOhLEpIOaK9GtlG912pTb/z04BaLyxWKECQRiYcklRDreemYHPJ+HYugx4CE816AFyUkvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcntwd0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcntwd0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6110C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735385753;
	bh=UXOlaC5AMV38ZMr07wc5/XWeDJSB+FdVIwmUmz4JioI=;
	h=To:Subject:From:Date:From;
	b=jcntwd0aPgUrhH1nwNWIfX2E8bvk7jkeJrfvOM5lWWuZrest7FCD+QxPgK1n+AAig
	 gld2Z0KNa/MffXY48o5wYgQ7sLKEq1SAbfm8HQi1UMMRX1QblsQMdPlWFtguk9GGej
	 OMKMxqos7wSzQME69LuLjcY5qmgmNINuoggS9FlUCs1W/Hzv2l5IPH56wlRh75K6Jo
	 4wVwJk+oPmAC9BlihfxqvDyhxw3oCizlvN7X6HEvHF7Ki/ClbBKgh2Ccp7ZwiwU8rL
	 +b7IPPgNV6Ol0bi35HpiNZTcqPuIeejmIwGx0HJN3QDBwZ9PYbe6c/9gNBdYU+6nr/
	 ZO8M9ft3wCE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538575358.15498.1993076257579211218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a78d7f5cdc1f8d8508ced7e8642345e23ffcdb58d1a2e201accdf68bc2ff0c
Date: Sat, 28 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735385753
