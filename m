Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE231B86C9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720552583; cv=none; b=MoSJrvglUw1DBgJ0nIqHv15wmGuIggb0sPOvCyB3f+coCpaq37YAMfZ3+l13ywTo6gJlXBzTUn4IpEixytJLZVy08VT5DuO6Dw366pUjTIwaZuzfvb6gXfkDuU7snGq8aXcjtPeHWgg+6gMJXqyzwnnm1/nBSlRXvdCthCfxcKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720552583; c=relaxed/simple;
	bh=dFKxg0AXwD+VdzRnW9+HsI7Ls8JCakZpXgtVIeK72ik=;
	h=To:Subject:From:Message-Id:Date; b=WyPz2fJVS2BD7E/l25SQsgUn1vTGuTkVy99cwa1dWZarJAHUcJ9duylqMf5ZDWMxz7PST3wrb5YrMHRJag0FiNwd5+ZSJd4k6TTNcAh7B8itFPCMXV1rKrfgcFaXgSoHW41AAxX/hiGwQMRPNMmVlFmRP/ZBHSt2PM/Xfe1uOMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkzehVXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkzehVXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7732C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720552582;
	bh=dFKxg0AXwD+VdzRnW9+HsI7Ls8JCakZpXgtVIeK72ik=;
	h=To:Subject:From:Date:From;
	b=LkzehVXq7n+DMjZVTRU6f7IJEuvQh9geueH4mxFuE/cOE927bFvnnQJaeWeTb7O9Z
	 cvpppbB93ZRU4hrWCkEwVLns8ZS5I/ZBhGqDLnh0886LEuFwsKumJ2I1Fv66WbOGJ7
	 HXlB6r3VGGthihi47HqMkB/SiSpR3XyC+jQEZssXgp4ODzR1+qPR1wAx8K3mfsnMfX
	 AnlucjJhlUaVLgmOkuEXhe8p0zNrGwk724oMIm7GSzX3add42BUzw51d+Rp1IIfsox
	 ohjGniVmFXXUoKNVVxuW4S39tNO2ovfA0FKykRzVkZgr3vCj55W7bv90we9jwAikLs
	 ybE227M0PZdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4493C3DA42
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055258279.10478.9943233635733536003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ebdaa7b95b7517ed8b2bd08ded1eacf28885f601dd0e654801c8889fde6129
Date: Tue, 09 Jul 2024 19:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720552582
