Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1AFCA4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764149574; cv=none; b=JEdd2bUlpPdObU7i56elwEUDKpWyEQpugRcBXNSLDu/m6rBZq+vJ+fckbPzbr3BKOh/6MTnpkLrjOsZ3FijIZo32fNyR1mbXJOJA8TFRVQNsKNEcevFalrSO0xdSvy057zRL8mfHNCa1YN3m0LBXxFCMCUeNwysJIl+1KsXWcf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764149574; c=relaxed/simple;
	bh=k2/cu7oBYxpte6XeJ0zVLt4V61hofC38nO+d8fYvEhg=;
	h=To:Subject:From:Message-Id:Date; b=RQgCTRuuEMRf0lfUldTUn+PJ4tBsHab8xieER3Z3KYuQPR+/qi9cFrY1sgao4WTkOMaDmTv68V2g9EYr4bYT8Im9qzVJeyKo/+AVVgpFD0H/Fzp/FF35nKWi7MkUx4kUES8RZZweJvmk8Q5E8dQoLgF3e4xUa+1ozcpJZnuo1Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me3I6knp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me3I6knp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8635C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764149573;
	bh=k2/cu7oBYxpte6XeJ0zVLt4V61hofC38nO+d8fYvEhg=;
	h=To:Subject:From:Date:From;
	b=Me3I6knpCnXCpkKGR3rsXbTYVgNpnghFv4SnWitJTiBVqq45VxOJAbhdXGOx7B7b2
	 vjiM8dQqvfQ85VEe/nLC7mxg9K8q7DxAFjRO+/buqs25dvlcUH/MEBCPR7DujbQqq5
	 fSzWAyrcnuqGjmaUgujxCNPY4tz4i/JZoNA4fuMZNuv5G3FpMCqlMFUWYaGIZ0Ln02
	 sfiErAWmnegI6UawbppXjK4K2rrYHtpLJWpcqp6ZL9aJOMCOAmN83k3p1ouWt9MuuO
	 mjKjMz3LL8HkgzN6f96TouhRfCDsNRl4JavCQE0MPv+3MUVimZn5sYszEfTX3DeurB
	 myVYe1SpRJA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486DD10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414957358.8496.8872356137587332270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322c32ec636d80a79e8eb28986f578224250b753c013e68ba87c0a7b3b2ad61
Date: Wed, 26 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764149573
