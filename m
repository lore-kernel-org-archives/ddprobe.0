Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132B323BF9F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774571694; cv=none; b=SYOM3oxHLu0tU93A2I9jEaXgsiB5rhv80RUJK9cgEgfTxOUVRYvU4CIOHk5cN9NyTlzrKP+zztvJz+epMsO5KzMrkSSE+y0h8IRRsQl9FlJ8zMmRvrIC++bbpoBOvvdkuYUEaKWJDZEXiqzwWmBtRaTFFb/IzwTiBFMYNaMvquY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774571694; c=relaxed/simple;
	bh=TWH7HKfnRTTnz+7gjvvVuSE8Xu8KXITgj80S94/N5iY=;
	h=To:Subject:From:Message-Id:Date; b=hLpKH8nJM9rshGnk/R9tltdYkNtL1b4b3IEeqHpbKRl9XFp20q6WnnM+GtQDyljGtMnpTUpto23b4LNFGa/jDUec3vbeuxPLC9UTUG6WShTUaqygOpO7XUzVaF1VXMhOt3MWFICZwAehcMEeNspRKVeN0ThawlHmKXcHMR3++6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e34rIWGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e34rIWGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF3EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774571693;
	bh=TWH7HKfnRTTnz+7gjvvVuSE8Xu8KXITgj80S94/N5iY=;
	h=To:Subject:From:Date:From;
	b=e34rIWGnke3Z/cmVHHyIbsYFmFSdWTOvUbEJr++c/c/zReTe6jCgwJjSc/5jZzIBY
	 FVN/QUByhGKtrhchJUPQ9L1T5i7BKSsiMLtfetGvpSIY895jyQWwowFT5g/fBhS6Ku
	 LovjRI4zxnFavtRUzYJZuBY0iyzrugp+tGdlg2PEDHesuNVQBRW/wpL0Oth/ZIxusG
	 92GIJyxJkTbaGU2AA3e9d3IeRF6oV6uqkTCyeHg4tMgMgY9wqv5f8h7qvRGRfO+492
	 TBfvFncnXaPqdfJp+9uTUWDUv0U9658TqHst/f/7yr+TdxQUwV09JyJrz3qlSIb7Rt
	 vMfJEa84WCW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1910AB832
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457169358.942.9197410887922956212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1a1f1bae8f19387b82612c9a3a3c7c3b404e3b4942a0e638fca84248ec8de7
Date: Fri, 27 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774571693
