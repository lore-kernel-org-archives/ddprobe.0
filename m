Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD0EF9E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776192454; cv=none; b=SjwsdRpTl/UMKO8JaJsp7CKSBrI2da1v5CorlgpfedoKqbVxhkvHFq4zBUhXWei87qjKozDNWKYduzpuoOcrfvM/Y5S99zOwNj2/SaAan15Twcx8XSVIsOC8Og4XRLeWASzlIATdVZyJWTculAxfoJgHt/3sSgyzB9ZGmaBl4gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776192454; c=relaxed/simple;
	bh=QDjNuc6gltpKXWG0vIoqIlMa/CRbaGHIK7SETyFVaOc=;
	h=To:Subject:From:Message-Id:Date; b=eaBrggivTMyEHRe3pF1146p4auK/56TghY/Kw0KDkb6JJENs+nF3OBlxY1LmGcDObFVu3lZsVwiRfx7CI842w9q8XqtFaKOUDSV9xDD/r2/qNVf8PRnZnmKr0+KKf4cAROtgjFijYA/RTgmhNteW5T7kv7/H1bQUmaBj0ne1x+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU/yxu22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU/yxu22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D01C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776192453;
	bh=QDjNuc6gltpKXWG0vIoqIlMa/CRbaGHIK7SETyFVaOc=;
	h=To:Subject:From:Date:From;
	b=gU/yxu22nNz0gIbR0ICsp5slkoliz5EBkzabUB1iuYBqVbCgUrDqssx/sC48zojHF
	 8mn1SCGZ9qHQRuk8Y/jtGn5YDYex+f9uNMuJS1zlyzB1zExm9+yhnQAk+zDTkKXZg4
	 CQEfqD+CtjVxZS+CTppMrqSk+SwfVKhGIrD1no9H2PDnQ7G/XioDn3J65J6OEViMar
	 amqI669R4dA449iLpHYqtjc40dhnU8KHIcZzTwW7XVnsCODq/cJfPN7N3Pc2RPO3oY
	 RAOFs7RIYCYANR2zEseT3dkidu18xTZ3EW0LCMFWvtQMFPXC1I0//omjaLmX+/ykxY
	 lM5yqNJkll37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA92F9D0EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619245369.15270.8922030270269308374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0504dc494c51d4690bfbbebda02f46a1076fb2a922d2d8946fd03730eee630b
Date: Tue, 14 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776192453
