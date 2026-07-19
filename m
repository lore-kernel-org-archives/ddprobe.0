Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DB72E06E4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784478514; cv=none; b=fURGrgvF19v05rKmr5w9iUD16+J1UvU2XU02jpvAtdqG3v2O0GDeUN9rpAiGOga0UeaWZ2d5AU2jmfrUdCrhs0XDuyISC4dJMWG2fwbF4kxeakyXNqT/HJ86B/xA2IFEXmEhFoY4IuTG41ZH6lUdDDmIlCkvD4taCKBpLOqZMXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784478514; c=relaxed/simple;
	bh=6vylcsz1y9Txkw1HrzhprHZhEbWAY1LFWZtAh2b2TI4=;
	h=To:Subject:From:Message-Id:Date; b=mTQ1a5VMPBH484FRRcc0q0NU4wtVPIXADdffRSeDO2sUJDdd4ta+3E/F/q5UN31tkwhOAWI0EY4XcHju/sdQp8LFsrvA4iVqJ4J2Ei6M4+H24fAD3FpxddcW35ha4F/284hKHLca0gAoYraJ8eGlZ54qqo/phe8Jmw/Fi+Wtqg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWs5Ixfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWs5Ixfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D790AC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784478513;
	bh=6vylcsz1y9Txkw1HrzhprHZhEbWAY1LFWZtAh2b2TI4=;
	h=To:Subject:From:Date:From;
	b=CWs5IxfmUVZsWfeNVcKgMuV57+MncRLojeD4Svr+2AH3QTnmyzFW9/OEooaT2SajE
	 hPasNEFrYD7x/A2bgGFEGpMljbVV0yOJrA1/4NpSIxvpXxFZm2UimAm9xPd3z4tENZ
	 di9m765ocBtzQBtGQ0DjDemvEq9r4naAEjwKJMrVsHgBGRJiZLIb1UxojGSvJfmMuc
	 E6x9pETJliR2ft6em6is9TYf+Pu9LhylGBmXbVPYCyqVGjilEu4qEdtvhmqRSlFRpN
	 yUwgpNMiXvPDA5jpP4P+K/+h4m2ywisz2Pya70QJhUvyTjcRph948hL9adVkr8m86A
	 d2a6w9GRSTB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CCDC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447851368.28692.16866168223091714592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf89bcc9e8f9023a09270c2ff88584373e5dd06e09316109aca4118038c2a2d
Date: Sun, 19 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784478513
