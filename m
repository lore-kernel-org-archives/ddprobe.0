Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CA29A321
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748026794; cv=none; b=hMRD/5yaIU4aPickYHyRzxoh2oIZjoT/Z/sLqt4yigcQ9wMxHLqa+xPkXkof1UJQfzXxp5ASTQN9dd5RQ37uATdP6UjK6AI0WZJpYskrmSd9/v1fLnLVn2H2vj3a4PYg4oMImHvtvfT9h3KTyGAvTxAtKYUk6Bc/s5EZ8PhI5FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748026794; c=relaxed/simple;
	bh=qB6N0pOpBuUnU0b3Ik7rijll+FXFICbdNtfWiq7FZI8=;
	h=To:Subject:From:Message-Id:Date; b=sHPC0+hbuGvCPmKWAydGPnQny/hNPq/SDA+yOi185PkUou/Ag0G1RuF6myinoRtLSvfeuoJEXfdsXTMJxAi7iB9UY37QoFsZJja95v2aXVUH8kFSczJ8kkkjws/vxU9xzpNS5n/poDUQrZWr5c8DHxUYc5SSw6s5vXFxSctEMb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2db+oeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2db+oeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76AFC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748026793;
	bh=qB6N0pOpBuUnU0b3Ik7rijll+FXFICbdNtfWiq7FZI8=;
	h=To:Subject:From:Date:From;
	b=L2db+oeKvqcM6HMuGmEbXiHsNjMIQyuvA2hZQVk/lnIjP70iVdJMMj18TDDsu7bFB
	 LFNAiqUlOyqp0lV/WBB9Hls4zj6ngEtFC+7rbe89O5PJHPMNxQ2sQ0pz8SmnrrVAAU
	 nOJ340NJlGx9+7+P2jE77c0s0fIZiu0kL2QSoCxaMIVYxpnC1diuBlMKjmDH6d4cRv
	 DTq1brzd9+xUh7h4D9Kv0U4JMSZQsx+94MFys8/tGS6F1hO0eWVVgD//TQvIveI/sS
	 D+ZeloQZKYsP8NodeQ673mVv7UZ7xAJIQOr0YAoe4F3P8//+Pln836CVeQBLCYacaM
	 mhzrFM+g/rw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8FC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802679359.25372.14115362936878700560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258b9a02cd108ae4995990a6cd35783f55215be71f6658d9d584cb96a9d6c06a
Date: Fri, 23 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748026793
