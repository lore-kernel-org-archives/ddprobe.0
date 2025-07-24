Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262B52E370F
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753400994; cv=none; b=lHQepEr6BzYlBWyPdeY8qXJT6S6cUtmcbf/k9+hdQGhbrSSQxcrbpqx8hZnuw1VEkLANQoWVqNE6sx3ueEE3KKPrseD5+6yUMwqLzssuknitRAokTcKq9wbVPZ2ob0uW7XEaDjVpvXqjf46J9hnxynYuaJqZFbzSQrGf8UUEE+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753400994; c=relaxed/simple;
	bh=vR6ey1dmVJAcmQRJGk5RK/9aQ+zNuSOcxMagkqDpELM=;
	h=To:Subject:From:Message-Id:Date; b=fmGntwa1Q/y+FLFGC0fm9cZD0oExMYJGA4YnFNcqu2bTNzPo0t2aj6BuGCyaZiYzn393bFXDmWIm1pISz7kT3WccHIJTUbpA4cK0SV10FAowrJalnmpyxaCqF5f8IOo3qgiI8HJ/CsrULcafTKEVAWFlKyDqfrL4d0upVhJ7ONw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjbrlXqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjbrlXqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE454C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753400993;
	bh=vR6ey1dmVJAcmQRJGk5RK/9aQ+zNuSOcxMagkqDpELM=;
	h=To:Subject:From:Date:From;
	b=cjbrlXqzWTvg35/7e9QSXtD6x9GDluNSsMdCaOcd4bM6FjMlOTXtMASKrDHEIwN2t
	 uNfNQ/4GRPClBe5GPvbJPvloQgb4EXfYLYFLkW5LUYqXUMvW+DjxmI3fViBwjfLHTu
	 4nFQOGmVflW6wXNZmYrRFFbcjHjmemiupWi8Xs54WW1iKl9Be+FPg7sNaUIYyYeDYy
	 L4WAdtD/xRNz35vhZsxS5mU0g2n1bZ6kPfRnj4OI7BMFAEdjwI2e2kr4vvPmot7Wlq
	 fwTeAe+EfeNHx9jl7PZEghxf8tQDaCOPnt5y+n+aRLNc+gLzUh24X/O5KgDl+DR5Z/
	 4lqwx5OVslAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5A1C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340099363.15156.1289136780104109363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4751f249be9c62736b95f53d7d48cdc2b52e4bbb092a03014dfb903d683d59
Date: Thu, 24 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753400993
