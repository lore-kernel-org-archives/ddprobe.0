Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350381A6828
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775965654; cv=none; b=a4XVr0RZuVBkarmit314wJGxpzP9xLKrZF3wjg9cZo3xAZvZp/Fudhu7GT7Ug9OZ6PVq/Qp7tu7YXMp9NmPZhesFrWAH4pbTtrmHNUXv8g7MWwthvrmAI2PpxqNde7lRbMIgkPBdDxNBmsOQbjLrWUqQZd8XpsfR9Abn2c0G52c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775965654; c=relaxed/simple;
	bh=t6gTxmVREB4BIsRq6vnfZe+Xm4e+fNGwhltT2EsxJm4=;
	h=To:Subject:From:Message-Id:Date; b=oHXut08aPyVBiPlRTIPbEMODasLPEVmlmqg9qgZ4V+YAuv6gdQ4EwBo51pZ9MRztGnsYkLhZdsMkxULDOO8ZgJDrmFcqZ2F+euCY1/Eh2qXfxt0U7HmmPlOhB0DYLn3asuleFEoD9KedCLOzSQpAvTM9Fl3oO59qJad/IA6uZEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHgR3oDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHgR3oDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06AEC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775965653;
	bh=t6gTxmVREB4BIsRq6vnfZe+Xm4e+fNGwhltT2EsxJm4=;
	h=To:Subject:From:Date:From;
	b=HHgR3oDhr/aoGkjnuKqx+VJ0c8qL6BT/6j83/dgUwitYwgiJ8Sv9pa48XrcsLCIat
	 VyZ2TU4XKBVb68zA2vtwwzNT8hBYL3GUFLVnegwfyJWj3u32triC4nXnsbCMGFgqIq
	 uomE7z9B43oz0wDajrSFGUo1qAcJh2A73F/SKJVwZMAvfbSHR8ksoQcl+ydyNHkKvA
	 M0kl3IL/XRP4rYFErRFsYUs6Kv2t/rSGkU97pC2yJg30kVLLpuqtA2kHtvqUrPmYzh
	 kVEPIp5n84cUkZtK1m8QkvCo6Ze55d+pbUZWfNAjAhUDXjPGCy9oAOBxXx3u2mhMUR
	 Q9C8Gymi44kPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD9F3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596565368.26521.15576393260315126742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f3b3ff7c89383caeb10358c120d965c1102a3c1b7e6177b863ae8a6a1df157
Date: Sun, 12 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775965653
