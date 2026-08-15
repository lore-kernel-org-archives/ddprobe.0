Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6135A423EAB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786808434; cv=none; b=qmUENk3acW4KqvtwJFPDk9HhgZM/bnnvBz1BkbU3OHAOx5DCwkVecqux62+pn48m/JJbtkQiSetUnUjkQcLqC7dQtLjorSNNOXc0yeNWMtT2ALrazCJX4ZOfGPDgUBEp+ukm5C2dW0OjqYHbJDdBIz9qmJL+ahzfxGW6Bjuu2kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786808434; c=relaxed/simple;
	bh=DLV+VP0cyHx0IfacWN8KbwJimwiOkqPz2eqRB/v/xHo=;
	h=To:Subject:From:Message-Id:Date; b=dGXVfFxTuEBGgQJCUod1j09PuTJiNbc3MB/syYQ4/sVsjv7LKoVAEbE/rsG1hhCtr8muz9Fry4ha/oPrHabXk2JGWXMMtS/2eomP80mqBu5I9Kekii1B8BBX4x7iEP0npyBvcK1YmzmrljaxVOdXtiZPjVHwah1ID+wTl0/7hYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnjP0bIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnjP0bIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E38C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786808433;
	bh=DLV+VP0cyHx0IfacWN8KbwJimwiOkqPz2eqRB/v/xHo=;
	h=To:Subject:From:Date:From;
	b=FnjP0bIreL6/KOdKuiU8h0/Eag961vdTfrg1VKq8CxwJB3NLtAa4TUjSGhr7p6OvD
	 /NMBqXcpehw6j4hxUVL7GWqxMe8IzD5xE2km47SPTvq3Eth78ljQ/nqD6YrChYjF/S
	 p1fM4MVEmIuCb0UslIsBEFoiKbQ5sJc7gjBSGCx4m5zqtOIpOkfpI1GAPD5b9p5kRE
	 5XlJkM5uIlyxK7MXFF6bxdGUM/bbgp+PqvUEa3zPzrlXT1cdGKNrCnG4vr1jfGXh65
	 ztA6fS20UoP/1w+1OU0JUfje9bNyCRqmRVr9DFFOH/7ysZcRi8lrRc/wbLxEJvs+Px
	 vzvgSFOR/mFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC521C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680843369.30457.766447682699457715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6fb02239a75f9dece90a7c5cd22f588207eee0f6aea7171e2e72e8d6e538a6
Date: Sat, 15 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786808433
