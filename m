Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4301E1DF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756495794; cv=none; b=u7wsgYXBnTczvKRPb8kaDOeftkQ+TcEC6PDEeco9RPlonzrKywH3yhwlSpOkT/QDgqs2Ntpt9uTM/hOs30wAmrtptdVBnY1I2OksPY37JAU/PpVZrdsciFnRne32+QHYdteotMldQsvCkbGjB2rJ89iqQR0pVjXx0Tb9OX+Viwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756495794; c=relaxed/simple;
	bh=v3+QFhG84oCG+EsXh2NE1U4c41Yp6TNOWsMGrr7xXlk=;
	h=To:Subject:From:Message-Id:Date; b=qQu/44s6JjZzpUKtAwZ7k6ymVv2s5+R4ELZkEEykCLnB4eMF3pDc824WX2ya/PUCd/gGA8rGyUMZn0EIQ2FoY/N7YjL3er0tMrFeWYrA06zKFeG9Gf262utdmmMDyDlyKEFrrkXvi8w/XEG0jnzkY30wm0iHrC7XaBxDdSi2Mn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie0CcCL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie0CcCL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6161C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756495793;
	bh=v3+QFhG84oCG+EsXh2NE1U4c41Yp6TNOWsMGrr7xXlk=;
	h=To:Subject:From:Date:From;
	b=Ie0CcCL/X6oxzGPPZY32qW9dY6aNN5UcRDOr+K+cYWlJDZrvz6lBz73BMwS6+9GVl
	 NzVpRUegqJ5nCS4YbbTc9Cu/8XIGQqqmmBUMDNwoR7vvLJa8h4/hQprGqAG5Apo0f0
	 CAI4TVyeUBrL+Jhrryw/INruKwUHxUvFCGG1kzNgfaWh2Xff06ZKmcTAH5xf4XIxJT
	 vnfrZWcRBy+rSlhy/S14HsiHMYAy9lnbKxZ324eVjYhruMwhEXzqC1UPrN0dNiQ+62
	 jjPwd8oz4aHsfPi0ASid3ROulyCdva9qxiLZEE+08LwWRA6/tNOC8OCweVKM/ThiaW
	 jZpfJmmDS6/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F609CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649579357.31897.5003279403615570603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d96b9e849e7b034a8a525cb9683ab293b2b2a1e0206ba102821d7aee642de5a
Date: Fri, 29 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756495793
