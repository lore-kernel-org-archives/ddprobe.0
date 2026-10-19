Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792424434;
	b=11E8ty8iy4JXe2/4Xgco1YL/IWKnjULFjsX3DOJDYPOsU4POL48r2utIh7xI2+Ca7jKd
	 dpg0kkRjwpTGupw5yqF55zKHOut2vl3iB50ALtYt4X7NuGht4pweFAvTVae2z/Ha+bN0r
	 CQ6BjmNMTv8CUXZ8WvYUwGw9eu9YDRHdDEWs+9tY3AACWRKbfEmelC1+D4RCACQObDOkA
	 oIsfp0VCljFORhXaEPhjRZ2/4HrJXh7RM+rll8cN/1C+2v5dKv1iioeJAYTWj5jD1xYKW
	 iddJiaNnrGOXziWf+HkgPVMA2qx9NfCxCkfYHI0wbnVSJqHQqxpT7pM2BxogFu5u2Sg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792424434;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=2nRLrYSak1jNUdpRjWotGeyvjoIfQk/fPsF+CyB8DWg=;
	b=T0fyIbJYSracgB3vcwIN5UciJMA4yDC1N1Li9WQUvfGhx1E3+5sc6wVO+1+9ZqG1RRI1
	 ZVKiL67Iebw/YzQKEqGdyc37KRcBrcn9kvr/PwB6dCBrAJ0AuONE98TChAZ7w1SEbH81L
	 34s0lQh/H20s62rV1ALV3P6Xx+BGewdPZ3DMmNn2ngraA6rxb4AlZHgeBN4H9R1dvC9b/
	 xsrsiobtyxrYAHt018TBC2H1k4sNv7Y3ucGwIlTgkj/EvZqgVb6A2Rf03GtVFnoHeMsSQ
	 jKUHysyvT9kf8zVvv/FJtdDyaWqFM+Ba0mUwUKxZQ6tIeSlZ8TAZFPgvyn94pasNGNQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=K5p2tzgB;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ECE26074086
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=K5p2tzgB
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4F66513D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792424434; cv=none; b=Nso5wJIooLaJk/mbnKauTvE4gQZ2BsYITdmZ8v79eFICVjnJI+kla3ITOe2Ssmz6AwgmKzFDvF77NmTcPDhTsD4j9JtSNOlYkldVe1Tu5qDoBpx2K/mHzm/wCt+8MrFgN427Pgt7kXquMOvWkyoNPJ9CzYZWjJtLXScjbipGYIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792424434; c=relaxed/simple;
	bh=2nRLrYSak1jNUdpRjWotGeyvjoIfQk/fPsF+CyB8DWg=;
	h=To:Subject:From:Message-Id:Date; b=u3NsQ99enDDCryuMsSVKwfP09Qwd6JsNHsblar3acIq2dMrk4Aj0OiuJ6AtJTnjNgZOve2pzT3TpV69+Dsbgc5gQViFcep+jYUINWuQItGN9DFs+JalqvGYrmS5loYqChP8sM20GxDx39SPLoWdN250xXJpkqDv1gyxx3z/jLGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5p2tzgB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB87FC4AF1B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792424433;
	bh=2nRLrYSak1jNUdpRjWotGeyvjoIfQk/fPsF+CyB8DWg=;
	h=To:Subject:From:Date:From;
	b=K5p2tzgBGSsumWyhWct2zuTWlaSvh137+7KdIgMZeRLtKsYgcgUBFm1AnQ8XBXDrR
	 qOwUOMixYHDqyvZFIzqoMC7QgxEFss2vkVMRJNnKi1ffQ2YLDEgq92tlr4HzoH5RTg
	 b8kInnrsNXb3Qk9I+eBkCZvevpP/Vz843N/kp+Q1KQi+5/LKL98CP8cOUk/EVJcA6Z
	 kXTLU+gkuguOXVf75hNpG48q/Rc/QVBK0uHITPabuOXg7JiApAfiIZHmItCD4YTAOD
	 sK68z56TfJDtyYvYPUGsW/MholxxltVoN1f0tVNYd1tATzXS4r2ZD9hxe4Vg0/Z0AQ
	 vn7EFXCnlDxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B436FCCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242443368.14150.3265759336587519565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bf80282444d5f950b5bda4e6feb9216d77c1c7a192559dc99c66b3cf6b0c92
Date: Mon, 19 Oct 2026 15:40:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792424433
