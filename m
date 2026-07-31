Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA830C171
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785520234; cv=none; b=SZpa93L+2l9MxTitucJ1R/cYRvCr4LvT3TLsnkqz6TcvLW1dOOGvE3hRqCIMPC1XVlVEqqrjt6iV/dNsYYDGTJZ7UYFBjA7iPsVnyG30SEbdNbodwm58qb4zGXziFxQc5zmo1Nzs9cv0mDuL7oYpk1dA2Rx3026TfQHTxSS8I90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785520234; c=relaxed/simple;
	bh=v/QJoDQZ0p5+124KwNggGhPuuA9e/U+qicAMUDkpQ18=;
	h=To:Subject:From:Message-Id:Date; b=FnYQWXtHitOFTw5G+lbJoRUpzGnLVrSFfY2Nvv838VUyN0cWmOnqE2t04qtAILrWZqF3KBHkTXWOzuUv9jwH/lXSMOINXniIvnXYv+HttNdF/WCdudPVTQfEPVwFDRZ9K3wjqEu7NjZqIfUlO5CqiyT+24aPLWfDqRIpEUKQ/fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYI9eXTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYI9eXTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4FCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785520233;
	bh=v/QJoDQZ0p5+124KwNggGhPuuA9e/U+qicAMUDkpQ18=;
	h=To:Subject:From:Date:From;
	b=NYI9eXTHH2Dza6Y6Vg9lO/uVzJDuMxfT0MN+H58EMh5sK0R9zbbTIujsv95Q/o2jE
	 c3U5UFtwbbopokiyU4ToHi5pvIKp5tinjvl7ZX2K39i3ewlAxT+X1GdbIzW+uP67ex
	 X0SQ6oy4exb3aFypI0AGKQWjVcrpmRO4pIvh8vlCtzozlaffFaIpwJomO2CwbXz54q
	 2mEl0Izdk5bxnvPXJMQrg/q7cB4CAe2auN9UN6EhvWyu4FApPI09IbYSrYcw/7Kflm
	 TKp9MJJuXh4jXHIVjdSqM5+i+5VRXGe15oXG94utmN3vU+1Wjz6IoGfMh+uGE0Uvjx
	 JIae78NkfMILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B6C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552023368.21129.9854654006761692377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6fcebf2cc804eb1d3a623be7948a053149a34196eec3651d9112cc96786b96
Date: Fri, 31 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785520233
