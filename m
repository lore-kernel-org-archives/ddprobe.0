Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D447A27B328
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759245594; cv=none; b=laEm+XVthlZg82seLtGL52ykdCFBkArVzwrl59KQ2pPm2HTz6nE8cyPzIDBEGqMn8pUvxw529gKfZLT8cKulNihlNZwVs7f1KfNeC/soasHjTAycivr+BOEXTwUI7oOEb1rLAjv4O8lQXIv/qxhMETSxAAZ7G3c8oAL3Zcsuz3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759245594; c=relaxed/simple;
	bh=J6vXETS1xi8KetEb2bNcfaoaR8S1qd1Sej46jLGePfw=;
	h=To:Subject:From:Message-Id:Date; b=Q7dBd82TGCNqqxgi+HCdUzCgAJBpVMjGrcxCZwqd+YkWDD7lnCV1A4t1GzQKoK5OKAq89PPjcEuqhXaWL1vx3ybxaV7Bba6NzGWYoJ4Al5Roza4ON5MHogukUWsSf90xrmeLKMFb9nf/6sCeX+cqZ9o7UbKwSOgup09Q6sWBla0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI9YnfvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI9YnfvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F343C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759245593;
	bh=J6vXETS1xi8KetEb2bNcfaoaR8S1qd1Sej46jLGePfw=;
	h=To:Subject:From:Date:From;
	b=eI9YnfvUr/chHarIcPOQ+Od8JsQzprFouy53UnBAIrfAxCSJGG0+RPpD0yhOO3d0W
	 23uzYLTCg6JMlQ2xrR32rLvKaf+HUyiRy3WwVGiI9DZDmxeSHTG2HKw9wmW3jZoOcd
	 2EIang7VRnOKA26Dld5aU+z17pNVysXKaLzAnLTBT9pel2FHxF4rwKkoaKx6n4VXBu
	 mux1UTXhZ8ouOiYFwjdD4hh5Hg87OZkJA+vcKsI0OlpfdSkv3lQza15+gDAd58G3Pj
	 Vzi5pVyy4awLTBcdHjWQWx/pZZPUvCrOWezf7SdeeUGwiD4ajVm8bMznyZb97EvPW2
	 TgBzk20s7wcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDEDCCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924559358.4820.9669106507424894442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace83c7dc9132e5d3a2122e45fb6b8df8ee738e9e0aedfb0bccdad4a91f0ed9d
Date: Tue, 30 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759245593
