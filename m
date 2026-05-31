Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496C026ACC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780229074; cv=none; b=p5C86O+5PbDfqxJpMhLnDo/fOj5W3PruERpcV+aQtJ1DY/sUSFpmxuHhV0knutkXNet+5zQ2o2G3Plw2Mxo8wq3zZ3Q+PvGBlgx4/OpzXjIp+GSQNYcVcStr+P+5RlmEjjG0ShfOKKsZZA7M1Urb+0kLkllHdPuxJBNP3ON53rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780229074; c=relaxed/simple;
	bh=Ov6ZvWT+MXp++TOp7rFptFLW5l29n/OQ5cfnJjU1u1g=;
	h=To:Subject:From:Message-Id:Date; b=f2cdDJKg4BfG1Bh/+9FO5KS58Pubo76rtX3wxO5pR+tpVBhNCvzcBFJOBLaA0wT60NnIhqaR2/l5BzB/vUNp8IKSPundV0H2IEfFQuytw9uN53XBp+Q8ECSLxa0nqrEUva28TGWsHLCRriqCmTcYAsM7GqbpNdW0tOxRs6Z+Mds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEdlTWgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEdlTWgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC17FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780229073;
	bh=Ov6ZvWT+MXp++TOp7rFptFLW5l29n/OQ5cfnJjU1u1g=;
	h=To:Subject:From:Date:From;
	b=sEdlTWgybLU5z9xzGB8iOm+s61YJ74yM98vWVJvlkYys4xXwyoGFv++I+tLZoOfIb
	 IORZ+ku5W+G11m5kweLilVKIsv6UsLeoxnlizv8DjCFFY2YIFISctvNVNUOAF4RVMS
	 RzGXIaJHPt/3ipQHZlqXIDqaMTQKMOFOD2MeqfuEkgYkDZXuZYenivSjYWIckBEEM1
	 5tlP7enmBLK+yzz3tN0ykIRTlBuSr6iuDIQQLRvrZwWI+o79URxbNpJwJTCHM/cbGi
	 uEiqwTgxWZ/Q0tfZZI35y8TR5WZm4U/iI0WBVaxkHOz8bx0SERtAhmN6iIggXaDjq2
	 eOV894Qve2x8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D7CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022907368.29870.381747566359588736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20949336547e44666b19fe4c972af621bba11baa3736adbaab7c610fd5a8ce8
Date: Sun, 31 May 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780229073
