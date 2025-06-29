Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234142DF68
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751221194; cv=none; b=I1NixVeIiQc23o+58lXmhQeZREarVutT0DgJZNFRmdhwzdnQo5M5Ix6dA2nLy7B4WfgwC3GiNO799Dt+ewt9UaVpDP/o6aF2ePIsfgXSs8RVqggSUkDt0utjDO8j2+eLeESUx3m8uqCkFYmzv/87UjmDyiPnTWN1SgnCw3yAOYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751221194; c=relaxed/simple;
	bh=GCocuotDK1ox0qqi2+RkSrXIfPwYkn7Bx869hJt1R/0=;
	h=To:Subject:From:Message-Id:Date; b=QSIgzSYtQoLU6onl4u3r0VlpdUYGgcQyk3nNAWuzLHNremwx/iOoRV4o+QUHNj0/Diqq4cqfX3jgd9G4r6Zpb5eObw5r5kIT9r80a/wBEOvHKvNFOutZaO2NF0dGm8iFdAE2RWjF8IzU4M5v1Qg7GV8v7+ixq2IsoSYI9VlRH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnSSme3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnSSme3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F24C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751221193;
	bh=GCocuotDK1ox0qqi2+RkSrXIfPwYkn7Bx869hJt1R/0=;
	h=To:Subject:From:Date:From;
	b=qnSSme3rRlxfuN2nZv5n7Az3mjBdlVptou7jbTWprkLkrMH9IpclKJZSsVrOyYLXz
	 TgsF21WnhEB7oToOgdrm4fkQNv+EqxLUtIUEKFXNZMyHaoJSt7OWN2uY/xuimK2/P8
	 q4rOktZMaawmJMIsIycKVB4Ac4MRFYYaOG7Ci0l7sD3i7hnHZ6lEQ2AQoHOC1huBeX
	 bVG4vuRKtkomv66wOGJLMFAOcKh+xeh8f062cio84GRCkptP+n8R9EeqCTyoeso/mH
	 62u8cUJ8O7Hqsp5fbryP1zkchil8u/7D7jwIBG5KEkA8WvquNQlG8A9pstvwHoDhiB
	 l6lTm70sIwoRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D5C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122119357.29124.10511783480816250638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5a9055bc03ca3fbc9e4347c566297e8689619861bb1a663989b5ca57b3b616
Date: Sun, 29 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751221193
