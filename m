Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CACE1A01BF
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757627394; cv=none; b=YaApeSTgsFYoCIVStYx57wC6fkqu17EB1INlt/Qw7dboE6q6yT5D9MG05DJ62ug4+2PDEs8DmveTqFJYwNWPoj6Wx6JKgm49nBFeYf8k0ZsgRXUgfg8DqYSUM8a+YUi/zMvim+pkGFYhp+tVK4N97aNC75X0yPJp4R/d+JYNwOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757627394; c=relaxed/simple;
	bh=aTyQYgY8BNUl7M1mI9woyOHo3OEn9s520nEOX57sUNE=;
	h=To:Subject:From:Message-Id:Date; b=NP9vljtKRbG+YM7OZAUcBdsFzOA3nWdVSL73gzZEGvNCA2+YmWHxU2Ey01MckaiWiLqx6fS3imaU65x0ol4ADFcaG9fl7Qj71k12gqIvbUldMwA7qjqKNuyw0REpEZ8UuKIATiot5o85Fu/CJ8OjAbkBKh/dLRgl9C+xh+G2xKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmLoypVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmLoypVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F351C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757627393;
	bh=aTyQYgY8BNUl7M1mI9woyOHo3OEn9s520nEOX57sUNE=;
	h=To:Subject:From:Date:From;
	b=WmLoypVKjES4vhplAidpnCn3ox5lMTfVCae+iNO6www/9tYEq8QtJZQxuZCpx10FD
	 x2cx6Hs5A9g4J8Yh7NIOLtLXnU8NjedJa5j7MkRm2Dxfh26u+2VNjBUkMNaGjXLHo3
	 x88+pwlgfoS7A5lcRrDg4I2pNgpuzPxntIcl5l5vNpukd7gevUBzfGt8ShKpOUzYna
	 pQe+UW8HE9UUbyjT+SsovuJYF24gyb77BVQUh74CbT6LbZAHGNgu39qvcPhZRWbMXr
	 Ip7pPWzaeBgHFqzQKVmmDhvO36pVzPFUiZ0J2UU7so62kQy7ulXk24hM0DweMTkluV
	 2l5XuCxgQ/mmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90297CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762739358.25341.14043362329164116282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e1f88ad4e603313a1f7a857cc85c76f6aa5bd716009da5db045c698eec4f3f
Date: Thu, 11 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757627393
