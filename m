Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9C51A6812
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785128434; cv=none; b=FCbF5q9rx58XI8PkZ382nLTxWj5RpK6ZhUD7Pyn6Om00Dz5kT3AoVEEveZXOprYrpRMpYsj+H4dcxAKHmuhckYUntzhpwO0pgC7wCQhTOlCM+0MZMQm8oAElaFZRbpDDOrKrVMVmFwrssgw4Ljzeg73nGPK6PoO+wV9fiSwvuB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785128434; c=relaxed/simple;
	bh=nPL/g0Q/rO4O2PwhsGAX8pXEw9ELd0VK/zy1dG1jv4w=;
	h=To:Subject:From:Message-Id:Date; b=N6nhuBePkL54NXCq8H9D9yWgqXBC1LvMuhY5tdSeX0Pz+UIv+OH/5TaW9fv5nTGr7LDKc2ouRh2Kbqb+EkZxgZ0bM7/5jVPzbfv1PArtkUSGhGKg8VlLWtF1yx1HKEnWeOEy60QmC6DMsE0E649uAFDSJE9RL9Qxk6xaVXi5zgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz2xiri1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz2xiri1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CAEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785128433;
	bh=nPL/g0Q/rO4O2PwhsGAX8pXEw9ELd0VK/zy1dG1jv4w=;
	h=To:Subject:From:Date:From;
	b=sz2xiri1nYBEAjuEfeMraNOykmKEBnpX0DHP+HU3wbGzSpDN3ZMgu+h4N29VJmuyg
	 rt4SGG57VJEnCAkBSGKcRpjn5imxSpSkn8esCSIRJa9NluaXvfFz5IBLWVb7mwZEyU
	 8cOKeTuaDDKrp7j8PEbHVNhKQ4eW62ZtRSiil9p8El+iZUFXvv22/cEB2sDlaytmKo
	 C7S/jXvVhQa+lk78wKj6NzveQlVzERKarjydhHGPKpipq4XX8b9Hbk26o8XT15OqLo
	 Xx68TPn3WGPkmxkvgb85Q4Y4hNjT/QwRC/0jbUETTuknR8dyvylPi7/Duc1yvVVZxw
	 DLMt78eqgRLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB491C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512843368.29040.12372974838820033957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168108c83206a6ffd1e3e5d02ecdd6e4fbbc156026501592a232521b8e78dfdf
Date: Mon, 27 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785128433
