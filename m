Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1821921C183
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746128995; cv=none; b=jn9GEUlPBUQVbV/i0y1MLz6lghUBVXVKPifeaD+aqPSELjG7PfbKIy7UYoPXEI7aEF3tZnJJFQ1ANv2zOhjaKg1ftMlaS/6AyqE1Gs/nvTdTCwC/KsIAcoTMVbagDxWK4uWeeoI5MsWWFXlbGB5zfcFmlUjDl/aN+K3Y6jMDeoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746128995; c=relaxed/simple;
	bh=/P749wFNPV85IA+ikgix1W9IFlj+l6FL2xrLl1609FI=;
	h=To:Subject:From:Message-Id:Date; b=i2MsdSXiCPa9hduWCdeK8i/cpukE8NK2Juwfo6FiV3HAsYfVydxYvmMZrel9ttRnOG2MTEj7BRV3OMEdbdAq1nJqNramhW9ODini+zmT+owrUXYarwjfQpnJ0GTOFbSpH90g+5wMetLU0EQWZzuw5oJF0PDrC8A7oI1QNhwc89g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK6w4Hcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK6w4Hcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D79FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746128993;
	bh=/P749wFNPV85IA+ikgix1W9IFlj+l6FL2xrLl1609FI=;
	h=To:Subject:From:Date:From;
	b=QK6w4Hczi3XqffOJY/UcsFQ8B5pNSZ2F/8ejMwbUK1ju/0ojoev2qEJaBcsWwZSEb
	 NfX9Wz3IWVwCZRO1eOm1UXWGzf4z19xKw/CuvQjIVzSiCezoLINXcEz5sBbA2BKMVJ
	 RKDllm+QOYp1Cojnz5rYC9aWqv+vibl2o6CUUupz4zsfVY3MxJ4DRHsTUPgz8dSK6A
	 mUKD5B5z579DabrDPvVmpb7Xj9QamQHWzOykHz7uZmXVcqyXUgLxur1sKEn4BUpzHr
	 wcPlp8xkNYFfrLao21EVmTJqAtk/bp9/eJ9Va2A6BTtw5fon+da+z67wKU0bRLQCoo
	 TAh4aBbFz2o2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E644C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612899357.6065.5530949932581021963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a30d2c0bc9ed30caa2bbfd541c153fb50ad17b4bae302c547bb23efb6b1f53
Date: Thu, 01 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746128993
