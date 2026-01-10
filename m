Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDFA2C21C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768083234; cv=none; b=IYFKKPNC0WClwM3U0RXGyBPOnpYvwtpQ3mLGO8mRjOrZSt2qH9mb3zzGIJugMFlBivA2b4Ue7No2F6+MPIr0mkcdlyi01qw0VWGRq2Qm55gDPb9aSImOwwynsKXh37oZQiDBbnA7w/QvjTHeQiabW7M8L3cv7MwdyrPrBV5L7HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768083234; c=relaxed/simple;
	bh=1T6pp14Aojv6LWu4PvjBjZQw6kYiQP0iREpDYS/RT7c=;
	h=To:Subject:From:Message-Id:Date; b=fWw/6zQPeeQT4Jga1DbYs3qZADicHCoM9el4o0WUa/xvEtg5VJTrWYQeMDsRUGlY+csVhwJ5PHsCpcipac/VVvZX/GGjBZLOiAU8VB/j7Z408FWkQsaHo2VlWnhecS+bFAh3ZVNWYDwmtzkiTTPuuyy3mgpnzM/0OVyhgW7TCos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9NTbmfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9NTbmfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768083233;
	bh=1T6pp14Aojv6LWu4PvjBjZQw6kYiQP0iREpDYS/RT7c=;
	h=To:Subject:From:Date:From;
	b=r9NTbmfP9RBwiTMmEQYlonKCMHm2W0sDJR8IlOtAIlLZajdZ0ZhbBBhBpBZ55byi1
	 TJYhG3KISFlSk4n50ACqTKoNTatA00hWjDdAjCA6h98tlWAGashO6KHmXZnQrCBs1w
	 VziZyVWBMItzby7EcMxhgi97kNI1W5h8UwJHTPkxTrYiw0bTssvnQQ9upRAb7hQowy
	 IT9MkzG1xTMDp2uZgw1js7tqHyYKF1IahciS04SSSVLMCTZkrSlXj5cVRJc1W7hBZX
	 fJR6hYSeYAEYP93M2sCJ9z0ZvU3AJFf4T6fBfDpVlf72lTuK8bF3rMXs09xqy18c20
	 +norZdbalrPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DED25026
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808323358.13336.14151019586638702231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7640e8662c95c500b94e7f349f601c9dd58393b68cd59debd3670913409a56
Date: Sat, 10 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768083233
