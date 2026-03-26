Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B78234DB77
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774512294; cv=none; b=lecWbx548Z+sBHKIbwdxjAWGbvwk053UfbMk0VoXHNMDrVY1EvXia9WPYVnC+i5yHzWcFbFPU9uGF0YpUyIASwLG6Zn7Q/I5UdSTyL7pHtVhoAtwgTrAlu2h/qXIAvSdfq/fuCIYdYEKShjd8I1nQ22dDEVYDGUkUtD9UOVr7iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774512294; c=relaxed/simple;
	bh=92l7C0UGHrIcUJ7jl9QOzEPowk4Hu+7FQb5W95VZyZE=;
	h=To:Subject:From:Message-Id:Date; b=VkB/M0PyBeuqA0aRjpnFLq+5cKCTxD0s+HKUfR+wLsXXBJA2PLx4A4++Csfl6neQ70nB1tYE2wji9UeNS5BeQGkW99U6bIZ2ik8JRCk9CyAiVzx2nMosCIEn4du3ls+ffMga+G/b3YzpZaZK2V1PBR+KNhHFWtB0/MYrFtR2orE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICzY5IUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICzY5IUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5009C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774512293;
	bh=92l7C0UGHrIcUJ7jl9QOzEPowk4Hu+7FQb5W95VZyZE=;
	h=To:Subject:From:Date:From;
	b=ICzY5IUKgCHZvrYOMobU2T0YPPlXXO1NKMGhgB8W6j9nOskyHkLwtKaxBguLoigck
	 zbUgTH/JsNvQBX+eR/nQy4fcUtJYdMxhph5sMSlrL6IHwA94a/6Ei6qZB6wWSH4NUV
	 hKbt0/BRfgGWtEuKGW+/3TBQ5g1tcFJFWFR2SW4nZeb6hN9BIG49cXrcdnwavPEcBY
	 6c7wnWJSIggKP/sZPDPJtnicjrJN3A0mhGDPA2+jW1YNgSTRF+1twnAxGGEGphdAqP
	 HBpjMEPzQ4duHJHflSZKav9bEbGI1i4JCGvl4kO5B7/ciC78S8QjiQfyWv3opET2zS
	 M3yS9kR46FZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95799106F2EB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451229360.6636.4617344423679970823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c74ee2931c4c33aaaae8b4a508bbb907e71578ae4b1d7ec0d21d4771ba4b4d
Date: Thu, 26 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774512293
