Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF03CB2E5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784207914; cv=none; b=mOE4oZgIDpscgMPMakY058X+d11DV4TVQGfA6d//ATtP3Swp+IKbNR5mikQYt/khwOqJD/FX4RHPqu5z5ulSvhv+QsYmdj1bWcMJzgU715GSbr+J4TugQZ+Zs5DPk5gwbSKcsZ1YMuudDqkhzcdF7QN0l8RBee6qg9OzhnV6sWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784207914; c=relaxed/simple;
	bh=ltjrFiEB0FJED+p3Sezp09CaKHSa7kRHwzqksl7fxKQ=;
	h=To:Subject:From:Message-Id:Date; b=Q5x+6xCJrKL1wJ6IPp2/fztWB+rNw/smll4DRmw+yETfvHZ/fNrAP50vmB4m2woE6eqq6FMjHGhqMNr+DtJ9dbrSMJUBEMCKZ0fwqky+Ox/R17BRYyh0MYc5/CbTSfg5r04mkyO5lUNUElgfF9JydpqcAp97naiQxFwsOsIG3FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFVfZuRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFVfZuRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC14FC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784207913;
	bh=ltjrFiEB0FJED+p3Sezp09CaKHSa7kRHwzqksl7fxKQ=;
	h=To:Subject:From:Date:From;
	b=JFVfZuRiCIS4Xf8bm1kL+NpSaPpR7EX1v/zWLHFUy8Qglig6QhKWdxyucvdA0Xmdn
	 cjoUBWwJOBXq6uktwpIg+ws9NPjnTUgwGdsLNLhCQuKK+Q4N+CgbfaRGEEePGTsLzK
	 w5cFya4BTl230FYNYMAJattrA07ZCEJwoVyuKAsH4jH3z6Zlmpm3Wu9K7QfK6LK9lu
	 klS8LhEcM3s1y0FkFl7BPKexA6o9Irse2gwk4h50hOKpG7XvwgFFdK1S4c7OgrSHAA
	 IIAanO/jE2efiqhDUEUnxiC6oOnj/i1GEuUo3QrRErlTN7ErBUzaEk074pJsoyRZOo
	 mY4CoLM7Vqodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB8C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420791368.29429.12196552849716573370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b31d1b9ebba40e567a61658ed48843d49269d6ca27dadc2a0761fbec44cbc3
Date: Thu, 16 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784207913
