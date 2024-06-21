Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EE7208A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718980943; cv=none; b=MMJ/zP62TKN4XDxWkn319pT71ylFau5mbVZ6xGwF2r/Q/vtzOqcDxzEvxDFZvz5Xm0rFiX3l25PsAjJASopQ9eimEVUhqONtV0GWiO5F4myIEAv3retIRoDbZAOQNtE/F/3w4XSjxe+FuGeKHgsvJF3ZErT8O+PE8DjNHXmBI1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718980943; c=relaxed/simple;
	bh=zNCHLJZpbO6IKF+xyfpfJSknVqKsogyrq4w8gqnm4VE=;
	h=To:Subject:From:Message-Id:Date; b=mz3fhiOSjixdBASfvxM5DFV1LAagnJv3GhR2xz+D3Xl5lT6XwchIlqO7pWxJbFNkWDcMiHUCdU2INw4Tn6PM2h2mMXutAY4Cm8NyoNaZ34u3qkDAvccoNP8gZIROJSSAL9pQWv6FT7xDXg//Hi+kyyQQr7b+jiQ/K08S1QZ8wAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMpD4Jya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMpD4Jya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE620C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718980942;
	bh=zNCHLJZpbO6IKF+xyfpfJSknVqKsogyrq4w8gqnm4VE=;
	h=To:Subject:From:Date:From;
	b=nMpD4Jyan2dPd5dGHrRTsPbwZYGGsRp3eL8nfdU9WXi50wCjarSrCrJEU1jbO2oIM
	 5D8ahGqQKAMCwuPWY45x4tYIy/43sT72d4BpeSM+aTdOpk1oWRv3FZQSw1BBEvpB4X
	 MZKbhxp6NI+nT6w8Lq1JfdoIfYhAFkcO42oTmDzwZn/iJPDMQOWBjBhL126XMKuiqj
	 fZwFIq5kcOY/yAxgDXrtzYCPJQttFFoGyU/B3YUOFDS4dGTtxQeg3Vpz4jKzqmUWRx
	 LLGy7qq4VH9rL04f97pvNIZyWcXKMCmTWw1EQg9AI9Ly6JC2qjbPf5aNmTdnjWlLaD
	 +AkXfjKN9FcpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F73C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898094280.15485.9895141682931498470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8475d538b96ce9cffcf26a2060345b8adf4c9cc880b206ca7f2a4135b55d16
Date: Fri, 21 Jun 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718980942
