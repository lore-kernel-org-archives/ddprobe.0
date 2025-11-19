Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D1136E558
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763569314; cv=none; b=ullWJADsYAHbwGl6Rr2jq7i+WeTrJepcSk7NZHMRvTf7NGO59OEM21DAXymmsLVr2HYFKZG0NgnQa7d/sCJGz3N3nBjBAwqmSUnvkx9HCHavHwyS1XV6AsSq3wcm7AHkfpmHTdKNTew52t513S8dASZXohkAuf33eZnls3BUafQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763569314; c=relaxed/simple;
	bh=ne/te8AS4ARXmCpWKn5R564jw3E9LyiD/kmWzjoZofQ=;
	h=To:Subject:From:Message-Id:Date; b=owOuN3uWbuRJrNThxPtzLUMoBcdILCNei1I6I1+Wtzku/uIapycZYveUxMNi+fF5PsUg8Zz90YfcDfztJcb3vEOZaXezj6wFrSDgkg332GQzw4Pk12ScafoxiHndSWVx3meAYe1MPe/Z4z6nPvXlaJJWGETJ8+v7YRnxShgNV+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPZ/O+O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPZ/O+O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763569313;
	bh=ne/te8AS4ARXmCpWKn5R564jw3E9LyiD/kmWzjoZofQ=;
	h=To:Subject:From:Date:From;
	b=tPZ/O+O4qfpSgRsXmSGIkGudt31tG3Xq73+ABeIHBT06AEWRbDosvSJMGYhjQ3Nmh
	 /Vgb1b7LHmZP90sNArxHRRwGt+kDpm9jFWhRNb6WowzPtJCe2kY0lr4yTiyc84Dj8X
	 Erc41q6k8Xzs/MmJE7Ycof/Z0UEpMc3q8WuneCmDOoKEbeQw5laVQk/mdENdz46fZK
	 mWu62m2V0UX6tW1reqCuYvRILRNWmYA+ZAHbFYqczUTTtzORSxmPhOv7Hi4lNpwXUQ
	 L2op1252vmiDYvI3HwVR7LyBXe/00Z7PdziElvokm7DayzhSrqt4psHnibBSGqXWOS
	 NfhAi1jvxqWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E5CF394D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356931359.21428.6333621759474624204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7f41c172df8d436413613664456aa0b0936c6c84532da03d7ee8b05d561499
Date: Wed, 19 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763569313
