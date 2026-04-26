Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7F211A09
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777237054; cv=none; b=lm2Uj8kR3bzuiw9OOXyOxa9K+4jfuVuQO0J6P0KNuoH++39ARKJ9v3DIMDXcELG1tm+c+3vRqWJek9BTKXUK6ofepzrj+ftMiPXNMZQOzncODZXTUI/rQTlDthwLdbSyHUACq7C8zN+/TvO3+6DN9FC5IY1Fvgn1aUz0sYUDR6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777237054; c=relaxed/simple;
	bh=mbBEDNyoLFTOB6Onm9XugltZ0G4xHJNlGoP6oYo1kls=;
	h=To:Subject:From:Message-Id:Date; b=elNkpzXGMAdI0Ww1QfallaZnLM9LmDX5rwIhAn2QEpk+uUb6naO8ePRtA8JObp7J05QU8n+GstLfZoa4ZpbbTYZ/a1da9fSbnZYkNI0s6DBKYMkpS6p3D9mXGLgcZLoqasATYTwC5loeCOMnfwKTJosbyXHYyEiCZgawC01xMRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr+qDjOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr+qDjOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE98C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777237053;
	bh=mbBEDNyoLFTOB6Onm9XugltZ0G4xHJNlGoP6oYo1kls=;
	h=To:Subject:From:Date:From;
	b=Gr+qDjOCiej9yNUoj9DqcOBVWEr0EMFPY5L1QtN/OcC1PO6nJD78D359HwpUzdVmY
	 pHwxF874d/CrjyQ61MPUMUOR9XtnW8XMPl/npMvwGpiDTLoir5LBS1WrCICGCrvVC/
	 8pu/eXHTNsn1AdiFFH/msswGilsZrtwO0BQFflCUO7A508a8BZsaBUhcogKB1DNHoT
	 XjywItsw7EOtJioZ4XQqeE5PWzu+3bT6qQ1ZpX6AqXu+hPCKLjkl+Cc0v9s23kGqBU
	 3v67YaxRy0FCZ//ZJZKSVfbr4NlLeCxgNhocSeDmbj4yKFIXY7v25Im1Hmr3MPUz1v
	 qp4Sp1l3xb4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF6EFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723705368.5804.12275733834257525766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65ec13a8a251055f2699fa3876c3cffc51253b90ab03bbe9ffaf64c8cea3e16
Date: Sun, 26 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777237053
