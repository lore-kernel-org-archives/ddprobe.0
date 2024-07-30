Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416711DA32
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722338154; cv=none; b=QUhhpT8jqFtXaMWOZXtXk/KR7gMDbtprENfkEZTEMb+yMglk4SlNhJ4PaMij2Bm+HN5+Qk0Ot8PQ7WdGLHtWNT/eJdeJ84Dci4k62A60fjrUXXvTgrxOktSEM/iQfAtYyFYtcwpN/Be9v42CyJEACM1T5exncL6sF3jI/k9EYUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722338154; c=relaxed/simple;
	bh=z2dWhGz1Wtm2znAVpknjzG9AL8Fj4fiG64CpcQEYz4Y=;
	h=To:Subject:From:Message-Id:Date; b=XDUE/UYt7c7ZjFW6k1ehdqm6peCMeuynNUO8IBq5XMF0cgRd3JcbEl9R61T3zv7PR505lP//xL300Kjg21sYhYAMjTPQB+O0YLjpmqUiAHsmlv1wVtq3Yr5hSFNMQP5Btt0DWwPJf2l4NUiIK3eRfW/MMXnsoXEcceylWUUx2CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkjDtn9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkjDtn9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADFC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722338153;
	bh=z2dWhGz1Wtm2znAVpknjzG9AL8Fj4fiG64CpcQEYz4Y=;
	h=To:Subject:From:Date:From;
	b=ZkjDtn9gQY2r8RqZlSzdVZkUNW4r1YZRoSkq3MBDkW80mvZ5nPYbApAVvd+wCypYQ
	 OtuDo/ID/eeb95pjMIj6cOeY+6hlw/TFQmTfLZHzSgBZseahov8qkd2H/4zVpc3O/f
	 SzL+hI5Ms0Hnf2pC5/fIqCZAjWpRY/nA33EMBLpbhwwPO3oBh7Lw19DhFXgyCvewmm
	 Su/32X/PJd8XYBiG2CxJZabirYvmtEXwk3qOuaMuvV1sgEu5YVkkQ7e5V3znVJkgei
	 aa8oAl+7fanzcOU2ErLLpz7yBj7qaWKBc5OF1x0An+5F6ptr3BDeZ88hg39oeYFWcM
	 oqBxd4WgrrUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660CC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172233815357.21370.9522086606121937958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ad2f4f833391c142e6c43bff2172ed0f3009ce1a3f0d62c6a6cf4f7a6df4a6
Date: Tue, 30 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722338153
