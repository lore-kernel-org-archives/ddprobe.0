Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7B314B950
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744825794; cv=none; b=usYy9HBlvw3QWg0h/bO35+iK5As826GUy/8uLYXHS7b/m7swVZB84lsCMzqSehE3XEuK/UypSw4Aoq7vqvsRtr17TxhT20OyJbtcw7CwPsl8aMcQX14SVdDVLPQulcvqp9vEh3jNifxidnOb6FN0jctELhl2kPxTnV+qVCntSNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744825794; c=relaxed/simple;
	bh=pZXlU3aBdH1I9NlYNTp7Sea0fCTiVkcfNCSy+57dyVg=;
	h=To:Subject:From:Message-Id:Date; b=YD+EYUJqinR801pEwZmSqNTQBSnIhq1OTWKfrYYRgK6hvEqQzAwbnOhAFdgwMD2RwkcpbV6byHczm8+OpWvNeakehdYBTBjRFBah3TWwkhU+vGtOCbeLldyOWOt9f1RmN4G/Bpto8JYaGJTVxEZzCC2PRjLrnKK8mY/DewRVNw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx2Aa0EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx2Aa0EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744825793;
	bh=pZXlU3aBdH1I9NlYNTp7Sea0fCTiVkcfNCSy+57dyVg=;
	h=To:Subject:From:Date:From;
	b=kx2Aa0EU4/SpONWuvxNjudVwOgHqI19r1BXMvqpGnWDWsOzO83FYz5RPcUgkbqQsH
	 ZRiOqUtzAJHwezM053j9zytXBDLyH5DHzwuAUb2q7BsMhsmUJUB54x5foxbpg5KZXO
	 9K/L2tqI+797uMEbomDW4WAQEFND8KHOjQzatHR6ckHZ4iYiE1AbRff/D35jzzOR8z
	 Lppxt2XU/cN8ql7z9zLlhKvH+bK00ZM4hT27jAZMJUSajucB8tFQgPbkvdN95cXpaI
	 KuYSPcfJJMnKu8u8vWhjeAEQzHJ5KGuYP4FbSNjuCNjG5+wQqFYOzvp9Q81uHjgLC7
	 oPs/oVYReRZSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E988C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482579357.1873.15166303927929802462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320f70af4a87cc98b8b8644881e90ffaabc7312ed85f924bba95d9c9347bba5d
Date: Wed, 16 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744825793
