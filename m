Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D5B2E3AF9
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752070194; cv=none; b=SVbemKoru3GLMb6MWx2rfdMwyjj4lne2Ep/0GcjAkKIKe4Q5ZlMwEyQuhEUDQRh+AhXzdQjShtmSw7xGI/bozE2mKKR1vh2HjuWME7tqVi5Y2H2o/1fFXz+XQeAhvi1j+VJDLP7rsqDwOQGeZkJiieCLPSD0o7wRK51U1nE1Bs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752070194; c=relaxed/simple;
	bh=zlNaVNLMTADa5sTeLvWug8OMhZaufiw50JdAcjlt6fU=;
	h=To:Subject:From:Message-Id:Date; b=tTXn2uQRsLiz46+Ley1OdUWTyOD0R5VO7rZxxXpUWfZAYLscLyrX/pdaKD+BWnpj4XG47ZFWpBQorvqn9MPrDX/SzWXEu28n7zrsPNMIm6nSS0nzsRSDWENrQZF/8b945u9pzrQgJn87njaqDeZPay37MsqKWarMrl7JKlB3RBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At46u/og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At46u/og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEADC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752070193;
	bh=zlNaVNLMTADa5sTeLvWug8OMhZaufiw50JdAcjlt6fU=;
	h=To:Subject:From:Date:From;
	b=At46u/ogVddjUzB+DcGuhi0757z6ocutdbqX0iVmlNVbbxgTiaA9K+MJBUuBqOSEJ
	 Q2vbESEdpo2pyoFtjUkz9bVBJB34xgF1aQOs1MCmxy+rZAQoG7e/nTiv5YkEgUKWFC
	 zq6A5wSl632AtwupvozNdbJgcPwdhsxUog6EDPv7lI+cgYmOx9pR8UnRvJUm7u6Pv9
	 dAtheKJWpd+CzXyvBtqhSnTjbd2oBkdCsce7VYyMsGsw5MuhqedcBkdBzjq7FPax3a
	 LHtbrMkbwkPwoWK/wJOL9TtOon2GGLlTHJSui4H8m5aKHas9/H+2P2vBDao1Kpj7MU
	 I2Z4g41OBgDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5CC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207019357.9089.5433291348945529380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b41a3dc40eb77db5146bc0670e2da82d27c39b051adc3b3cc46e2f186bc8d4
Date: Wed, 09 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752070193
