Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C8A18734F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737135954; cv=none; b=dx8XMV6MHAyWR1haJJDkzwKUu52KhxejEfwiuzTfupp7t80gxQ/BXYMKSC5ZMdxDLKbf7WuIL/BOJ3wem1v/CBuD0XfHyID3r6r05ebrLDgrAs8Qirxfze6fopy/ddfsTksP26Os4aCd4gMkvrxp/kiHiG3Qz+L9MHsep6qCEqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737135954; c=relaxed/simple;
	bh=Xgi0qbBoZEomUbMcoBEzMur7M6g8PPxyfBNco1IzdAY=;
	h=To:Subject:From:Message-Id:Date; b=csnsb8TJMTGdxzFcYn9IkusIIlpoRxocZwuBw9gpepY8EXknkdp3SDErhwdsnoRCEORdKmuix6yOuT1QkQPipTvZ1HR3miNut8u54pqtur7phAxNogIsbJHl2YGvG7f9V7kBjPMfdcxd9DPTLZSGG6gWjBjDgZJS44o69mlg7iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg3Z9+rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg3Z9+rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB431C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737135953;
	bh=Xgi0qbBoZEomUbMcoBEzMur7M6g8PPxyfBNco1IzdAY=;
	h=To:Subject:From:Date:From;
	b=Rg3Z9+rdPPWgq8eHo6/nMQNQXZKKud+B20+Q1tuxyS2f8usfdJMh5/yJguAYfylbu
	 xnrZlSD/LbqqSMtRXTLFSTpwnx7E8VTtd/gxgY4jGfiaKvYFPDaNzekA5PcLRD4zLS
	 AK7ZOND/4sj8ERMFvXWRaDzZyMfdq+so2WKZIVBHyeUknyQEtlTLsA8+2K9uR3cM+Y
	 g9dM+MHViYlHM8qghKSTwkZol8cQVRhQqW+nd+aljjlRdxJNh3LMyKh034wqfZSzjf
	 dqB7Du29CQSMIaIzqA4yCzGB7H3RgwN5lVzY3FFK6KLTAyJ7JK8CYHWk+8KZsaXOHc
	 9MdP9Mak7vLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B38C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713595358.1952.2324156958962596810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb964bd1a5857d4d41126698ea572894b5a5b971cf81f9962caeb60ea424aad
Date: Fri, 17 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737135953
