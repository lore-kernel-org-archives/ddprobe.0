Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3552918DF86
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745271594; cv=none; b=tb+jHQMSSovm/miFRrWzlALNCKqWc8VqI+ahSpHNCKURiGcfZCkjw0ivCJwduQUJLf68vio1rLqAHNEprn27Mazk2DiGssXrQsHpPthtqCQbPavTolCEpaWNR/r0FUWe9EaVWVnwunsJbiPNmnR0dtmbTnTi9Me6hUGNZhhY6r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745271594; c=relaxed/simple;
	bh=yrF68OKNy+h6iqMkUB8yYCLCw0EHXNRCrqvG/vH50gg=;
	h=To:Subject:From:Message-Id:Date; b=rMXYNSgtKApP/Hk/uKKJa4Hv3vh89iM1IqsYIQ1IqouXRKyHKvFO9mtreJ4qATZcudOotO5jcyv6v2f7xKj49tBSeHsdgChknMOOJm7sdvE64P0UFnzeywNVzRf4YCWLChRbDg+4AKhGjw0m8cUkzUH/I1Oio+PuzlEbGzJE2ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwJ54Bn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwJ54Bn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8802C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745271593;
	bh=yrF68OKNy+h6iqMkUB8yYCLCw0EHXNRCrqvG/vH50gg=;
	h=To:Subject:From:Date:From;
	b=fwJ54Bn0LoeTYOfxLYtfkXIZPdlImL2NrSmooQFQSDDeycqzSSbF3Thzo8gdXywNV
	 kB/ouAtiP6FAmJEGxcD/0+VnImSyoM8YsM+5hqcYPoq9CZCflDXM1O5TguUJxlD7bs
	 S7LUV1CxbmAdL+KfBvB4TofWEYpNiJw6WR9v+6/v2WccYnCmqsKZTpC8WC1Q9djDFg
	 m8EPAKP6cr1Y15uGf2dv5yh3xeDED4UxH2O3sYxY4VD/LQWCOrpu+1BGTGL/zSmvY0
	 XDYsNXjPsL2CVqxK0S3uR/mQahD4atgmZaB6PW4a+FKFXQnDIJV0sXsngSuD0feBg6
	 by4LTQd3qw3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527159360.18608.8824450732176259730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0c328f2348db646585fcedeb34ba8cf5be47f15ca58b455258240169902fb0
Date: Mon, 21 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745271593
