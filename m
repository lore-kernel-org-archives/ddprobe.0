Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458A721C9EA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781060134; cv=none; b=Via9vSvqjz46LJYNpBoMZ/6XeV009idZe/BdgVzDMDFeYjY0UirBZlpsMcacP0l/gjVkmnmO4oEx8ondprWgllSMwCpqz0m22A6dsMhlQjO4D+4pcY1wQoznypmdV54iYRElymzNZ08FZCGnXO2clqtyfUBe41SMmh99Q2rQHDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781060134; c=relaxed/simple;
	bh=rQ/3qUR9v22Fg/Ifky8h2ga8I8mq92ZmyNHj8D0DbZE=;
	h=To:Subject:From:Message-Id:Date; b=EG98uipBDbIviGXR28daF7vo0hh40468Smma7ScT7elzvXOr4gcPw31SgQD/2OXH7RMLBYm7rRoqcbGzfFmq/YseBbNuxIhfKpFytcVcvzb2tHlpPRlL76epHmjMRQV3Hgi7XbMdAtto3FWkY8XBXkRUX5KoPKxh1FJFh1VEr3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjBWomC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjBWomC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC5FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781060133;
	bh=rQ/3qUR9v22Fg/Ifky8h2ga8I8mq92ZmyNHj8D0DbZE=;
	h=To:Subject:From:Date:From;
	b=CjBWomC2Jcaefau1VIOGR6P8D1UMIWXpD+uK3NSvKeluntCcMoG3BQ23NGF2xb8hf
	 KwAyJaXd3pERmqlnmBSM9wJ+vYqFPnUyIcZwHhRuIDsnSlQr0XGb4FZo6ZzcLK/cco
	 NFOxElYZuIly1RNDzyObV5L2cTST7Zl9IGgh8bqAs9XwkW+9qyw99YgstwkhLDbDNq
	 OJvexhHHbhNvt9N+OoRppiLRkmUtQhcqrLvwIA5Q3LSPrj6p5FrjJ2pXkhWfukMLoI
	 RZoISSdPLFyfFn4u5nu6DNoBKFMb7uwi9kWrUujr6hw0bS56OJ09/vhEZlU7j2H9fX
	 NbTS5qaqqFXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B0FCD8CA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106013368.13379.14448094699491820993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05aa5153e4535fdce105b397f87aa6948b1b3a8384a5e104d4dc3a546f72711
Date: Wed, 10 Jun 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781060133
