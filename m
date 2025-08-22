Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EABF285CB6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755883194; cv=none; b=BXxIrECmO5HF08HPn0AotQESnPi2j7b29udZV8+bR/peXe6Cg2Gz44AJ6gqWpYgNTMHIhLMMzxK94B2TfUzcdLX4NBmXPG7XagoB3UnRrydoxbFLzXbqufMKmGg9AeORkoTYScOLGouJDzIER1EdWaHw4RciMY2hnodVWCp6r2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755883194; c=relaxed/simple;
	bh=3a37si5+j8WO51rbcIwg5oXtzD0FkrsEJNRtgBTwiBs=;
	h=To:Subject:From:Message-Id:Date; b=d8vCpfPe158fEjRcKALZV//+A0nKZYf/6BRXcMcwwEc+JNE1iJZJtAk3DCDFRPSY1mN4Lg2WDB1A/iqYWv6R/E92/rEHwOGdv3dOEqT4qkTz8XE+p1dQ9eTMOAgPQjCMo7bVaSVqYs8H+8nl3974USj/SxObH5Vm/aoaWYHJBfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4QMb85C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4QMb85C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F4C113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755883193;
	bh=3a37si5+j8WO51rbcIwg5oXtzD0FkrsEJNRtgBTwiBs=;
	h=To:Subject:From:Date:From;
	b=E4QMb85Clu/Ag0QR/+VHF6f1Xw5SceHgwhP2vk304Tjnoc4A3G/o7cHAZywfA1CAh
	 jTozWybjsqRb9uOK8wIrLhUlQG5HA2LByY968Xt/bXXxRrad9BaOo+lJioi1nemFcQ
	 KPjoCGYPzwiiA7bBw7BY0f1/1wOu6cvmwDtMdSzVFAfJ0b2DuOVybPXMFJ+rJZR+CT
	 9703NSJBM8RwP6kgS2MTQM9uwW+akuCmPPV3+ccyJRHN51BdCwMZPllIP5jlgkqZUW
	 E9/iC0Szqw16sRc58g87prPIYVpoNTMuhVGjMtC32lIEd0SAN0vflS9M7jBpc6b/yU
	 wkz6Gh7oog4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC1CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588319357.23134.2471329837508766282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f301333c3de010679d724135be4d54f81771a964c08ff351daedf09c83213b
Date: Fri, 22 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755883193
