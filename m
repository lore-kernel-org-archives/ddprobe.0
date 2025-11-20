Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080B318A956
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763610714; cv=none; b=j/lHqmApEGJPhJ7JfuI4/DUJoUYGH/C5L5Buu23AWxX8MC8KcKrs2nGdqJz6o/9pdWJvS1jfD8i5spfp5gZuySfUGqQ+Abfhi2UgASfbpn3RP54Apl5iX6WBmcikuFlLpyQZK5U1ntRSPZJejeACUMH34pF0HJx2eWuYpOC2w08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763610714; c=relaxed/simple;
	bh=jQLEz+LqaCQUxJspGLb3Ts2q2mdTAOIUMctNFMRzIF0=;
	h=To:Subject:From:Message-Id:Date; b=u4SAOIdsnyukbZ3a5rmHt6QXYpj07a5N4zvtQr2tijnk6O5pA3mWH9p6pqvutobY8iEa8q0S54zvaCuXSnnWd6qtPSLaKm8nWPyIhzys/NlmzfVDVCoEYEF8EJCQtyYFGumV/pWhDZ6ISeqZnR8GJnzivPQ2lIXdV7luEGol6RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eenrNRWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eenrNRWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FBEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763610713;
	bh=jQLEz+LqaCQUxJspGLb3Ts2q2mdTAOIUMctNFMRzIF0=;
	h=To:Subject:From:Date:From;
	b=eenrNRWNTeikzpnZkPP0ZB2MgkUWhYIINHxjt99a5T3nOxWzK/ECvaXt7jCKZmAE3
	 iEH301NKdyJwbWdAGzbUALe54B/ArFcWvhHGCH6emlcj1V1nLnlxXt1+dzthqzvY7q
	 k/rGOTdAousgwAMQYNthXoMiIxaX+XukKvYrHY+KJoRZxs9wuMg/o98nzYDSmXgVI/
	 KfONtGeJK/IICImNO18/1XMwo8TG3N3QQuqKzeZLotvnpZVTFOed92aNXpT4dlebty
	 Ku5UW+rIve7ixB9ABDf9eEQUcTvyZhftEDqZjN4ETbhUbCe09jAY8/NxrDcEYENDNy
	 q7qvRSFBCa4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B1BCF256D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361071358.25237.7769522156679911255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7583b04b572329f946706e2f053e23ac52723ccc56da01e907671cfb5618f45
Date: Thu, 20 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763610713
