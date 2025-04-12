Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A11B1F03FF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744470596; cv=none; b=Ap9WsCQZP5lCSzjhyIIp+XR8C1u2EFG+2h2SNnUS/1BCpOrwwoiRh9hQUT+NIlTgo7YoZbYh5YM7ApFXDhzdY6CtfTYTSy3hxA9l5Ops39YHC1HLHwC1jet2B8bbrWaf82ICtzfnC9nenebzV0JEwO3QFb7dM0gJSi7uKMc55zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744470596; c=relaxed/simple;
	bh=QXABCEpo1+Jrm2UeTsJD9+8MCFjgdTJFFtCbMSVqd74=;
	h=To:Subject:From:Message-Id:Date; b=ND09C6dunSZNVki3LXYShcCVxPYwqO82tQRLPOqpRDaEfXNzSFUAUiBOpnIhCYJlw6e5uzrrNZZ8bPyMUafKPsTpPtbGpUwAP7gJ1T9eh5AxckJY8KjyqbpPQOa4vDZ39gK/wSqBypFvlWm4brtCauePvYIHRn2GpzpVq2q/ws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/eZqB0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/eZqB0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73A2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744470593;
	bh=QXABCEpo1+Jrm2UeTsJD9+8MCFjgdTJFFtCbMSVqd74=;
	h=To:Subject:From:Date:From;
	b=T/eZqB0ARb3oV0eF7B+JOvOiDmOpDdPr8UHpyZgptpeQhslQy6bjkMl6j2X0U0k1l
	 5XM+CbVydjWPCFy3V9u1RAXVcNmfnL+UuUeLcBV9/KkmoVOHfuc4KEqZiHPxMV8c7x
	 MofDVlEY5gjIyMbnYdDSgdxsgBZGp7nmQKwjdT7xXqLr7/LaHylp/tyx/Ykwj7eCbB
	 MlK+E1RANB34iMNZrIZ+zlbhIKBj16t/vzN3g4jBWf4c4226a8hzoW2/K+qkksB9Il
	 0zcAM0DrGAPJAYcYRBJR9KGbYfVOJNxZlA0Nz9aAWDQGe5Jh3DWVWQlYZekWeYsy9V
	 fW9SvKNmsuAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CB6C369B2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447059363.6327.15172142057482413254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4583e4515d720ac62ccc66a798a61126244c64ae5c3916972b0f1d5e1b11d22f
Date: Sat, 12 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744470593
