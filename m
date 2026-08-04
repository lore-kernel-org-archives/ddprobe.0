Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FAD4921B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785866434; cv=none; b=PRU50H8OnWoBSmYdUkTEQ1SAkz5Gsd5tZrQcEbEfDQi2/NeOatL0swTuhL4qbLMGdz644wKEVLHyq+U3XRcdY33erSQzUO/471cBX+Suoe88KxuVAohlUyK5QnSX928Zhl7wUO5BCspL/nHaRkaIKc6Oqwe4/imOMj0EqlRoVz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785866434; c=relaxed/simple;
	bh=ClNQG7K5grT9KWOlCxxfp1XyLy2WBxFXGcz+b7uMjLI=;
	h=To:Subject:From:Message-Id:Date; b=ZRtofsNQb9VhFew9jrw3B4lNhznOD22bhxLYFwCDMJDPbLOGZ4zFloUfo4NnaLWlXnbSVLPdG1tULI63sJvhx7vWQCMSbKJnEFMmMqdmmrJnn88MoubIYuUMMsNeC9LlnzHKfTNr2u2pFqdh5FfnyY10toh0bkZvKhri7AiEH4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXyulnbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXyulnbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6616C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785866433;
	bh=ClNQG7K5grT9KWOlCxxfp1XyLy2WBxFXGcz+b7uMjLI=;
	h=To:Subject:From:Date:From;
	b=KXyulnbvbyOHy3qmyGjf/djJPsrSM/NuKDK6L/el18L/fWyf7lZAoYkkShKWAMfh+
	 FQ6aIK+igkLtFh7DHnQUiTZLZ45nn5NODWJ1tvCPllpPk0tXrsKlqdIXl/wOTQk6KJ
	 LDn19v0ClCA8wCj/opIT6cGFZonR7vUSODDMprtpvo1JNORc/h6HaHcO2vW1/V8IYX
	 RaM4LBh23JWKhlS2bcRp4QPYaPrnbznGbONY1NWk6eUIUjX/D9ZkRQQnVytsAwQ6mm
	 XQWExV1+5fX4ND+f3jzKgng4sOuSHw3/+NohMMO3at5CkJ0j45lNO5EHCi76w/Hofy
	 kYlxdjbNWvsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1434C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586643371.28462.1651656609500150130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc1b865fd687011ca3bf5f19012b1fa935f2b26b164b3353ae8b5bb1e7344ff
Date: Tue, 04 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785866433
