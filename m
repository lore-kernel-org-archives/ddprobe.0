Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F0D38DD1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753893594; cv=none; b=ut+3siXMHNW69nzJR+rXe7N0hBSw7u0zKff9LM0j90zRsqCCEegqGhxb3DWVCpp+HuzW7Lr/6LHRFTe5OQtqq0SHBGiG+7cvPS394DNQsC7ppwVahgILQp1XrouSG6BqrgXfuV6Zuxyja0z9k74hRjm0iTrFc1Td04IypKVtkhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753893594; c=relaxed/simple;
	bh=3c/hNUbsMkzvSWaNjACCzKC0X5BSlNOPgDlxJUHTiOE=;
	h=To:Subject:From:Message-Id:Date; b=WKNIXWgspusUDXC0N/UrG9DURoulsymg8Ta4/7u/Euuv8BPOLoHFkwSAlHXTF3i2d9DO8B9a/c0lRLtk/Dhnj9OhxmDRCGTOTyeY1ri67eWmMuW6jpiRWGRIyEuz2+V7B/j3EQun3SJjnCIlQZ30Rf2bshJwNfNdLe3EUpXW7/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9TmDmxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9TmDmxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DADC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753893593;
	bh=3c/hNUbsMkzvSWaNjACCzKC0X5BSlNOPgDlxJUHTiOE=;
	h=To:Subject:From:Date:From;
	b=N9TmDmxSZ4Ns/btAcWJx6Hrrp2dbSXTi7rft/gzidPxNxt/PZPBkeNXwC2FYTChIy
	 0frUjo83k9YMOy1hjeweKmZXfgpDp5U7owRVQYhX7VT5kVb2GI/64Yw5MhMtYhJ8bl
	 gEp4Y5dcGn1f2aLoT9ieHIAQD884Uusy4LB23zNEF8s2vEFvtDQbAP2sVV7e4RLk5U
	 KRx7ThcnCVukIYwvHL6DJ5TvtbKk9yV7L9/YKtmEYuqLutuSC8UymhLwZlbXzlnDgH
	 6iVM2ZNPMEJo5UzZl9MCQHQ5tdp94HZABjv3u0frzMM066nyby2mZGZ/mw1HX+pAge
	 7rDLk+zE89ISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98213C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389359360.2943.9719970279361556452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61cd390bc5b88ec5d3139e3c3289332759dfb887c5b604101d81706c6ecb5fd
Date: Wed, 30 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753893593
