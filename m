Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2037CD3E
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789171234; cv=none; b=tnhMPjgiHP/5Tj14g0lc6d6mCbhrzEyTNU82Nvc2t9SSnGgqcrG49Iea2BcIR4XpBvTw4gpCpsw0VOgMShnkyIGniDoGB4N58yZQWw7CTVkqZN1gWzsNcWD425g18eVvMJwLvJcB1z3HZ142Zd7o6khYYMskX6x8SeTpj+BH3MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789171234; c=relaxed/simple;
	bh=sOFdwNglX1gp2FR766dz5T56Gv4n3g1UpLaywR27N5o=;
	h=To:Subject:From:Message-Id:Date; b=XEnpaq3NPssE0H6IOLpVtP//wKiKoqZTPkDE+WvhmbLcoUR1dqNfkUUeSLGpwKqXv5wWQXhqSNkecRgcckt5zYORLklkobPYtySJOIXX/U2g00S0Lb/qonOfowgCJhVQ+ThiLHkBtGdW4/0lfMQcxEee8HmmJg6LPMWVKvrFJfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk3oOC//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk3oOC//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBABC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789171233;
	bh=sOFdwNglX1gp2FR766dz5T56Gv4n3g1UpLaywR27N5o=;
	h=To:Subject:From:Date:From;
	b=Rk3oOC//A7jq6lpialUQ9YmYUgVK9hnVO1vbbnsJaiJ5gveLFyNkLY71cikQ6rXUq
	 wMA2nLjz2mMiFUUd4B0TCijhaXhqslBJMqUg5FpW3DEWyQKHNjg1BI34xpwM83DhVc
	 TEiP2Mnc/VzDNp5m1H0itAM70JP+mNs6KNevkuAM4UFNg5oYyUq9cJHTCXeyLWQLRG
	 3igXfnql1Zw29VEaJaFzrjPu0wV5sk5t6dTZCJTCCVJBAPxQpIvBTjrnuK5LR0N/sx
	 vsmDKfXiMTk09hSs6Os3YxM6npuJcCSo806Y+GvjMXpdqXS9Z9whuu01U0P2jcPYuF
	 dI1NtTKgFpdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AC5C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917123374.30002.12826070114076496227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e446d56dfaa4e23ba00947428fdfe611b6d89410e0d4e1d719b16580ee61d26
Date: Sat, 12 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789171233
