Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71310374C6
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719911123; cv=none; b=JNKQrRtODfzqGHovSLjZHo3HkqYhe6JWD+6mxWDu2r5d33B4yTktaOooljfLseOcve83/teTIrwC1568z4LTx0StIYLwuee8T6CJzeDfZzvuIANIo05VCfFVrbNwVeHek9edexxrCnECITuj3ObfJTRYxdWWgqDjDwze+zotKvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719911123; c=relaxed/simple;
	bh=aAIYRE5HItN3TVPCvbO+hHGO39u+qSfWVxK94w4XRHc=;
	h=To:Subject:From:Message-Id:Date; b=jAnkyXOaqGMG/gLNyEow1cnzppqKVY1iuhVR6Gwl6yFAhyJHLVCNI0+jRfhGY6xDC8C2O8m8vr+fv0n/Lc57/4+RmgOPN54odZDE8pBt5mPItiHKiuWo7blV4zHLz+lSLSm6q00zcrFlk3m/Z4Z82qmX8nDc494JvkSX8HjZ/H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqD+Rypz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqD+Rypz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0534C32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719911123;
	bh=aAIYRE5HItN3TVPCvbO+hHGO39u+qSfWVxK94w4XRHc=;
	h=To:Subject:From:Date:From;
	b=lqD+RypzlyAxiJbHr1q+sfPGVi2UKp/LWLjO6GVXd+OHpM2JpD7Rqs3aibBp0VRRu
	 kUPgmxofeVeEDGZTtA8fI7nn859vRxQm29cXuy+xhMcrJIn/zVSMVUE0Dse9sXE87N
	 S7yHGxxhdH9yJNnaWE1eVznY8eulHXZQC+2HLoy0T9E7Hl477VCM1HESZNwW8YMMIV
	 /Q5Fs0ah/mpVHmAoThAoNjmdbYat2wHyBvg/8/ihkhVv6OYqqQLhmQ6fYv4bb6QfAg
	 mdlDtiAHrTCgNUGguWqVdp1UZ4cpSIlpiQ0XhYN/n5Z8DNi12+JGi5aBZ3qjIlYwS+
	 AgibsVn/vdhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D859AC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991112281.13653.931645307971876926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c84e51af7ecb19a7ff83377553e368a1db460009d9337fff392d1493d80c4c9
Date: Tue, 02 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719911122
