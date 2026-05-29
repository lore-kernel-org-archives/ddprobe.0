Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CD62DEA89
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780021354; cv=none; b=eWchOwa5m5KUcRXid4Vk/12wzpuxqax3vIFmmI3flHdE8bqlguVg7KBnPRQqoDvYbPr8LciqtdS/6WVGamSw+kqV2kxA1vXaOjoUmhAJ9rVvHWfq7DS1l4+5rVtCfhkgucxikA2nXH2eIqtiNJn+eOOdD3BCuHFiiCOTPaFCjjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780021354; c=relaxed/simple;
	bh=dsrQpupz6y3TQZKNaq4F4Ba2D53vgsIpWIkymqtgQtU=;
	h=To:Subject:From:Message-Id:Date; b=rhmhF6bwdb99sR6fP+zQkAoqpwjdI1foxuJ9m0qPg2dK3/rrZG15icxWQYUBog6ArgO0KI4vPGt4P1CEW7FkWh3/K4XD+iXZQXKmxG8EOpEykiV3PTfl2fepv2h8yp6REO4KAEsFhd3yIl9CsIEsgOQ0BtVXYXtMJCtFS0kYyag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRtQ6bWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRtQ6bWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BDAC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780021353;
	bh=dsrQpupz6y3TQZKNaq4F4Ba2D53vgsIpWIkymqtgQtU=;
	h=To:Subject:From:Date:From;
	b=kRtQ6bWzb4/sllOS/A6tCP6yPWTZED7VGQgun5OP3b5oCpkc6FjD4zSdrA69uqFBJ
	 EvzyyPMvewyQNXmSaezZAQUksw0O7ixXQqWfg66EA6TKeodYWFnUnBVktS4vMcnFwP
	 Z3iVTitRmP2wsCjGAvA6pVX1DobMbfYf/qCWNrk+DMbp/rualpPuFqV2pXdF11a341
	 CD527KxJUul0nWg8Pga3ADbtSUOl8IFrErNCWjHtS2+C8l22eatk3oyaD6dCbWKITj
	 23oHBsKIuXAlExLfiSaX8PkMd6/M9FA90vhgc82UFsK8ZtxKYKcJc4IZwtBfJ6sU8S
	 0LUFUWw/EEn5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD186CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002135368.30963.17566325845211488506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444bbd74692486547fe444581cf780f8df1113367b3e828aff66c6e024497eb3
Date: Fri, 29 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780021353
