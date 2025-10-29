Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080C3101D4
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761769794; cv=none; b=FOLWDoNLvtSqE3JQi1SOnyT4qy7wJC0JdIKyqLMIt1QQI5jLeTSS9QBeky2Jb7uNAKYrdCPlJRDZmFTKHsNO6ed31/7g3aF35ZdBse7+1eRtyi92K/fm9jIwuHTrM8R/6WvlNr2pYIvay7WEfPBFg3z8vf3JIQ0dLgYloaD5Gig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761769794; c=relaxed/simple;
	bh=9Y1yGuk9OsLZU3Rho6jybbyBxmhBvY86f7sLIHaVaac=;
	h=To:Subject:From:Message-Id:Date; b=nqxSS0AiNVHpPvfzUyktsiBe4S7Tgmh8q2rbPU4EiYH0RchUZYhDwkEpkAor/LXtwBlENz3EViR7Z9XYnU11WT4stFZjNiSLk9LPIs6H+STg8CDdGoak9m5xPPU511RRCRlCUbjP8tIHHY6jT6PRRgkw0tw63DXcP7AEfSHfwrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BE0d8ICU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BE0d8ICU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761769793;
	bh=9Y1yGuk9OsLZU3Rho6jybbyBxmhBvY86f7sLIHaVaac=;
	h=To:Subject:From:Date:From;
	b=BE0d8ICUyfYhQzWcBsdAqusKXB+0Dl+nILiK0A4fEaCkgwgdJN7bLVRdcx0cWul2A
	 4g3uxhonc3EkA1QQFDEPoe6eKsHXcH6KljcRNqTced0mjNLQoa3JUs8tUQsga1kato
	 xe68qQxx4D48M+FEueFMoR2wEXX+BBpLtwuHGKDPYEWcAeVL916otdbLshn6sBesC+
	 bf/fcv4c3FMseEU21Mv/+jihnjCXNwFZype7pvfeAYsNQYhizseGRgsaV79E824rC7
	 zVhlG3688M59rFNQ3xMbUQWoksAP9rcHK4q9ckyYxl+cH7BnvyWRjT2nbWjqLYtmmt
	 KjAfVbMO4BuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B2CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176979357.7885.3209565854145034239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798a896841a21c29bdbf626096b8ab043eec7db3e774a99a65e0fbddbe73b3c4
Date: Wed, 29 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761769793
