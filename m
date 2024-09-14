Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C17412E5D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726307754; cv=none; b=GQby1kZkdMGfdL41yNlouXvCtdU0WodChoNHQJ1DPQcO/NunA12wQTx8sD7mmAXuoBSLCNrPlSEgFHKl8YRKXfo9UZpKpiLHVnRjxlXOLY7dYIaKwbsjLGSx79+bIuQyQJw53Zy6CUZISF9zODwltmV0P5ldcrlyvOW613CRozA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726307754; c=relaxed/simple;
	bh=gLkt3LOmrGOXH5WcPAKEAwGrPORXV7EG7PGe/CfKvSs=;
	h=To:Subject:From:Message-Id:Date; b=cKweXazwVJFZhn+ryHJmjYMbhpIl3VONW9E6fADh/oOkUNeZZ+vUr3hIuF882bVPv+0P8CJnXV3OQH8rdgptB4zY4zCU7FYA3RKRMm9NPutxrU97c2i7GnDka6fwd2n0uLG3qWjUrmOgGK35essG3FhCH/ogz+pqV49Ia1rOO1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIA4R7xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIA4R7xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726307753;
	bh=gLkt3LOmrGOXH5WcPAKEAwGrPORXV7EG7PGe/CfKvSs=;
	h=To:Subject:From:Date:From;
	b=lIA4R7xiMShDMQctau6UALCinTIEiMDNCVw4LFnIvxJN4cSpd8KRgNjmv0jSkyN9+
	 +85B2Es3kjt9Y+1gj9uSrz8Ngn0cR8lqDspbrqcDPx2u/u6zr2xM1xtSMQmMr8w22W
	 DqbRP8n76oK5POc0LPzdangg79+k49NeYIbMgEF02n2NCOpVWiRaFEujYDqJH/G7JI
	 7BiZukosLL1wSvvDxuv3D6ymRBrmZtP7UOrnIWZ0ROPEYEg45zbR9oseBxvrkIARh+
	 Sb498Zk9XIlnbfpNd+N+sZMKlRXjcDi11ZIrBG+ZVj8jwRAKrwIioPYvK08LrRwna7
	 DUwiO4I2kJkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACEC0218C
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630775358.28213.11979703544277616414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b716f5a0d4e917522a5b5e41cca599c2f954934c28598dc8d2f6ac6e7ca3d669
Date: Sat, 14 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726307753
