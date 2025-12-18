Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D6A29A9FE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766075634; cv=none; b=rgkx7V2i6/gvxXPQLAcQS+uMM1PPf/S1K6bkNLk+LeJqIN7fEzxAjoUuX7EvzPcNxd+4WJIik5rKYd4BEQDazaZ/O+Ct2PdUhQKO/A+CJjbiTk0W9bGU9UKBOaYqRGblFHVtPvoALGZrjhMC65lpx0lkbWOJ6OfxuFPEYS96xGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766075634; c=relaxed/simple;
	bh=5yW0qAOC0lZuO2guWUGm47F9X77WUdifqucV2sa17lA=;
	h=To:Subject:From:Message-Id:Date; b=EOtpTX8Tdr42+IvGOYWTLIJTtLtTk0ntbYriXNOrYfig4RZolNQiQkHF2XskbwhFHZlRHYXCvTHlEbBDL5ryze6VeCw0g+8aVL/56w8w2ex6+3d/uyl2GDAOFDZrox1RCgatYLwO2cp7EMIWFVMLoZF43/ccntHRfY7rw8nfH0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpYEgMob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpYEgMob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766075633;
	bh=5yW0qAOC0lZuO2guWUGm47F9X77WUdifqucV2sa17lA=;
	h=To:Subject:From:Date:From;
	b=rpYEgMoblfH1KElP1guvSUSEYucoz8mPMCsbVecOO2XrHv8YQ4f5oP/7Efe83xEyP
	 imZ0+33PqVmOhbatz2rBNZ2nVmNIkJsos+WFs9Ga90bGHLtdgpKkOKsUzcWKjtRrzy
	 cwxjFN8hAaiZP3DeTLdV0t7LNyt7vhQIp240SuhY96ZoAaYoKe2vwNZRV3sKicMKuF
	 9DEMgcHIwbwbzoJh5gYvOByPnzMYwVDinj1JJpn3iHWNvW/3J9coDaa3LLOpnRgZio
	 pjAB1YhvUF3aiI7GbrQeYfFoE4lPokbhnuyA16aoxmrbBElehpoN8XCKdQimYORpnI
	 SWLfl/n5jeURw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EAD6E2AF
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607563358.7897.1058813259300164689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14cae62bb0df8462f6539666d654ba7584467be14e2aff253d9d44725ec96d2
Date: Thu, 18 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766075633
