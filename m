Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D621162A05
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707865696; cv=none; b=kprq/VTxn5MeE9ZcFt1bshrVH48tUh9H15fedtFMxVmQAVewY/Eupx0HNRGKIipVQfyXFH2vny/zyd8q84JB5fVe+Pxw/UltjYanupefs0eu1mMOwNP+ld2ni/GDdjBW5rozXq1NOtfjEmm9Xe/CDJaCJ7c8RuRWGOSaMtbWC4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707865696; c=relaxed/simple;
	bh=lT3ZlgJNOJbt4qEvygXaxH8DiPZ25p9JDakHSHQ1Ync=;
	h=To:Subject:From:Message-Id:Date; b=pZ4qD5E22XrZ0IOWVysgTqAsKo62c0RASA5a4gxDK5p79jRfWdDeWjdNAGmYyrG5/2mt58PbWSWX7yBOacHN7GCgJYczHIugH1HHU3m0q3x10OICQkh9xfbY/QGXCNNGcGaQcJr3eplja0DfuhA6FT1WYROYg4w6MTpvJAIWg/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZRKy4Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZRKy4Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77278C43390
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707865696;
	bh=lT3ZlgJNOJbt4qEvygXaxH8DiPZ25p9JDakHSHQ1Ync=;
	h=To:Subject:From:Date:From;
	b=KZRKy4ZdQT+Ov9rccmAI0HygZI/jv2ecbysUEaq+QMg4XDW2BPIrUO/w9lnVpsEbd
	 IfxGHirrgjVtAN+KYtdQBJw0gnq2Asr9tIW9SbCAnHhau0VATqyVsfmMDYyZZHajky
	 Fpq09+u5pvmmnL/KSB3x46kjujHmMWl43zyH6yK3AWPH6pSXWByM8nGY5r42aXBzfF
	 26LtYK6i005EYoBPgb+2kevmsTHnkh3DddldqpEBO41NpDQsusOCEpBN7dNwJ2UTBq
	 8z7MqbYZya7MYpvidjfrYPpbQFGLQ3BPsAPEJJc/OTFsIFlID+IJ0wHy2C3FfKuITj
	 fOxhzfzLdn8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDFCC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170786569637.22981.1338069600907616485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f617c9f8a88cc39b518b857e511a30415d9fd606e547b2822d2d73fe0008fe
Date: Tue, 13 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707865696
