Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB82877D9
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758532794; cv=none; b=pGhfq38DFhY0BvqfCMpFNYK1tlmxmdBSsnG9LyD7q2ALMGunMHmBcSrjdvp/ju7WxVPTDeCT5WNu7t+WmOLi5F96j+FhPVokK9LOTfZ7cMHdBkdJDX3xaloRRUyghY6ATLjrEdbqBa/KU+AOJhVpaoIwj9ZLEpnkphLiNbtgNq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758532794; c=relaxed/simple;
	bh=0c4a/BF8LP0n3TmcLpzQug9q1Atyu3FtGLzFezvAhf0=;
	h=To:Subject:From:Message-Id:Date; b=Kl0dyi2AZut4Mn2naiVtRE6H85gSo5+f0jXvHfG37uRP3mZ++2gerdH2x9ktGSzdnzkk0K7CMR+6VVblhjdhMADBiae01PggNvOWS53pxQAvgLgaTMVvgAvFTksTGejIlxvAqsFuJY0oFcFDfJszv5jMFf3xS3YnHdizJcrI5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPjQltiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPjQltiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A066CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758532793;
	bh=0c4a/BF8LP0n3TmcLpzQug9q1Atyu3FtGLzFezvAhf0=;
	h=To:Subject:From:Date:From;
	b=kPjQltiWDZOt8ZqCwVG2DgttSUTa5x8aeKEkCgKTx+3bhq0ByFiRnHpEKJ4EMhhPc
	 h1s3PHOjxZ+eHms3n0KxbuR84B/ZvUOM9zhWzqDQwibRcx6wFG34bO+jysPptDjfec
	 Vg7u6j4/uwtG6tfYiCeN/5IyqQoTuKD1vYRQ9a8J2SU/AukHAlEYQesi+0YIzPWpiD
	 riT/xUuAAmCVJelcSmtMoW4dwcP1bwa0pUdfa0rjdL89zEEuAw5av55kB1245r9+SZ
	 YjaCialLd3c9jUGLeGqmDXDpLBFPmErn8N9zU/ad0LAyFgObBFCSslUh7mJ/mJ0Vyv
	 gAsxvw94ZUchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853279358.15410.3264559967323233650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa26b7c64fdc18ab8f58b52db5cf938ceff3898b5d2ed8ba7352c7202bb98f5
Date: Mon, 22 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758532793
