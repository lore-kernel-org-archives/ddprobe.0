Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D57482FF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724175354; cv=none; b=joXOQ3+DsQgvP+/YKu7aZ0f0U7BUfOLAYDSbMayZszwyusxkLBnGGnOW71isP1SfwauJZVqEgmNrRzuzs0eeEzGVmdVPNEXWwE57om8Qr/TtC68XQYtf+2FFP6gr9f0cOmVPRXWndpTFrjH4GugQt9Ug7XqgPJowgz6VdJmZCjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724175354; c=relaxed/simple;
	bh=dnv0dauqL7ephinrmSIPbyiCh8+YT84cSfBr6bRJFao=;
	h=To:Subject:From:Message-Id:Date; b=UyQZqCnEyDfIQhLOrjCRUoBJpve8XGM0tzmo7HFIGI1EODHl7H6+OyV/6igNOhFOU0/b95LArwzfYRY11aVMYe372E9mTDpCPbRuNrjavh8hfhVsWQBwxlh8/653ZW7fIJU6k4nzKB8moZ1BOebOBnNhpIdFVdhFBa/7swFkm4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy1jHSjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy1jHSjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8B2C4AF13
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724175353;
	bh=dnv0dauqL7ephinrmSIPbyiCh8+YT84cSfBr6bRJFao=;
	h=To:Subject:From:Date:From;
	b=iy1jHSjvkEdY3PGLjzOLahmHjpJoaAS09zX4C3Pi5zl5ND7LPPycVxKUlsGAMy6h0
	 V8ArA7qFhMsd/DepKjsDDHoLC77wcQ1ehK2M7Jsu7Ss1H4xXFfmjUv0RijgQ7y9eln
	 zygW3LvNLM7pvjW9UkOrXk68yiM+8yz1gsKxMF8PCsVPCIn5X94Rk/rqIYMBvwH4pE
	 ++Hgw4yDxi/EaIplwOexbfGApVjX8CDaHMMkCP5NsQ4QaEc+8GBoz4Qf0kQxCywA/R
	 3UA3/QcMMCMqmf6hriNP9hiBvf1q8g5A+a8z3uEmFb8+nqImj0ah1wjj0YYCRs96or
	 +qYnyqLEvkOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2C7C531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172417535363.25362.14603938139479372473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a6247de808d55de5527f8c6cede5c77457e1d165a79d772a82911c2ca1b828
Date: Tue, 20 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724175353
