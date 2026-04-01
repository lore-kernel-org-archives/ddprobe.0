Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41451862A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775016293; cv=none; b=VdZlpt+f91B/3uiDhfgyLfw4IwkAf7LqsT/K7M+xHUhklfNPiuZOXGpR4ND55M2OXz4Ns9rTGD63tD1VNdwxoEb4QYmGxIgCihfKYen/1EqBd+hm8kqAt0BzAM/s0lIRPX9IRGIrVug8pCoN9b0bg+8T9fJtSmKFqQQ+bMF6KaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775016293; c=relaxed/simple;
	bh=Csg7hAO8XaWkWaNQytZKyrUPQie7P7kebLEi+jDF2ts=;
	h=To:Subject:From:Message-Id:Date; b=doCMhkiMzvBLEZNCCqGZMpP3BBLLnvEbDGwh6g0ky5C+B1Km9aGtQP3WlhIXiYWGQb5UCJYbNWdTCuMAM8mxRLY4j5HJYM+yIAL2x9ADOTCCna8l7cZDAv/4c67xc7pnKixd8PbGW6/hf2pWlnsmQ1piZytARpXWrLa/c5LV6ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dB2VLpe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dB2VLpe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A8C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775016293;
	bh=Csg7hAO8XaWkWaNQytZKyrUPQie7P7kebLEi+jDF2ts=;
	h=To:Subject:From:Date:From;
	b=dB2VLpe0jAwBa1sIuj3ci5c4+vGt285qGGdChK82Xkwsl5RN3Z42OotUxocHeYoka
	 /Jh0kZRYGBn9jszzFKqmeIgqeuHHiN2DgbOWjqc8Px4agO5b/GQ3k+Gc7AdS0yRXC8
	 mk4e6LDP0DaZSmg+0PRVYQISmQBze4Aexj1dt1ns3nMjl/c9FmEWQYxNn/+cUuU6Pk
	 VMArPNfmKMSc56dJoltTmSkI714oNvSTrdz9sQU5mmfAcytAZO4iJ17Ay8C8M9LX8P
	 VHOY62iM/c5mQV/Itvz/2mC/5UjL9recpcjcLwURouyhFJr6BZDZWVfaq4VPq4DDw8
	 6KSF4Tkm6tHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFA10F931D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501629359.15759.6285653570771301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfb2a0f50aa1f66be0e68b2650c82190e3781b5b7e580d31c8f675ebc1f70d8
Date: Wed, 01 Apr 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775016293
