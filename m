Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A3830C37E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774121694; cv=none; b=hBJvAnBidTGs0LgFMnWr/ZKijUfldBl0VgloW3q3Du6mg8AYOFGUKj4vhSpUzzNPIngFjuMq+okUoIeKv9qEeAXv2y5yfF7SOPGOP5c09hdwMu3OdODSXEPbaNucCOWbLrgo8t5kpAOz/wT9CjeR4jNhclRMhjDAtmwRjxc4AZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774121694; c=relaxed/simple;
	bh=BAe5yC4OYL7475cNa9gAVj8Dufsw1GGWS2JAQxHXPIk=;
	h=To:Subject:From:Message-Id:Date; b=gazO3O7qCx6xi72XSvhDByRJQQhhrLI5RBVyRv8d02lcc7bpcnD0/nnWM63CXLAmQ2cPcQIrt9LzxQzEH0q/Aa0pdfDDtuClD2hUt2VpJROOuFpdP0EjhaaZ2i4VYDQMXi++0zoRyoyE8vAwglGxeOJtW6QSc5C1S3ER4d48fkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X85c2vZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X85c2vZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A8C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774121693;
	bh=BAe5yC4OYL7475cNa9gAVj8Dufsw1GGWS2JAQxHXPIk=;
	h=To:Subject:From:Date:From;
	b=X85c2vZhuQNw/w6qMBh/Tgjx+mop18J/1Ls65pNCJhlEHKp82TFTpj5uWQ3LEbbx8
	 yKV6TA8/vieLnBrHlG/TJTdZh6Otpfa9aRC4R0Aj7xU6iUvdjXZp/wGxrJbhbeMG31
	 v4l/EDuF40qdRCpBsHa9cEb3G75AzZgNqB9nu27Ruiz6KKpQXfkoAAD6HvUY/sUxOT
	 HC7GK4VQ/7QO0CHV6aFUcQbibLDmepCCzp8a+kohO02N3UgMPdSJ5gUq0odmu2ejxh
	 zrEsf3az521PIPs0fgFEzgpoIqJ7pS1cAtaN0dYhgwCBx9wDKlIfaRsMVUOkUyN9AS
	 nx9LIMWoPntew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9349D109446F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412169357.30423.15447301674962824425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a1dc03ec131791d0d8f558678b405a437490ca8ab2b4e820f861341cd8fc66
Date: Sat, 21 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774121693
