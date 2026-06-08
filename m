Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0759B2D3ECF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940674; cv=none; b=lZ8O1z13eixYqC5mFoPWWxz/sdI4AUy2rhyzAz1v5CYPaxPElY/k1L+ciJMvVhE6tXgw3MRIgeYEBDGD1Cfu00Xp/1w1AxXkVaqfhU0SkGa2OPnoi0i3vXvp7X2V4RqlTvsr37ckOvfJjsFZowWg0lOAvC0l9dpzeK5nBbm5i7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940674; c=relaxed/simple;
	bh=H/xAOqGOushybw24vwMCGHTvtkpAtYW0YlxManalIao=;
	h=To:Subject:From:Message-Id:Date; b=V2js9ixpX60q49G/bcBoNSUWKcjuyXRHQ9gEOl22W9987pmNv7NRgvc89ztkISympYpgXvNtTn7TjKrW5NODhswfFf+P7+EPos8uWJctucX9WyxkcgEAT8lgqbYAmkmlBbLW7qGiCxW28AfEdoCfIIBmIZOQxtU91PswkbFcd/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b90wRTEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b90wRTEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DD1C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780940673;
	bh=H/xAOqGOushybw24vwMCGHTvtkpAtYW0YlxManalIao=;
	h=To:Subject:From:Date:From;
	b=b90wRTEAeIMkDL79oe/SAh3FhpV2kYKgrY7wJNzfEBsCRQ3pMSWzjVcKGZWCOuKxt
	 davrEpp/roYI/CQmryBh7peYRaCLXjrUbGhb82nODWP/XpAHCz5CSKX/nPgoScnEtk
	 3mSmPAMLJgaBrPxo0Q/tp7+7/2S5lrz/JWabIOFyUnDn7+PRaCP3V6FPZp20aY6lIl
	 AKsZSQpGuaoCclGNtZ26599e+Qi5Ev/sFDfzyk6SujL8WJOJsC3INm1Xg0s2r8rgdv
	 mX3RByPS7+fDCSk7fk7+wKB5531TOEbsl3vVIqyYOtiVjCJ/ZUjqs6paVc0nueoHfz
	 UeWMovqQEdcKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B4CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094067369.16850.16357326839452572796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c70215da12eebc1f2ce771faeb730f30ec3dea0dda1af86b5480c825a97a57c
Date: Mon, 08 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780940673
