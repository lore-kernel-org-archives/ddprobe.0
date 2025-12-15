Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACF32E92B3
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828374; cv=none; b=o2DKfhRVJ+Qbjq3hUrvb/lAzhlpjM1mVJxZ173g8gJxkBWPESsGqGzrLtFKeuFGtcvnLfoM6HEXCWaRdOsCD3PgkyG/CD1SWMV8W64lxNQPPgAB/ieqA3ReIM5VkcOgZglM3nrfE1ebzjPg3WK0P63UWNVGJmSUVDRiI3Wnet/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828374; c=relaxed/simple;
	bh=r5e2WZDYyl+qG4hxVZ7IJVHs8QQqbpGSVRlW1Kr8qHM=;
	h=To:Subject:From:Message-Id:Date; b=qTcc9S7AwTq3+gCPos5hk5r0YEA42B4nrYBOMusSFsOJ66TT4oFsCvctsOvn2TXFlb3VUAscUqW4oQdDwCVzbup5iPZU7bX7j2goBbmqdLxq6WFpJpKimYF524uZs8jhq6hK7hOtNObMjc+ZQEjd1S62PDR5edjBNUmWsLsEADA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCzDCBj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCzDCBj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52D3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765828373;
	bh=r5e2WZDYyl+qG4hxVZ7IJVHs8QQqbpGSVRlW1Kr8qHM=;
	h=To:Subject:From:Date:From;
	b=pCzDCBj2SzKkvsNZXQrZqKNTmcI4ZTHzYyQ3/dM5IqjcLBfKW2OgD0N1mwFOkHFzo
	 8Ln+LyN+yXPD35A2InuFoBI7lSkvZOOqfNzethrrtD1AoJTpSPrUT1g61HJ04g8NOi
	 f0u35I+ZHmTrwAHKgffEEyCNDfEe1kSexiDd0tuRc92jRU3oU8mFxiIJw2HD2mhW6A
	 Z004e9hjEqWqAMlTT2UvC4rjxfhbmT4GEpECVEhT3+kz77ZEE2AKHdyhpxGxrK7uMg
	 EXSTuj1RtPASDSCDO/F9tzz5WXprIrwVjpk3Q01Psn+25sbUsehvXwRRZfk7Zn/Kr8
	 D9TeY5ftdYbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBB3D5B86B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582837363.26305.12367528677029421333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbbfdc592212fdeea614a16c3d2e1f4f2be213b1ab3136d8bec19a902e4560c
Date: Mon, 15 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765828373
