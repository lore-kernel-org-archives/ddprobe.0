Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A31A9B58
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764073374; cv=none; b=WkDeLpH285jtmzakFzVP6jrwBYECnJb1IXjmgk8lueCTlQfW4FYGrINQh0wxXNuOR4RPG1JkezEadtlRciyPqr5LEK4ZMewiMk6+SiAbZjjKhlmXWlABcmwTtFgufccVZo/kkfIvvU6hdhHCLK3OcYAqtnjdWMoNCJabfD90zow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764073374; c=relaxed/simple;
	bh=Et/iHSnez8iCgCCLdT0Sor6VbXBbXWN+i5LI69aDO8o=;
	h=To:Subject:From:Message-Id:Date; b=jI41XiRFTQwSsdBuipKbDRmlpxNRtlH+261tZdkdCVCwMhly/66AOvDBneM+xaTv/p0M1dqhzfC1YBr09gxehse53uymJgYCqKf8qGEY2D1Jy+TuqfTI7knXYfcEaQzAtq0NnGcpuMGoTC57641neomCAoT1EhTZ/aamld2KySA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8pk3W50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8pk3W50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F51C116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764073373;
	bh=Et/iHSnez8iCgCCLdT0Sor6VbXBbXWN+i5LI69aDO8o=;
	h=To:Subject:From:Date:From;
	b=e8pk3W50Ie2FoVkknVr9ssX86JvyXOlO+LoxIthA99ubUmdi9WYYUg/7PPbTgoieM
	 hLRU2CAlbYuzNmjyYAsS6EOj0Pbc9kjhThdg2PdFjUJJGANM2TrqtvFV8/QKxOKiKB
	 3MbqpGILJFWsVf6WThKG3h9g0khmg90vxzkwH66o9vqgPZafqsYhuOlbAZyVQKb9xF
	 efeAwBGJUsj4CUGIZpHRwHSz396P52yNN+6I4Ar7TJiv/KuNF0a07sS0Q0k4RCmciM
	 GmAvk/8HIqsf2wyL1mlsquDB3QVwTmonvfjtIU3CDbnm7nAUAfbUOWvAu5NbsFgVlG
	 fKaG3vOPQkEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA72D0E6C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407337358.4051.5869293691422990381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1545a2e3487e71f59bac05ce3675a36eadd861127a973422f86d355157188dac
Date: Tue, 25 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764073373
