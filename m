Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECAE3C3C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750616395; cv=none; b=fPfaLHMjxoOhBykX56KS4hwy7CR5pkMqJviCCdorgKPOIGPp1OJkw4OIkXs/mOyGKwSVrz/uBfUyBsq08YO/IsWaypV7zIExT12x4XEsnWEWbxfsNBjfmFcQ5kdGTJ1owk7BCB67GH4yxxw/TtSckASaf5egxBSgA1yDb9xZvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750616395; c=relaxed/simple;
	bh=sTJ452/GR5sxdxwN+nLIFIABCLtDwMmNCOgeIYD3/t8=;
	h=To:Subject:From:Message-Id:Date; b=W4LV0LeeNWiChQu1B7COs60tm0xX/XN4DPN90WWedVu19hGXS2w0+96RVWRrSsm7hyweNO8fyq+fFjcS89BtAXRGmdQWyPiqo0roJMQ5wG36rheGwtbo/enfahG0ZWLSXFeNXlQCjtuwJrQiV9Y1Eq7XS+cfNnJ/qPUob75B5GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpJEpVBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpJEpVBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750616393;
	bh=sTJ452/GR5sxdxwN+nLIFIABCLtDwMmNCOgeIYD3/t8=;
	h=To:Subject:From:Date:From;
	b=bpJEpVBRTDMrYiRby2WNg92SkWbWslD3LcvVMDxVqTOWjEkT3vhr9PuRapZ1twjfG
	 kRDKTtVw/CoxyjYfmdXEexx81L5YPi+pjVvSd0b2KyT9wLYCFUsoWZT++rnNFzjE97
	 O4dIyzpUepjONlvaHbh+Z9Sd+hzIr/JF21R05FE51Qy9hZrZsu+mCpfT9c1Ai0aa5z
	 wrY+6VnzmuygYcOfHLFvcTQsMJe7wGQBAklGCjDMEMfWgu90g5PkhGBPd+41ffaqOc
	 84MIysHdl4yMxfw1WV5E1rQYmm+RMBuAWfYHwwjVEuOJQAmUlleXWXNZeaPqvYNfqP
	 8hSFnjA/it9Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666BC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061639358.9280.7935098991597852197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bb26e1d16a21be90fc0adedbb6e99ca0faad069bf212a67cd35cab22610a07
Date: Sun, 22 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750616393
