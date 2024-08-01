Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8BF13DDD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722494154; cv=none; b=rbU17LJwrN6KDTySB+Vc6Ndb5J/3gKWSpni9LosZ9Zljgn/WgToLJ3bRPw+Mw8D2FOvznYEkCbh6DodhucCvCWwO7AqxQ8jnFnhyKg0p/7KTqMYEjNzUMRxxnPyd8ZghtMXCAdX3cqWDB16+jIUJLx50HXSsgJvY6LXDQVdg+wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722494154; c=relaxed/simple;
	bh=Axi58xiW1NEq4D9gbv6OqKqEj/29775YXjrxMSdKrBU=;
	h=To:Subject:From:Message-Id:Date; b=goh5nOyS4vl7ykm8ZDsp6hHcWuttqraHUiSIJHo4fdhv9ZrNsE85daIKBfspXZaVOCLtt4u6IKNwkD4YEidUjeMovUPhhfaWrpc18n5D5SRCbbCHwJn6hzhBlPd890hrZkyBttbjOphChB4qG+QlFFmiInEmndXEjIdNVaWIzEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/tNZ8jV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/tNZ8jV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8DBC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722494153;
	bh=Axi58xiW1NEq4D9gbv6OqKqEj/29775YXjrxMSdKrBU=;
	h=To:Subject:From:Date:From;
	b=Q/tNZ8jVi4m8Y1KdyfjZqOn+BBIT2IxWpS1UM2UC9s41Um1HY3/6JcTK4fNbU+CKX
	 U3CVcN16q7w78nRnn0SODvuB6F9GKht0W22VUMFUtReDZvcdlzHwa5Qt0lV7FOUvG8
	 4zgLEgTDhM/T02bT/c4VsFPqfMkwmEkJpurceT6QcV3GV8TC7D2UGCRAEo/3T7kZzk
	 JHXXE4/CfUCwot4+rZ8qd6GLHAWKvH5n0XFnfpFq5iET30wYcV4XTB+/lJtJW2rxTS
	 xUGV2/tPXdlZw9leCGijJkeC8SjZJXRcRf8L5jwAaWiOjdtPCVSZjnFhtmIcS1GosL
	 yCyi1FF2C8Guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8EAC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249415375.3414.6935988993937872912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4a0ea43210fd31f2d58dd478bb49fd873b813be090114cea50353973a94f02
Date: Thu, 01 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722494153
