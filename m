Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366812FB601
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118794; cv=none; b=LCTibw+woQcowiyNw13mCig828Mq8KjbHstuCGdSU1ySGpAL84jPNGaKpeixdodpEK4Aq5vTrJEEzd3jFHOzYDTTPVpqm0A3kvbe3CXRDPypXn1t0qw0gR/SXqcJmK6gjMUysm8bSTd0bQWD4ulLTnlivv7PJAtHfS5SmVe4hOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118794; c=relaxed/simple;
	bh=NvTu6jjfPq8j2aoIjGayvMpSrkdSoWqCEf4j48uUFlo=;
	h=To:Subject:From:Message-Id:Date; b=nKjrInGqmqPUgHwPpy0nnTSfRfHsx6GfLKZS+JQfTlW7Dz1cofdFt8tyFZa9MtCx6kVSAA+j7SbywmmW87Gb7nn+5K+uIYkT+l9uV6d1rxRH5bR0xkjLTsCwvWeOiX8YrLSmVPl0KQpgcX30sk3g4D8FRXWbptM85HRcLc/BuIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPz9F7p1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPz9F7p1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A194EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761118793;
	bh=NvTu6jjfPq8j2aoIjGayvMpSrkdSoWqCEf4j48uUFlo=;
	h=To:Subject:From:Date:From;
	b=RPz9F7p1cL29pyH7jl9fPf7vRIUQxWP/Ir8oHFMmZ3iHAgEi6XkrcnobawFb0BeLE
	 p6dsv8M6UyuD/Sh2v1sgV9Jn+QjF/tOyM1vLeKAphfGtwMwCiNXOaDlJsgscp9wuaP
	 WsawHOKjfYHTkxhaMlxjB8J7pvTj40LvSbCsMev48GBGDHU3+NY/RRypickVPB4bPA
	 TMn7NHm/Qb5cuCHeqJn8guIE+HrcVMyeWTqgX7TJ2jd8L3hFWRywFvIubf051BkQsN
	 xsDoXWSXfTn0zFSSy9jRdWoYMlv3I9+dU/yNjbYDqPX9B5XDyIwls4OPkUTTFV7TsD
	 BGioLlSKDVSoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7ECCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111879358.22470.11866976466353087588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c840e0d4ff15bf4085119c1a02501c889755873dc6b1905f71120ce8e0631f15
Date: Wed, 22 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761118793
