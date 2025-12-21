Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E747262A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766317434; cv=none; b=urp0GQuq1tRK9xUgHYg+uDUhJMljmqpH6fQAhr0UPCPnUAgne1Xx+eN7Rm68NUtMKGnSWuwZT+0JvpFxnve4ynsIVAkd9TKKLF04RhzV+ek3pl4pNQohbqyShPZ0xsGuaK/9F8MrzV1GzrmVh48CbmK2y30uM1CvM41mInOxxAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766317434; c=relaxed/simple;
	bh=44VoIH4c6ir86GihltavG8B81gVNcCsOh7ufdrDVJIY=;
	h=To:Subject:From:Message-Id:Date; b=YwH5NiSUmWpOt5Mr/lteOHPFskhbJsAdgMdRQXNgPS4cHUoBnvH/U7wz0Wzpm7IhSaefqMJIZx/PX/vIQz3IfJuZ1hkhX2pbm4Wg/fe5Ko1hzA8YkzzLRBUrFq1uMFDYOyv6+YXSV+RsMriwkcgP7a2kmbzyktUukTfoou7kMS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auBQsyLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auBQsyLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766317433;
	bh=44VoIH4c6ir86GihltavG8B81gVNcCsOh7ufdrDVJIY=;
	h=To:Subject:From:Date:From;
	b=auBQsyLZDaxe99IJxMlnCEkBio+NRFjBA+gotX7fOb7Kf7GPtxj8HyEKhqhhI18UQ
	 7p5D7ipujzOzEkutQDwTCmHxoOtVlHTmYnmtzAablLlWKfDSCoLh1Ac+r/3qi/RakR
	 dfRbzKbR/llzgacKSTmbqnMBiQlssOHb0uH4+GsPIkGgzaggysYGqfegVKP8Jjnqpb
	 gVug5og53ytLc0iDtP+nQ06Yw4+VDk3s1P5OLctCRyYJaDvSTps1hJeFXm2fIDMHdp
	 C5pdXeeHXybx4lZajuxmc3/CtDAaS9sLiqkApzAfNhwbBBLwHc49C7FjcdGPCuQ5Q1
	 9Sr294/Lrifmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95170E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631743358.4442.5019714324651091669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298e89f66abc983b5ba8b1a450fd88185467582c974904b068e231e76f7f1eaa
Date: Sun, 21 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766317433
