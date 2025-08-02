Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C27B27A93A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754173795; cv=none; b=AG04C8BeIIKTsBFSt593qVDQ4lubvp3/9T2GjXzux4v1qF0tHFHNeiPRgen1RIcp4dTd+P+pIkVCSuwR82VvWgbAviPb1YUbDo3Kd6Ka7kda9GVvUHQEiLRpS3f4LfkLz+3wtKxldFWzgmqgBAtzR5p08JwSC2cQOFqvIMG1JBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754173795; c=relaxed/simple;
	bh=alusx3jZaH1nGT1sM8yD++2sYqORaHufexupdSgYY70=;
	h=To:Subject:From:Message-Id:Date; b=QUEiX/aF3BwRRoGmZbGhlsUtv98UBbc4B9XpwbYBpxvvYbwaCSLp7KHjjIJedOOQQpv02KSriyao1M7F2tMx1C3L45WLZ0RUvIFhT6z273UDk8Sb9tL1ryUo6bvXNq3gbwnvdYhodsXRTgYrRLFeZQl9jZDBJorI8xtaxpPF4e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ6m+Ozu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ6m+Ozu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78DCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754173793;
	bh=alusx3jZaH1nGT1sM8yD++2sYqORaHufexupdSgYY70=;
	h=To:Subject:From:Date:From;
	b=tZ6m+OzuOlhFt9bAI5qHR5LNDhCUc7wJs9XWkxZh3NlBNcV77Ox+/q8oeEjhCO8bX
	 H8QIqHvn8dgsA9qHFXzfXifQi0r/jSbJIkauLI4bSn6CFk6rgzxYbrZxLQhaeX2xQP
	 qAAM9OB3fPPNThaayxKcynEUq6xEnhFzsQCsQEz3c//cOGq79iMlsCw3lCLbnPTrRO
	 pFiJdmFNkH/iDor/IFgtQDCu2Dk8OWOI4dnlpu1jUueOE2uxHZ8ehgyb1COCWabbkl
	 B2EEglMYHCthwRHSm1AW1HApi/Cunomk3aaJrYHT0W5/787wVkYLNhM3X88+4XK+i8
	 5Ulz3RgBAbj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C07C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417379357.11415.11564950089363651381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c95c784f472c4644ce65b606e0a9e1d2f7d2d564a86a3a4da3da7b6c5c4f66f
Date: Sat, 02 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754173793
