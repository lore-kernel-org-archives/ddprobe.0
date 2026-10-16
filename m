Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E7F339375
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792154434; cv=none; b=cPM4xvHPoPGRUsLlMmvo9Pbf/V7RbGPm1XpnSL1QV19ZXOaqEyQtZuIXShgigDQwO05y1CNCMPtqBV01co/ENVGqp5bHoxmOWiCoyDxhW1X1rLzcnv3G1zmS4RiIKHOB4pMI+cjrjIeEnazfZHmdtV9dCxw6qPTE+h8Ks+WzJD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792154434; c=relaxed/simple;
	bh=ks2kHjuctVtagai+fuKD29xfinvmniEkKRxCupGi89Q=;
	h=To:Subject:From:Message-Id:Date; b=hT7t80R4mds6u64zfgxk1+IM58e4JakNKo8ZEwQg5DadEq//ZCDPFXRUMnTGtfHBstD9ng67O8vNDyrOwzLeXiF2PxfT1urE7+dExAZ15jz0hSD62HU42URBIdbcEdq4VY85fDzkI2umTi0RV1VzQJ/4x0MplfJba3aQUoaqG7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEsrSW4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEsrSW4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE78C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792154433;
	bh=ks2kHjuctVtagai+fuKD29xfinvmniEkKRxCupGi89Q=;
	h=To:Subject:From:Date:From;
	b=WEsrSW4VeRpKswimWqnvU2zi79Hji1GByH9M9OatEVmFodHZeP2fHFWmtRryNMTUD
	 JacSq/nq2pBqXlJkIuYv8Igb9ohaF6vjylNX4qowE0CW+ccE39ySQC2/VuhnZCYD/R
	 mQpKEQATtvni6QC08/nY12Z+ZWiIQRH2BumH/4xAKDHYs53iWeYC3tJ6gRWNzAopfY
	 ZXS4ZxWI47lc7IFigKVg8LL9UBYaYLPPTACauCrBQid0EhyaWzAc8tViiYRDiyv7qe
	 4uMEexNWhL1nUUe37cyjM0t2EOEci+edt2lFCQ7xh6T0BRd6sfCvLMQzjNTTd1s4br
	 /J4f6jSjzVh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB130CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215443369.28082.8438834633859220520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad339f9ec515763439a62adac7d7445b55da4691923221ba29b13a6abcca330f
Date: Fri, 16 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792154433
