Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1950C217F53
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765483974; cv=none; b=o2fBYvosk2r6cXyH+6LUwgyTdmcPfBPGZH28d82uNK84kxny9tECv4Cmx6TPpHvtwECrElCqQPZ6QNLuWCbQ5EFAr1HadQVr/KXbO+7HevC3u5AF3dAuPf7s+bg0KeLBW5ESkdLF6v5a9PSJoNna9isePSf8fZENSs2iwI6T0Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765483974; c=relaxed/simple;
	bh=zuoHUhlOIujlrT4OMM4PBCxGdQgLTIY6pEK78H+UDRU=;
	h=To:Subject:From:Message-Id:Date; b=IIcpzQZZuL4k0RSzi5YZnkA9xrAa71vPCaeI+VAhURSnP+p7eJ9tDC2V/hABYjdXsyCtVAOUI/UU0G6tt3QBt3eRi6hHtADlMtszVepm84isUM8KIgpy4+KKsTZGr36w0u5POxktB8XV1Navtr1PxKxJPMNbuVJLJZYVyNeO8/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHOxXnXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHOxXnXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776FC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765483973;
	bh=zuoHUhlOIujlrT4OMM4PBCxGdQgLTIY6pEK78H+UDRU=;
	h=To:Subject:From:Date:From;
	b=qHOxXnXIRweQw89gJWsdpSyJSgHbiLrcbu+MeKH3IHX/3NfJm085Sdl6YPYFF2AMC
	 +YVYGIhPJwHH/75RJqToUWZmmnfSoxWPMoffU3m/+0btWJC3GuT6z+u43768NfL9Hn
	 NTAXc5qIY4JAotTDsOs+1Dtm6YZ1DLMml0mTxjm+lakCIfLIJ9HnjJ6Se7cC5O5b7r
	 FBsMRzwpwjAIQrEhEMlI177SrbaFqrMtnTYvu2GgOuv+UdX/+A7dAxvxsfT66JlM0+
	 m4QpJwJsscrNL1cUy9QNThnrwMAG0ulXbfeZt0s+HYXUxXx+1mYvI86UTz76aEqjM4
	 dYmQP6lnGkTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232AD41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548397358.30958.6840512773287542589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30368f7691defe0d04aed00d6ba438aaad467a75fe86c175e65f11858836e26e
Date: Thu, 11 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765483973
