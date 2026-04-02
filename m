Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0693D3D3CEA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775132734; cv=none; b=fe94CVddwIdV1yFaHL6BQsNDaOEVLkkPWZ4g1Nyq/NpVg7Ed44z33k+KMrvRFR1wb09rnWld2nyogb9AjLaVcTvqEqOV6mYr7M7iBs1rr2MaikNQuZRKGb0n7cRCRFuE775q4IF4Y+xvlZ0WWPfWA5xumE46WKGSFyhg1EjWt94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775132734; c=relaxed/simple;
	bh=uzeo1XTnHydDukWFnYT/OYIa5bkzhog6KidWX69YldY=;
	h=To:Subject:From:Message-Id:Date; b=SPC0cMuktcDAfbgAv+dLn0d/4Df/MXIHULqYXK4Iuk/Spvt8cBTpj3nk78rIobZP151K942MZcuA3cfPDHM5opDLvjbNza3JgH5Q9sJi/FlpviiERH82uJhwOzjoUAti82cmzN8HbrAvS7C0TzrLq6h37AIaYRoZcSCg9keQaVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCyW0Jkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCyW0Jkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FB7C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775132733;
	bh=uzeo1XTnHydDukWFnYT/OYIa5bkzhog6KidWX69YldY=;
	h=To:Subject:From:Date:From;
	b=oCyW0Jkpwt/lpSGhT4EInmyWo0CWcYGwbCaGlRrrwkE69Vi6/KbSUTNjXI1wZJhKZ
	 pHkayMZA4EFOtAp6CpiCMK4RfAyRrGGr3fuBlT7G+4S5h0sh3boPJwuuM17TY0Gkh6
	 HPZAhIO+mkvR6j6HVIEeGAfFiPpbO1iY6O3fXmJVsH8HpG1CIk13rsnfdXvHrEND0D
	 li9ctuBJjIvuQyIDr/2RHs6JASPEBbFSTZ56Fn4V7C97QUw4qux0svACWFI8EeVs3d
	 RBbqcivg1nl05MIbZKDg2srjpDQuY+kpVDQ6ghOaHSmCs1mQV6h1FX8RFZyukwq1kH
	 xAPok+JphG0Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD1D3941A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513273369.16270.675837827301649892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35ec9d885a13791c1d824f642cd64325b19c73a1f6e51edaf387740f7353352
Date: Thu, 02 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775132733
