Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287D0290088
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745619594; cv=none; b=n+/OdIZqcDLSh+U20Ch6OEBJWif2E81/OZRXZY0bRJRHYPX56dPPoyRkMsnyhQ/QTn9TmUpq8/BXOcJoi8fO3nC1B3LLl/KWPsdUW3TVhUdRxTXkQ4yLzYpLkISnW9yHDRtzoCNcvgK3mXKYRsfnxM/zRMZcOqUyT5qNNi9HdTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745619594; c=relaxed/simple;
	bh=gRvcQEcdg8GKnbwqHSlfo10V6WcRvDLqWbMniGBTXr4=;
	h=To:Subject:From:Message-Id:Date; b=kkbvBrmyka+2k6yv0HBrti1A+6y3QjMRtLx+9EGtML8Fm0oydbIpQnHC5whw/2Ecj/hRIDLz8HkNlqxi3S7LAexVGKWlPg9mLv5hpSpDdDRDFID16qs5aX4tJTo6DwLTDpQYTayJt3lHuWYFewzQVpyGzU1s3nGd1L/SegTfTu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF7hPFxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF7hPFxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745619593;
	bh=gRvcQEcdg8GKnbwqHSlfo10V6WcRvDLqWbMniGBTXr4=;
	h=To:Subject:From:Date:From;
	b=GF7hPFxjiv3gXlbz/x2gkrICiRd0DsO9ywrE0TP55ZMK2smPz7Hfy6gqOZoHq5qyj
	 mFEP5sMBewlQdgPE2H2JaMqjzKm4Vp7TcAercF+gBtUrg1wrM+JXSV2/pGijdfnj3C
	 d5VUHWoQvCnruAfHfZo7eaDDGSKwCVvWYoHZPImUrobHv3gyLJ07HgIZrKfS4WnN3+
	 9JiFfDgtTPSA0bADK0D1luV3S3bayr2nf0Cl7fZsBEN370G+Q8HvCYcNgbu+2+0tl9
	 uHi4JEMGc1d5V25eaQPjcNfPUs4UFk7A61ygXE6Ue+3mwRDwmZe9naOmutsy07nqeP
	 5UwvqCulb37RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4FC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561959357.18504.10735025498149049957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63e114a13a1100d9bc05aa9067f2be50b6db4fe3e75089eac80484f9a5571ca
Date: Fri, 25 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745619593
