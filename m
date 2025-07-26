Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8D199EAD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753516194; cv=none; b=k7MtaW2wAqHeyweukM4uD59B3noQUjCF467IaDChUkgAEbIw/+CnS+iAG/gtNzU/tTozJL23VbPFpVw+XzGi3ktr8i2fu/ez0Hbi+TJ24hvlKmNgRKkcAaK/Y/AA7kBWQTURbIXqKYtaz1Hmn+t5bCZnBE7q5gI/3+5momqmBkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753516194; c=relaxed/simple;
	bh=aydCw/nTqmLumx8IUDluwQ7psMCx/NlKKvg36NPqNoY=;
	h=To:Subject:From:Message-Id:Date; b=oBZEFbUOeuZvFPctKBpkPQV+QA7YmNNwkUy9e1mGgEx8g7GFBMIgz608vjkpUDF6WM4cfFuuqw/t6C5Req78aiF/r6TCuI/K6yuPZzg9Gc2zAhkrrzFcnenbEI3L+zRI8xD63nAOnS65PrXrxM0qBOw/wws2e0sBFPW0bgURwTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNf0jFnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNf0jFnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2817C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753516193;
	bh=aydCw/nTqmLumx8IUDluwQ7psMCx/NlKKvg36NPqNoY=;
	h=To:Subject:From:Date:From;
	b=SNf0jFnxNrMMxtGMCL0folH2U2s7IjJ+BGp3jJ5Yt02czAgJT3N4lmWEmYucBrEVQ
	 468lf2sudcIQ4pNrmHa1ILp0KxQSNnRmI65b2raOETGO9fAkPSPmq89qcw8bDLAiAS
	 ypicRA/lBzNORCnCD88gXCU5aIckpAb7G91BTyrzTDiW6s08D7Pia8QeZ2nsvp9BOd
	 BnDr25Y32q4+CO7yDkgM4vVKpsOUAwbVPP4Dakolp3JRI2TXRKIsvTOkCB7pGreIqV
	 7u9hNu1hypGLGltRhiZ9Qj9jpdox0PNqVovBfTYvdqVeOqclhWu89/jSeD802exIGj
	 YTMB+Dv0kWoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93916C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351619357.29264.3576811102160166182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a732c39a045fb14b17fe37bbc97a5846cf47d3538f5cfcb9fa83e6c0e94a617
Date: Sat, 26 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753516193
