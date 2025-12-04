Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A32E282B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764846774; cv=none; b=A7zzh2cvnrSR0Etkw1Rp8E+U9GA4jKTpn54c3qbqXPcv8DHgZOkPobN5I/A3ulFIXX3eNyx+KJTpjJ99c5iJhDe3Zv1egmmDjW7FVrQqQ8cucDeOinzAm9s+hjncaJcmHb4MYqLD74xDL6tD3JUmZOJOnJrlxtxWQw5GkryNdVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764846774; c=relaxed/simple;
	bh=tq4d6DWTG1UMIbLd2nh1zqXqUr6m8H9a84jGCIXKCk4=;
	h=To:Subject:From:Message-Id:Date; b=nstEB47YzRrTxOQumgooypRvR6iwotq0lYtiuAIrn+bXDgWKtaq9jwlkmQjU5ZsSQgVop0+ayQe4GIRTRTAiRH1Q3NtcOJdbFwgkE8nRwlxJl8T4038LqHka4+/wdVnoD64VOK024bPzvyRrJgtiLU/w03P3R9P4ys4zg5rLRe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0DbNGDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0DbNGDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB58C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764846773;
	bh=tq4d6DWTG1UMIbLd2nh1zqXqUr6m8H9a84jGCIXKCk4=;
	h=To:Subject:From:Date:From;
	b=e0DbNGDxwO1UBHgtVK651P8Xqms0fpsN45ddD6bOpjlShXe0EDAV22BrXAXUQTBRp
	 S1y3AqUThPq1xd+5oQgCKQJzwMl6JXm1/6AI4qXZlVInWcYJPQy4qxdr/Pr0Z5pPe8
	 tmgkCiy7cArEXvrhT6zwQotv1aq3BT1G7oALpv8Gn/JmNZgBngAmkS/419NwT7ULl0
	 QvsJEP2AqqIEACz2eesx7wTlE4Ufso9vLA8OpVl2YvEsuDXMdCYPmT7P/sJKG6WghK
	 5PtQyCoXko7uXGxPm0SYVjX/CEtzLvJNPaFHcP70hrENNY8Wk9xpZBLjFaU/iFJoIU
	 WthDf96Kt7JbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95899D1F9BD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484677359.19268.485783217040865250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6519072cdd9560edb4d31bafa8c38f15ca8ecd50b26c1016aa1b9278ed1b89b4
Date: Thu, 04 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764846773
