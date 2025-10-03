Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F225C81E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759477794; cv=none; b=BS80IOd1be8MWrE9+vQr44ygSqodi7maAO5+amLIFfN8ZRGLSzV8JQ3W5Ltgk0hWMgXLaJgbJgTedsECJs0cw3bTKara3VNw6J1URclCWXmEnPGSW8nViteV3itTIStbK0n7PQ4zYzNBAWxNfSLWQy8L2bCyrpcwwu941dBLkDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759477794; c=relaxed/simple;
	bh=sP8FH3jIk5/uZqhvdQVHHObqkcp5wRikc5V3Wg1i1ak=;
	h=To:Subject:From:Message-Id:Date; b=bXNpQgQH5xzNu7BRt/Qy9hNllRavRxRcaw7T7LRhY0XBupvn8EILP1zFTWI+dA+1sJzCgHM0JNaNJUJpHXq+39IWTypZZCTozFwlEOvwXJnyroTjrK79xE8E19nrHxCtg/wbx4d64h9Kd0cpk/YoHpHugy1U3Sj7k7f2XwhvfOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6lZI8gC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6lZI8gC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BB1C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759477793;
	bh=sP8FH3jIk5/uZqhvdQVHHObqkcp5wRikc5V3Wg1i1ak=;
	h=To:Subject:From:Date:From;
	b=m6lZI8gCf7oSbvQKNi5ohWAfKR6DQ0f92h12ppnHpEzhJ3ViPU/w+f/c08zxheGAU
	 cyJhjgibahvvUAFf71gatKbNDEcB0uha7qzS9f+ySMkN9xrLqOWwUUkGGHvxdiKdQf
	 dEy79n1465nNR6UOGdpNt2iOqL8E5vrfunQTfRMVQBCtIS6Nb+JDHobm0yVEy+8wP2
	 YBC+QGMlfSa4YnxU80tPxCNCAQkUaSZbt0T2NvzCw4Dw5y4FpgwEaxqVQG3AZRj/fA
	 pZBkIX0HtC6sg2nJLRo40iVc0fgfg2cBmTT4eJshnzqAjpfhZVlC40zMR2ZVKsR86i
	 yXVJosQH3MYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95026CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947779357.7053.7833971489083797497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67524be92c85243bad62eb45b9c290e9ab8a940c7b15b1b67764ee98f0a6f80
Date: Fri, 03 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759477793
