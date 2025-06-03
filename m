Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF09238176
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748958596; cv=none; b=lnoyfpJbj6d9vvBcm9DOhN91BzEM6AIwbugUt4onA/YDhL7XIZlhieS62zJqVTQNu6jrpZxublKHDvvu4GGC/KHtycBoO4//mWPsk/Nflh86uEsBIZ3ICS812miF9yr7BbXBalPWgmPFCndH0gmb/rl4Kj1+O6++X2zbNV5wT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748958596; c=relaxed/simple;
	bh=qeyexcJfif9MujTwDBPL9gqED40/PmdZZkSBcTYQ9qo=;
	h=To:Subject:From:Message-Id:Date; b=o2PQO3V0ANzAEfpxE/SGlZVWUy8TTv8vwB8LPHgi+itsMYs/cyBURQdytBpvWbU8xy0y+qkASl/raUWhzbN16jBsBM19seLVO3a1ajTbEOtz2V1MtDlQfZPVaRElG4ObslkYubmrfDMzfgZL5nNvXbaOO4NpoinWyBuNB74VVgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAI1aIje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAI1aIje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3844C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748958593;
	bh=qeyexcJfif9MujTwDBPL9gqED40/PmdZZkSBcTYQ9qo=;
	h=To:Subject:From:Date:From;
	b=iAI1aIjedPzDC5VlMMSpbvVlmaYrrjnoeW5xIlCKwPjynPtcMg8VrH5SS64poCL62
	 FwVLqzou0cWrmt8TkW1lIuRul3GxK8tctgNtGJhz+cp77YPr6nf+ZZXX5xnXRn1NGc
	 IbkkRHGbFA1Xf6RS/4SJT9o+VFmo/S4V6TKWfFi17GftvueS/uFOjuWPXUFkekia27
	 /RULe2FRoY+ESbf3Y797TGDH8y4MaNrkTxUTYNYdbUSbaxnjOuZJnXQjYyPuapwH2r
	 uT7ol3zy7upX6CfM+rkcDCyO6cEBMMAOBncS1jmyiiowWCfq6vm65kqN4DK3l/Z89w
	 IStUqizdng43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DBC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895859357.5590.7302335915577860157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e7c171e9c3719e671b60d38b573c27c1dacdb0108ea4a82f9d19f207098eb3
Date: Tue, 03 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748958593
