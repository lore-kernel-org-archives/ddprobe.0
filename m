Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DCB259C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745065194; cv=none; b=cLFdVkjnTL5fhuK2IhnADbu/o0Cuwm27BVS5JNft5Smfvti8DaL4oYMPBrg6b75YAtf0VH1Tiiep58+mzgwEH63we59x2ZNqSnuERjCXV9f8D4N2VHVaJyxsjuZK9nDnnOKhJJQfHYsL69Zn/Gtsv8wIdpiFU3YT8EUGw8r7yig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745065194; c=relaxed/simple;
	bh=kkPsUcnZXQ3BmMc8/+CbtmnBlxLrHpNTvGZnAvaxpHM=;
	h=To:Subject:From:Message-Id:Date; b=b0Pnqsc7jgYwM1aCx2z+lI9cLNzomTRc6+fGvCSe6zZku4mG+NUCeAPGlUPpenzUSCBNc65PHmqEmVajl6aIGpeiHnBmAhZYe/RSZ/JRObWB5jB6fSRhHmzuU4mr81xkVxdEuBMpw2GtdTOKlNBr7QAUic34Xpj6BkiCYP7nkls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzl0Hddk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzl0Hddk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B227DC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745065193;
	bh=kkPsUcnZXQ3BmMc8/+CbtmnBlxLrHpNTvGZnAvaxpHM=;
	h=To:Subject:From:Date:From;
	b=fzl0Hddk8GqwSjbZMPAiPy1hx7v873cs2bFgeWV2K3Bk68F4DHxahgbzDG0m091cu
	 dZD7SObhD3FagqPZcl4zBta1kGQTbJTs08CFzmTMuW6xdLERO6/7dDylCcw6u4vRgO
	 5QNv6nNazkywHhJdt/jF1WZHV0l8XdnS0V7ewEXuk5m1px+/3drAdkcnNbmHLbFoaN
	 ws/U9i8sa7UdiqP98CeID6cECkbO31f+phxMkmCb6wLwt/FalIUT5MrQFOLUVifO7Q
	 KQhDX146OVhUCPCiYhOj683rs5zuSum95sKihW2qzVMJVmYNUAlhFFPsb//H6oDC7p
	 NOFNYtu818z2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D70FC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506519360.3605.1835401053239597763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2af3891262d2f682e0e31414c4e50aa4ddf735d75efe15527540415aec3584
Date: Sat, 19 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745065193
