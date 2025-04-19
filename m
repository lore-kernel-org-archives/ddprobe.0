Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4394A54782
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745058594; cv=none; b=oHtJLty9uJeRtdPKiQQt0vSGsYAwZ3Vmi0vGOLg+LsnjJAckD7HRqE56CeezLUPY0F7BbHbc7w09Q4h7gYkHHi6eZU9XQeyZDuL56rSsPeFoR1qgnnn/X8aAFxEKZ4NZXrstC6kOpM7Hn9diMQB1xWWfCiHhxKWJ9nkpB81KLUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745058594; c=relaxed/simple;
	bh=CB7Eyxc6kgbXOiAmAuyqDr2OPdAek/TkDa6tK88iC2M=;
	h=To:Subject:From:Message-Id:Date; b=PbjthEv+2h3Qq/D25n4xAQRCT2KIDU8kI031nwrdvlAOPPhz3Wq5nCpL3hNzzWx/2u9H1CtmZAeNbtM3o8N15XYmxE8sKsEEBiNtZyG+ErERlHwMgZ4cj01BWwznhVyiQzhmfEBZ6tyYWdo0aRsUhbITzyjHeRo2I8FvjOw9MKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV59SXv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV59SXv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745058593;
	bh=CB7Eyxc6kgbXOiAmAuyqDr2OPdAek/TkDa6tK88iC2M=;
	h=To:Subject:From:Date:From;
	b=oV59SXv9Y3Za/PhdMLgiTUu16lZ5DjNmBHLGTPixz1LTWJx2xIF3jOoaCsKJEgr5e
	 pcvXTjTd3QD070dIk6ppm2mOZZ7lDsoHblWXrP2Vusyv0OGFEpuBQp8zXmWWvEuur3
	 cXFQ7HnWGP+3gKxRoet01fax+V8RV9wQZVoaFIvWfIhg19LZEuhAS2lJsTQ0nImSpU
	 jBqFzHYlPvddAHTPQwmbPvgp53Oy1+1X0t0RKs9LCDH63g5nQQwnpoivLWGub9D2Tg
	 pn0oRHqA7TQax6rBkjPhy/K6vnJJlf5FY1IrjIBYYe5hr5bnwGba67KVaPU6QDNJye
	 pJrcnuJ6TFiWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9913FC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505859361.27989.11940001503817705390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dea3d2346f05a4d40d787d0d4ab5370de5b1205e815e310f0f65a56939b0f84
Date: Sat, 19 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745058593
