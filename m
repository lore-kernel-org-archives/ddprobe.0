Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BE63FAE0A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781714194; cv=none; b=D3tLpbNFIcEQE2wBh1m++GysLoAbFmWe35dVwGtz0wGDSPEEKM1bwy45RI+8IBTwkD0pZ3Qf/8qobDXY1rPGbrko4GNVVO6D3Dl82pkV07Aodu7bXFW+D092OZAD1+fiXSggXbEWyd/MziOOgSyfKfgaae3EAYXbbUD/yhdqV3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781714194; c=relaxed/simple;
	bh=HrnJIn+zkq3P8iSkA3BqSS33idMPAMnfXI8vBq8Ggz8=;
	h=To:Subject:From:Message-Id:Date; b=mO1VekuB6oUK6DL443kwB18FYNSIdUv2bVeioZTzwduvJO/NEpik9KwMjkJSv2EKmVYjgoX3fRmIEmjSurDAqN/HqvR6invkiADicp6v55ug/B5tnHgkJBKgH92aFt+vD6+MJt9+mSzk34ZKXQ0WRA/gflWuG/5/7EbMEI9lQQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow/sTXq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow/sTXq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2ECC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781714193;
	bh=HrnJIn+zkq3P8iSkA3BqSS33idMPAMnfXI8vBq8Ggz8=;
	h=To:Subject:From:Date:From;
	b=Ow/sTXq2KMVtQfoCWTzG7j3aD74nkW3qJm00UFuG2n1+ueLqMjkXIzYzxA+lwA8Pm
	 gr967RscE/QgnYtZThuydM7F03GHyIZnBbH2jbOzbVXSaoDjMyZaHZ46dLEYUnAbnw
	 OKTbLoxIlrNSCes02MeEVAgj2eWbEuoyJayh/8r0bVa0CEblU1I6JQ9s+SCu7+0msw
	 IW3qhQh7TBZiRFZ34IiqA6WWdH5Yvn98fYiQWQ8bRPl/2sbLdkzf7ziKPz1Ye/Qwur
	 V8cfyBBH8LjERCDAsixtRH/KfSWASbHmzNLQzmtYnGGBx1Jf67SybbNFGd+cSEDyIl
	 CjAsyJWksER8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC271CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171419374.13144.11888835049838934738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ed4e44fecea30adc7c445df85b1bf16bb67a901dab342bb506ad0c1ef5d6db
Date: Wed, 17 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781714193
