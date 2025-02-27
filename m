Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3725722C322
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740658135; cv=none; b=V+a9uSgni4a+fGvIin1QawoJ83T45Ehdg3FjGGqoR77IGDAyq0A5N9q8Z0fKKYPy3Mc1eF3wpnWvGkoH/+ah8W3qYDEvtrQVCKYW+P/goseHsZfZa2htwL3LDcaR6zE2lraEPQvGr18EjAJqPPqDoPhYxlwv9F/zDIvx+PkjS3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740658135; c=relaxed/simple;
	bh=aQ7H+Lt8PLxfgaTRpHkMnrSKgWyw2p5n8eSJ++9phsA=;
	h=To:Subject:From:Message-Id:Date; b=F+E6Z5yPczOS7dPBwWY9nNgKFfI7qJzxbXjhKUg0kVOu7dx947ysTckTsukenaPkXM43aU+AIu4HV1Bn2zSxl7C25vOL6ikqHJZmEf1hxcl9uE0oV2iFdN89WDdmp00glLtXGDy03pdtC0V45CrU2K0VnVwQMVCsTuJqdODhuCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFLV6ByN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFLV6ByN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CDEC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740658133;
	bh=aQ7H+Lt8PLxfgaTRpHkMnrSKgWyw2p5n8eSJ++9phsA=;
	h=To:Subject:From:Date:From;
	b=DFLV6ByNKvg0wGKBtZiEbITIGWPW0PYYVzPSASFxmZ+ZpTCqPlrdQchkCfW8Sw2Cj
	 RmLb0T0qQ+3UHTy6kuf0fQQxAtfbtMAqckJtUQ2DqaeNRLFKblKmhlpE9wQKM67Cux
	 LQRaPFJJBREK+OWcXSDXaP/dTiZYCT7UZ4xppwVEpbBR8PGpJqUYx6g7OwMcC3Vhg1
	 96hLm3fPlQNSMFRjiDfF4S2iIIE1LR8jVACRJs6Phf3UK5XUO/8BSoku1ZQt5/6lwl
	 EQP8eiCzpPCeq+CxX36snGsqopiVYp699bh5LP0rMx2Vgosml84u7AiBWJGeyjKtTA
	 +IkfFx1XWhg4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EECC021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174065813361.25427.6890744201720408136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6290b7302c6a48999fad243c7e93bc922a8f1a581113358a9307f01ddc313f1d
Date: Thu, 27 Feb 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740658133
