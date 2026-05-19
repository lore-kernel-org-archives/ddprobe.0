Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75893345CAF
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779215434; cv=none; b=Va/ov+SS7BkruwHmOpKPs3wORVVKzYp9VDuFpTILVzNxHW2Hm9Dul5YOEY6TG5t+Aa3KLjnrWP51IqbOpkN9RpnPZOEyxc8PAb4YMqoV44z1ktbmLYSVAyNHt+3SW5VEDD+OeLC2kagGnU9dShWREhnUzQnWUgVz7l70SDWCOVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779215434; c=relaxed/simple;
	bh=tzPsLlOYcwKgCbM7oeoWukeJn8tQbnkluIKRinaIu1s=;
	h=To:Subject:From:Message-Id:Date; b=f8/WO9a613wiyNm87r3MAn5rmRSIVWu8RBM5zwDgqJUOgCZ5pZIMDtFuUmja3Rp6W4wXPiV74w4j15UBO8wFh1af0cN/KxKueCOIn20v+VYOZDkPhy6rtLCroWlA33601wBoVLDGp4XVS43yj/EIGs5mg24yNR9bQ9NSwcayhms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYeF6sE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYeF6sE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BA17C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779215434;
	bh=tzPsLlOYcwKgCbM7oeoWukeJn8tQbnkluIKRinaIu1s=;
	h=To:Subject:From:Date:From;
	b=kYeF6sE44DaFNkc8Ji81KzWk+U6MGWLKFRcJps6BNZxO8L9sgteXGeOQHUHsZX6db
	 22qnck/urAknUVwonUSy++ntQDndSOcNrxea1bjIjmCEBfVC6thHShzFskse5ehGUi
	 PsHdvoVVFIInLbf03SD9lx3za7o9kU+1rrw8LP6gUNUKJ9IUu55FyWMHnSygIsGz9l
	 kzFzB+aoNCjD35oDK/0ewpZSZpPE/6QOJOr3R4Vtgsqx7QlyQvyJjWoCgjfPGwf4UL
	 Z38wEgmwPn2q/FN+MNeTQSmOFRgFdpvvqhEYeWoWDMfhvPzjcq4Q98dct3qb73erWz
	 d0Frb7yB4GWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E509CCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921543390.1474.6265177200071411785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1641e5570abb99129ee1eb079f2307af0b2023e696396d66a75fe6381e36c0
Date: Tue, 19 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779215433
