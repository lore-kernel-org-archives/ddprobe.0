Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6A027A906
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759308595; cv=none; b=ORv3EKL8e4hV9ck4pqoPTnyfDDJFvTuWjd0EnyLFDWFXaK4QbVZZalSzwCODkv1B9X7iKeIzNNKP6XNPHI4wJrjvBZ/cZYQeS1cLsUirSgmKM7+LdedA2/iKaMbVJBIWZqEWaQqHle6KWAYav+QTVLfq9/GEYGpMRA1Uo6AJQ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759308595; c=relaxed/simple;
	bh=jUc9vQmMz9OVTZrhvjyYBRypCD/axRiaF3keucWMN+k=;
	h=To:Subject:From:Message-Id:Date; b=bkp9uNOOQ3AORZ4P945rwU2vMOhWuTMuE53Ct5IRSZ/0kVYa5NTsqWoFWvJYbcxW1kbeKm0wQcbMp0apCg132MtVtScmYruEh6V1Oyp7lqVKLHin4dxoiTNIZxbp+9f3zGAj8R0hXsK+lpGI8XUX2HYQbHe6CcSK5y9ojPBThp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEjzTOXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEjzTOXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284AC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759308593;
	bh=jUc9vQmMz9OVTZrhvjyYBRypCD/axRiaF3keucWMN+k=;
	h=To:Subject:From:Date:From;
	b=OEjzTOXi+yYVukiRM/lj8s6vTFKOGF6q4GZTzAGKih8IY3+LnuBQSkTz3n1E3aMyj
	 ps+An0LY62ICFf4dkBI78/u0NWAttSLvl2E5Hzmx0Um+VmTpdxM19VOszz2p7PJukn
	 ppgO42emxECIyD+JlQ6aPxV8d+OPUD08ygODUpLFfpbvaOG1snbCeu/KywtLr+s6OH
	 MT8U5PI/2rEtEW+MgJ47xhBUvsWtDHbpyQSyNAgSKxyJWYvC1QZlLhZfod5fYZ1Hor
	 iqMlwAJKCQPsTNgoIxbqCGRj8NhCVkZEwk1t0oSbm6dgP4w3w95J+MFyPLqSbPmDtk
	 d+QDpfYCROodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F364CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930859357.17357.13726851230326979328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6806a15fca5010ce1f18a885f611331822361ed15172ac3426e058c77a61151
Date: Wed, 01 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759308593
