Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03231BBBC4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727763954; cv=none; b=XoEpd5sgQUciiMxk/L51BjpnC1IvF9jZ2ZnElUwreu0vk7BC4JwlMr0j2qUs8efTTq5UowwL9zJmK50Fpa4M4yNItwlQG4EA+zYJ+YrsC1aGlOU5ifUjzsbEjpo8SpOJA0/0YwP1RNtLJlLSy7hrcuGBtsIjsHnxTtEnnV8yGqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727763954; c=relaxed/simple;
	bh=Dj34olbXS0aS52cfCteJTYi7v8M6UvZ++RqyuPFt98Q=;
	h=To:Subject:From:Message-Id:Date; b=shI9ydx7ghjTiUEBVhRQuNs2fTRB3Xwvc2CEBpfAcT4C8wSdVp69qs6UV8q8EI8Vyx28s4jnJiQ4E0hz8jO3mTP04IDYTDF1YbBIW/iYA6pZU6be+VlBbm0GSIumuMOCJ+NUq/VCV8ssyrV1WxvM4IZ5MguY9MdQs65IWcKBAo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1A3Afu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1A3Afu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F056C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727763954;
	bh=Dj34olbXS0aS52cfCteJTYi7v8M6UvZ++RqyuPFt98Q=;
	h=To:Subject:From:Date:From;
	b=M1A3Afu4OYvcAqqJMWXt9M0P+d9x6+Kco/AoGdxdunG4L47EpwaeZNMRWl150Ikrw
	 qte/rRaXBlT14kvSGfSuHTqyU9QkVXxee9RUsTXMNZbISixSWvptKqPqXre5alyqlq
	 73sQNrz3sAJlI1wsPakYpYjbBSKLzVak+1QhS2a9bMTIK6l1iiuLwAm57NzVCRrM6X
	 OfW/OoQDWZ6gfS+XpsZPWxPVmv02RGUmgbPz2VzWam1i9VJqbzvL2/mA7LPkn8WadO
	 EHynTyiK97qHOqav+9wxMbesislZZFmxdLiiNscf4XN0liEVmPOkmyhqdx2/TsDx7h
	 iCiwal5e8aUQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA459CE837A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776395393.3863.16487982309477668446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4cf23e282fb446a46cc200568e7f757a2c47744c4af20abbd2a3030e929244
Date: Tue, 01 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727763953
