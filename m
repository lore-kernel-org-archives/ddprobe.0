Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C43244666
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754482794; cv=none; b=Op3IkuqZISfDXjYEennE8RSvaUCXhuyJRu0m+hI9kMqY2GSxhXVeKuFBvi2PI5f3YOF97LNpMRJr8sdwC1ra4xaXoVibYfl0R0ctdPp4IDExOwVtdKHt+k3iz1HnJ6FzCgR2R4zHmOYEy1BXGrwhvkOAeSE/oLI9K+ZvThzqjDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754482794; c=relaxed/simple;
	bh=bW3N5kDXWi+ICNdWBjjfGEp8Qbp2+SejtOZUn8udc9M=;
	h=To:Subject:From:Message-Id:Date; b=EURu7FfQpwWVimo4cyK7vlUgZBuBj7sAOYviqNwE8oHLJXrDktICj2MURTdYdZ4fMqqKVjHRUEQ5Mp5BIj79RDa+JmZqqnOYV46I9f0h16Pb52zzxAzp0YVn7NI9VvrJ57rHi+nWPsiykcmpLzxp/fQON3n2YVF+JcBX++WmJpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uL+kehQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uL+kehQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD20C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754482793;
	bh=bW3N5kDXWi+ICNdWBjjfGEp8Qbp2+SejtOZUn8udc9M=;
	h=To:Subject:From:Date:From;
	b=uL+kehQhkB/o8Iy1OSr9C2Cwc/y5IZi5dBzfeO07SipA3/qXdiQM7/mPovU6BqtCq
	 Rud81zucDr9jctMUcQLdr23v9fKYYXT/+5CVoW6KrTCyj3QtdjWpWOZd0vSPCPzc4u
	 n653adA9Js5JJo6SccOS8jjGc7cnwfnvoYGhllP1L1KrX1D4S8r1g8autfMpF8INd1
	 ZGJW/EL8XbJ85vpkV3+iwJ5vYGXTna540KD+Vr0SZ/bfKDJa72EB3X9CtNM0Jryw01
	 jM5Kf3fKqjjtKoP89Z/53fXd5FImjfhdzKKcJWihFPctVgBg438XdGjHanjHisaQFE
	 IBRTDaxSw5Ntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C0C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448279357.30981.11002576443717457950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f21b7d36ceaf51238b6551691c5e04c9fe0c56cd14b1d90230cf8828d62d9b5
Date: Wed, 06 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754482793
