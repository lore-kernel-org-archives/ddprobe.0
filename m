Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400D01422AC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718267303; cv=none; b=hgCOUiXWdLwXyh3XsI6NvVbV5SyAwJexTzvvI4Ht2ACSZxjD12X7N75zdCn/rENZIFE26e9YO3IwLOui0yCNbBuKHKz/ASwA0y+kKEZy/AsXcOA2gdxy+zxBprdfoJnAwkHp5XxBnIJvzPCWW/3USkj2kpmFk/bujbdN9LBUseQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718267303; c=relaxed/simple;
	bh=HOKAAzg9Ga/gbFPM6hnah7TzeYO2qzPc0Qzpl6Vm8Ew=;
	h=To:Subject:From:Message-Id:Date; b=ihsRlO6L2xNyWu+XfLOdvrV45UHaNAxxRbKKYuyVbW2PETI2vcJAKN0rmMrltZUqeZjH035NKu6Jgq617hpQnKFTVwDKDPf5U62BDzlcH+mX920X1SPBMsF2ybjd8OSrJU5FJ2MHUpNzXIFVNDsEZQ16O/5CoMcaBfmjpdQt9pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnn9rYX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnn9rYX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9BCC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718267302;
	bh=HOKAAzg9Ga/gbFPM6hnah7TzeYO2qzPc0Qzpl6Vm8Ew=;
	h=To:Subject:From:Date:From;
	b=lnn9rYX5HWK2JaRWBODErcDTYepUyA+BzogTtMpXMKhQg32+mjxPOzu//egUat6xg
	 lCp7rBoy5aaEzEFdLswcCejfRe/3pAmWLlw7yuGwUMB+dLpK3c04Rp9/O2Wgwx4Fge
	 YigNEy1TW3XzLf0e0b7ZiasDQ8in7ymR1lmlG9QB2kC3mFyz72rJjFKqZJyq7QXtHY
	 p5Qo7ZMuN8WQG0azNizZCSr9zx8AAwWb+j81c9Ss9FUKrQOh2NZtnoaoQU7NHyXkYN
	 uDUG4YoBYGWsonw1ljfy9dfoSKLcA1howurv1cQSUAzEq062vJlp6KBPoxwswYKh64
	 /oM1CJn6cC9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F40C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826730279.11471.9637902349465101700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d02aa11e6a1c59b8970a486f0354bcd286c71ff2a1adf58ca789228d6dc5c25
Date: Thu, 13 Jun 2024 08:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718267302
