Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2462225C809
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750806594; cv=none; b=AaVhYPKHqlYwlwkgHojiMv47GjOKDYnfqv+H9RkVgdD3pcqyoKeSPfdO9+sPw3ooZDQuMChqVLwdqMP5u2qur9A3R5ha0c2xqyrZm6Q1RYaBr+PaIGEQQuM+VCmGmhPJyYzISWuoJl2HRAE5r6QTwYKWpXYh29Nh6aYpnS1V0u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750806594; c=relaxed/simple;
	bh=MOITS0/5BjuO39hHgC7cb0qLtzSIuQTuhiRoGgh8dWE=;
	h=To:Subject:From:Message-Id:Date; b=M3VbJ2F6dy1N7NW7nCIi3lBTLvZEB8odzrBRkZa1S+RsSTQNhUXXkSIPKAuKhptfFAExr8PFhUCVNmkEC5Bt0Qwnojoq45Q37KyJ+2uSMb/enTJDscGchVAl7AbNGy0FezZd6oXyknZIZhXaefhmkerohWQySGKN6fzCehbMqkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlLmaaUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlLmaaUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0760C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750806593;
	bh=MOITS0/5BjuO39hHgC7cb0qLtzSIuQTuhiRoGgh8dWE=;
	h=To:Subject:From:Date:From;
	b=AlLmaaURzWmfd2HSblHSRpK3FjrQasUG6rCR3UvIR7+OKGn9eBH2lGsqUGl9IJALg
	 GEDb3usIh4KMrwkwR10vp5Qpxv7c0e3XBBL0npSAc15zEGu5g2YosHupiJrPg/hlR5
	 KzC4FG99QOQ+c8krzL4avtzH714A4ZGtIzx4lp1aA38UVVYG/OCldIkpDQZQ88tZNh
	 Li3K+vJjGZFMqoEa1ggMQEKjsrxCuknscNbBI0BTWx+VJHO9ijQy4VjihHGYl9O+w5
	 1TL3TSEU3SkLH9Wcf8ieNFZHWd6rsLmQ3QtAWhAtSDnGV3jpsZFqmD19ffjHh2dre1
	 OuALytxM4sjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8FFC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080659357.15409.12713761972069745644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b125d13b148f6b844f115562f38d2ffa4a7413d6e38413b5c4db836497ba4c5
Date: Tue, 24 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750806593
