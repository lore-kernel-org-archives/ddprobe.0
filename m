Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3179C19A2A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735875954; cv=none; b=Eigc43BP7O6t4TuP2XJkEXjJDWQbLA0Xcz3nHG0SEYUinpwTptP3NZLZay4EMwWnCYlOWgSOP9Tj/541Ynqurkzw5MnedCHi6sNkEUsQgfGWMJU1UZg0N22tHmrZUoBIvWYEUx3wVAB1qJM9g5qyv8gwBKYPbt1f7mWr3C1DXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735875954; c=relaxed/simple;
	bh=BnaLlr2BYGm62grrM01+ONsbLMtoqmaU8ELNF4OkQrU=;
	h=To:Subject:From:Message-Id:Date; b=B47bJr6GtrJ+epop8HUVWM6DY9mCFh4KpfW+HAXL58lDfIHVEclYHC0rhlbZTqvevz7LLLKWe5ZQPjsnAqhTJJsw3uQeguXt5Q5KL5s59Pmv2fBjYJuL6rvGTowqDUNlVkCOkg5A2CbKE0Dd3bomlZJM+QklNurcagkefem7YOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLSo+31o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLSo+31o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C62C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735875953;
	bh=BnaLlr2BYGm62grrM01+ONsbLMtoqmaU8ELNF4OkQrU=;
	h=To:Subject:From:Date:From;
	b=MLSo+31olgZrl/QOoKwKdPdKvCuO1Yz8/GhobL48k5zN9QB11xFin6srTgw95rSRh
	 gUxf9T1eCvcUT0lsWjnpJzRgMGMHnh0P6tBC/5JSWYV4TDUPdvZC3tnYHp2cxYmGhi
	 zBotsnp8/65pchfjoBEesRiEjAk8fIKbZP8RekmrarNbaKoGeER4GuuaBu6BOKnvlP
	 uA+fii1RUF36NuY4Fw8X7lzH/Gumrnx+I2YuqPoRzuKifmD6XT1T3x8jxyZSgZHwam
	 3yni8QZxIHpc3IiEhNKELnaanPKWNIxvyWwhGlM5omAzmVO7aPtZyh3iRXjc0GBDAL
	 eicYPmoB9ywSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBEFE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587595361.27925.4599635041824480153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc61ebeb666e0e710055cc8327193146cd451295b97c60343179c8f17f2f801
Date: Fri, 03 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735875953
