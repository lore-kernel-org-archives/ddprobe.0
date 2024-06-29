Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584597E572
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719683063; cv=none; b=ZzjzQQcp9PKgxQpbb5bl/0QE0J6tLbrjBcpNFvSYxSkePMjGaZggH7v1puCmbu9rhKBUiCD0jE2MK8klwRX9TX0cEx9Xl/cFjFYTD0JHJo8Ntm5Qe0a+9popGHxvDGV50TfcqQduWja2E0KBaJgjmO17EMxOuAE0q734Lq5bxxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719683063; c=relaxed/simple;
	bh=aNHdTLL6/dVjOFKFsVozUN3JhZqwkP3NTrgSNZ76D5g=;
	h=To:Subject:From:Message-Id:Date; b=oS60BD0xgT7uJMUfo8M4bcnudLp1XKf+4ThcpFOrq3HN0+sGw+Ybz2cDWotALcvX8giD+Iy8EfwDEkR0Ohy0BotDmIdf4K1ZuHDi6IxY76pNECyUymQp9Ihno5QheajphgM2/Szewlwzyl2YAkfyODMhaUfgex6oCBkc2oRg2Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0U4QpPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0U4QpPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8F1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683062;
	bh=aNHdTLL6/dVjOFKFsVozUN3JhZqwkP3NTrgSNZ76D5g=;
	h=To:Subject:From:Date:From;
	b=m0U4QpPJQPJ3oLN0bh8FQM/otM+cVQmpeOWxmnGrfTQJrezVctUmbA+Lto9K+iZBc
	 +p+NhSUxpppsmzOiroE/jXhCEi0x0Tmr9O86kD1WtdVsRXKoWmcrIgsPC6fBiJDq3I
	 zhDiBQ5z8Dg8vekKRvuuYcbD6ppFDeND07kTSdOjlchZzUUQs4XjNnllGbmrtyKHKe
	 ToCxjuwFgzzblOeYrnCB8xo402/cYkNgrx5GBW8DlYvXuRLjlcYVZSqqEhjgzIN9th
	 nxilqO6EnXfXdBSGnVr/5sfxTawgCgfzkSWIyPD3FvRrl5RXVOaH28fuIjEslmBoLw
	 3uP6BQqrnc0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65DCC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968306278.13439.8466623492118917542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2172ea3cf242521995e9623475f93352eb7dd6b62e1e02cc3a4687f69abaa621
Date: Sat, 29 Jun 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719683062
