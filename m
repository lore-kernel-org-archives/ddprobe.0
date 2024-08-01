Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2D16EBE9
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722502554; cv=none; b=TZ+y+Ka97M7ADXPEZifkfpxHuJPlBqX8rURuCBO+dUkURXi8IOqFgFpUoLuQS44ygP0kRBopbdQC61mM0Ul4uCoaPfolpLIVz3QO87kuzcwtWMs8JkECXlW+TUwvj+XCRXV2zijR/aaEhtXBQbLl5jgotG15zoX+zDwayopqtuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722502554; c=relaxed/simple;
	bh=3l6653m3kDrP5/K1V9jQWVo6ZOJCILsTxqrHm4VQRvA=;
	h=To:Subject:From:Message-Id:Date; b=ZJ6Y/Sm56CkTs/ziAqd5sBe5p0NpfKiDb8Rc/mu5uPwsBjDjegk85MU/nuIByEEdLeI4+Z+Vd+LsKn4G/ZwhTHuTKpEpCN0d7T2MIiUH3PM1STAPG6jqMQUs2pgukCwQQp3xxC67eRkV7Nw71eBvq4FivAC3LSMl4X6jEgT1nA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs2WhR0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs2WhR0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B26C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722502553;
	bh=3l6653m3kDrP5/K1V9jQWVo6ZOJCILsTxqrHm4VQRvA=;
	h=To:Subject:From:Date:From;
	b=qs2WhR0m5vOQGKPWyNRDJ8krMB/aAmScmCWPsmoz+G+TrPMLE6/uxNiXodyXjajOc
	 XgcVn07++HFYwmrNlfhXfEH/smNKBafCJjkZOW3UDjKAozoywbaoLGIW63rttYkljV
	 tjrNaJxm8/CcMqJJ2cnFKmwJj1iz9+WLFcMcAmqn02xaWuwcR+LuguC4D0nnuD/1pe
	 PHOYOZxnHNMg9423o9bq9clsj0v72o+O9gTRgwY/3N0Qbp3dnglCS8nsxkqk7Q5zWB
	 czvdT9srQ3umucGgMgL5W1f3FGpi4nedEyQJxWSGuYpzZdZi/lH47yGOeLzcaVs0NO
	 1EbeMs+5d7ovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AD4C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250255367.26798.3918652997680224868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3a5b9891e45f9b1bcc8c2014d6ec395e4ecf562d0c76261c906a0c31a534ac
Date: Thu, 01 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722502553
