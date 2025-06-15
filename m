Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A981E1C3F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750000794; cv=none; b=Y/AwJDKRtiSUJmxlJBdVI7RLdm47B915X8wz2/q1q0+/C53SiDtezTrkmg3msCQU4V2rsvHaZbCWzFHuhXbV1QvUWQ2q4qYX805v35xhW/NRo3ZutD5LYlU7jr+pzCbCV4sDYHf1TdYvnSpJe+JeGH/1mPB/6WFlod1tlLtx6MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750000794; c=relaxed/simple;
	bh=ZFiI5//C/BDTQiPK/yCKkf+aXDAFkZRtk6tyvXO5JIE=;
	h=To:Subject:From:Message-Id:Date; b=lhZRLoU+SE6nmXlxtsLMYKyYiZoXOPjwIrNlYrvvKNxGJPzJOuVh/Ynb8IntEpGPqwE56IznOjOJt+zsYRFtN6kh445eBUDVkSzubYQCyb+I5hA1qbz2lqlCvFK8ZT6sc7QS3v1uoyVESooCpSG4AePb07BWlQEvmenWf5Sh7Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvy57z30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvy57z30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750000793;
	bh=ZFiI5//C/BDTQiPK/yCKkf+aXDAFkZRtk6tyvXO5JIE=;
	h=To:Subject:From:Date:From;
	b=Yvy57z30ZpmeY4nbT6MV41Wrw1kXZ97Tdk/na+6Oaw+0xoOH5tRq/28vjXAaAJYCu
	 NU6vZjJ16keO3wbzekMv58Iz2SSQF7BhAOWa60xO2xJeyh1zDQ5spNHsB4frJZSsWd
	 HpoRvm3YIDYHKyzPkdDEReBWhS/ZqntGYQwnUu/lr6wGiaRi/ltAeb8rItNExdvMi6
	 /cXv+gTKbdrvfPdxn/yRQ+NLSwJNkDKf0978+i3UyD8P15HuQOJ3XKKt+pO6YkooBk
	 2vuR/syRzHgaVafF+AzbQtZAflzx18gsauCVbcqf+yJBP7b8NxDuWNZwjXEUK1cMaV
	 VjR+VC6rG2E4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F827C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000079358.23991.2746311140106545580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910a7f4ee29c9029218b04df91f09025fa800a13fe7208146d5d6af049c7b1ae
Date: Sun, 15 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750000793
