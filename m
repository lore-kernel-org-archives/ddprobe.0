Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CCD6BFC0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727419554; cv=none; b=ebFqJ2VU5AmN47QzeF/aWdM+pou0INVdt4HKGNEv0atTmo07Wejhg49MjwthYbBwGLIl/c4gc6b5aMKqHQ3xNVxMANL16qxN8CGl+9g7nEumEngv+Tsua2+U0Ar7qGRpPOwpULkrJsosnUEdV7tY31iT26HmwZF9QBOqu8hx3SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727419554; c=relaxed/simple;
	bh=AlFmf9+t+7+bNwd1n1IgDjoZoEvMW+/5zPtCnIeUKBg=;
	h=To:Subject:From:Message-Id:Date; b=brbdUJrui56I+7IF89MiYuoOjApmg2Va3/gO3smVTv59/3H7Dn0G94uX5jjvL5lZdDpWyLKGC5OfDzUEF4X9Oo16dXdm/nw6oOMTywLiRM03XYM3pcLPUwHAiaVYzPp/7bOkWhX1lsK3yHPlWqCmHUmomRQAOySr0ZXQ9NA4Tpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J769aBny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J769aBny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA7C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727419553;
	bh=AlFmf9+t+7+bNwd1n1IgDjoZoEvMW+/5zPtCnIeUKBg=;
	h=To:Subject:From:Date:From;
	b=J769aBny7EjX9hJXrmMqNN7yoHy0yzvO0shifXnhrQrmBISTFqy2lMOGN05gGeRJP
	 LO0VF9Lp+jM8BHzvT6IHmZGR9iX2c3ECdmAiKI5KqP257BPnDfiRWG4CwsXqEU45LS
	 UB2MSYE/yMuyTFWecGimDPO/0y33APmIHIJJWknzxAZ8InfY/gX5VojwH0DVy01iIb
	 SgmyNiojyUq7MsVviHjXPnTKB3sgCvBWxZpj1PDfrgvEcqCVHA2TfoET0zwQRIE1sS
	 h6b6NiNxK99+t8tXto5liTpWlpQX+T9AQ6R63Yv5NO5jLkD2WwkWJcJq1MVxk+ndc6
	 Uaj4Y4Vfy8Owg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07CACEBF65
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741955363.29147.842233138584487264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77074ea70e6896935f54cf9a3f5e0e3aa4c1a8464ce72be058240ab706b3e9f7
Date: Fri, 27 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727419553
