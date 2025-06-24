Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF975680
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750733394; cv=none; b=u/YLq/4YLDFhB4snzU2Aes78AsOlxtSb5E7MuNlKr8JJ330/X9dZ25lMGxE3l+MXDzWzJNE65EfmU7MulXT7r9Xqw/ud4nPJ/3LqmIF32MnmjAhUmQWxbwcLKQxOh1sG9PGT+jB4sc8cRnC+JnnJDP9YpL4ZsCbLaaIJikrgtSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750733394; c=relaxed/simple;
	bh=Igk4Z2NTyp6ycuOmwrZanoGx36FvATWgr4hEXt/vXhk=;
	h=To:Subject:From:Message-Id:Date; b=EBPzxLs4O95IFsi2icMxCfSJxAs8hCokF5sHxRBMMQrtc3x3e/pX8nUeqlZEQN5mDA9GYM8Dw2TQQ1/Mx4sM8MSQ3ZEsSutcITAnkYEPKEWei9vEElIy9+ueJIsrgEhbdw+PwFoGcm1MHbXyMbBV92ssgBGbHkaWNJE09+92yzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1Tw4jEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1Tw4jEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A32C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750733393;
	bh=Igk4Z2NTyp6ycuOmwrZanoGx36FvATWgr4hEXt/vXhk=;
	h=To:Subject:From:Date:From;
	b=E1Tw4jEa2SgRBkBqbZvtd1FPE4kSVS8/PL/LGPilmiUoyroJz3opQV66RahWGK5pD
	 OoMS2pXihSjBItSlwR9BYwH2XFynqrohP3qcQb9aqdskDX4ADDIomFIvEwpiEfpKsW
	 Z6rCz9BzDqrqKUaM+SR63LSucYHuvV3xvF5HJ8sQd00lpWy9Tj9TZiP0flRMXw328z
	 kiGb2sO4qRbfGmltnmUR9/D2TcGMAypj6wUrNHWPhuaDIM6vPEX8gdju22udxWYooQ
	 lV9HsuiMIWrQe7ORUP9XXOEmBT5LcXFCzcY+3BVUFR0xztSWUDlzVvuK/i1VmrWiuC
	 RdDx1eD7eHH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91548C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073339357.21127.13987326492699384172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ea04d37155b0807af2e4407e87181a103bff8b7b6bc471543730a45fced76f
Date: Tue, 24 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750733393
