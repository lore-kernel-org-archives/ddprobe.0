Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B61A137932
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743371994; cv=none; b=hQr3BbKQM61ikddA+HwlsH6+7bGmOxNJGCtD/G54RC+J55c8SuQ+m0L0qscj90dPP7EzE6XjoMY9Yo3G5PUUqgOH0BFHxvcHrVHgQ++6vi03KlYKyf4z1/uQrXWRd9pfZOI53D3k2cfCQEB4G9pdUZRQEyVosuEzJ+2HgWbMOGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743371994; c=relaxed/simple;
	bh=8wbqJ+nypY7PS5wzG4oHO8XOV8Pi7G1gQp6PByBUjq0=;
	h=To:Subject:From:Message-Id:Date; b=m+La+4Plf2ET4G3M72PLJ7rWjJKxAi+aXr/L2oDXE9ZxDLB4zGD7exI97LMpQWvfYG3FHvmEY3l5zP1gdMLexULGtcTAXkiBHkxuXFhDVEXsPyQXx8ydgKUmQxFjCJCa1VYyxo2mvL3zFMH3uXoLLCGuoljLPBrg9mNEWsZEmGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEgwl1GI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEgwl1GI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA60FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743371993;
	bh=8wbqJ+nypY7PS5wzG4oHO8XOV8Pi7G1gQp6PByBUjq0=;
	h=To:Subject:From:Date:From;
	b=oEgwl1GIRw6CB0o40Fo+CeEgcNCaRrbh7LMZMTfWR93mqGzAQ7gXvYiA3ruKON7aV
	 2thNGsrpYc+EyoIrsBreilAA6mvNK5Cnd+VNQD1B7zLv2wGkRYqgkrlGO1rCz97dNf
	 51Sz6MuN+SH2UIONmWi4QkbFT5CRoaWP8G41mhq+sSKWPiKxPHY2MSesSaNNvIEF3G
	 fvj99rMQ3y3S3sCqTQIprc9/5eLKowLXgJ3rKTDVKBOkrN6n7SMYVewdEPRNM3qyqo
	 oflY0TYkjvfE6Koxpo56LxVwRFYyqoqeFpl1S6SnVo/flhpb1rEZPd0iNcJKiju0a5
	 b41aqDJYSkUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65EDC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337199369.27630.8016585627021713283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9c85a0b16c5d3ad878b133ff5fea07d076941e3364c83f0461f7a8d2912a68
Date: Sun, 30 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743371993
