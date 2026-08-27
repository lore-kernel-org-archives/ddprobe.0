Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D6332614
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787853034; cv=none; b=iSK3XQ9MIj28JUjWFlQM8YvGAPFDDzydKkHtAqSfRH2TrtKX43/d5E5psEW0R86j0SR9qvh/zSFz0izSUshErxpCIoetFvVysPawo+ALWawb7NZx40s37WLarkVieGreqVsMNR9qfw78Jku/vr5KP4/9XP7ijZMNchuBsIuQm24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787853034; c=relaxed/simple;
	bh=Uw3raPpLgF0GHbES31R9d2Qn2/qdjf/ccoomAqBP9T0=;
	h=To:Subject:From:Message-Id:Date; b=j39FDFkLJu1dI7FDOvP5F86p7W95KNepZC7pbIhg4/rlHqes3CWqc7uRMZKTPz4iLtxxSMEzRTJo4KLxxngxVIXL3bfEEnniRlWqm9FuCQh3gklX0evXKgYcTItQGKEpjEWU8yPGvvaeX/Tu69ID1UN9uy1BPyXMT44mjUKbpjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAaX6Cxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAaX6Cxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD183C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787853033;
	bh=Uw3raPpLgF0GHbES31R9d2Qn2/qdjf/ccoomAqBP9T0=;
	h=To:Subject:From:Date:From;
	b=iAaX6CxhqcZShKKmy1MEsnpTB3fNoEkBpergpObGFgX6GfoKVWvK4l103ovmPmUDC
	 1Qedp5bBqwH6ZCdZKRX+2UhNQjUR8gxzrvlU25pxt+dmWbrHtHrIgkJ3IRjXZzfrcu
	 0JG2HgZLaDs3iQPWVPLLBtQShOBEt06T8z/SUNOBBovntph58qfrMVYH9EffV//gpL
	 Pg1fIVywWSKQEqJcCjUtkczVY3SMXbkYsKuTWjWXAvDYq3o2POnM5QPS51pinhStfH
	 NySiBQyIcFRjlHYcf/FG1U8yl8ct6ns7hoAHSS1YiM2IwSR0Q15PZBcmewuwHntZWx
	 BGEFAer9yelMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E8C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785303368.28098.349861137840894500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3803418018d0d5869b8251a26a2e2086c44bb0caaae82f53285505cbe0a94773
Date: Thu, 27 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787853033
