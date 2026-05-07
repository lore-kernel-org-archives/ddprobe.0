Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91A33A9CB
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778139454; cv=none; b=is/2En6Twvm9OfWrONRy7qqyVHk0lRbkgz2g/dhCPwYL19t1/0xzjnV4XkjDnt5fr2qmELxTE+43GyJzZI88s0kMPEhN1MAcwQREyaxtc0ecoZUOeK4sXbvLP8o7VO9Nlz0D49pLl2gfytOyE07HgyxLYLuSaCVNfltHgKaVD4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778139454; c=relaxed/simple;
	bh=HUK9MIVFlRvF+meH03kRxFaGirPfNOexZrj2WAvyaxo=;
	h=To:Subject:From:Message-Id:Date; b=Q3AFAsx8+uom5P7chTDarG3sn1cvysGhNJrpbwLl04qI809dQYyJx10D25fGskLFwi8FtilJUOsxiceaDg6nAhGsIpT165PEM9hy2rmRgnXT/2xllRvQhKLEVAjNC4e5NJJe5puCDQWJQcaAM0mfpNgNl64xMHA1FUmtQ8WmKTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4ygieaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4ygieaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85ADC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778139453;
	bh=HUK9MIVFlRvF+meH03kRxFaGirPfNOexZrj2WAvyaxo=;
	h=To:Subject:From:Date:From;
	b=I4ygieafwzNP0l5DYoQN9JuhlY/EORFh5KZDM7tYVHiS4lra9DMlLrQ0VeLGlUvSD
	 QLmaCnpXlvdRvDSMkjdnDiduuI6T2isMEy7YaxSzlT2VoHBkmZQTiSqBnaxfaWsnTW
	 mI7blMCl7xFsk+JC4GlVuzO2xHkwtALqGfqD3tTbO/Ro5bydyTgV4OzsJjPH2eAwNX
	 8kRoP7qxZGBw1NDRUqyTdlVcnfLeysyvnQnHSjD1EVDGEjT/QiecIpuTAXYyqghaxc
	 GaiMOeBwjB95LM7k728kjei7HxVVvjAcfo2aCGwffl2qAuGI98FAQ6aKlKV0eHeXWf
	 7CBnHqrWMaKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA93DCD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813945369.11397.15104649926386034127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a62e948186aa81aeb37e756175e478b5ab26b6465918db7647ef6e3b248189
Date: Thu, 07 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778139453
