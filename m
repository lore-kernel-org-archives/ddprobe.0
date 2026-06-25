Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757A2F3600
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782355654; cv=none; b=PcVltVcwpWaYfEGJdJj0nAoK/Hz/6eVqvH4e8g/dBS1GgZyxJeirPnFMX6qOqQyxZ4TdlGSNtRrrKeHrZrS4TVk+5NKzP4UlAma+CNnGE70LC6uG2R1LQJ90M30gPdvSzL7S34IKAqmcpZfcMnKjf1TuxbjIH/RBR0FKzq2vzqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782355654; c=relaxed/simple;
	bh=2CGIp7I5cD/MZiKJdwE7t1BwFzux2HDmlTw1AkW5s6A=;
	h=To:Subject:From:Message-Id:Date; b=AWwKaqMVMGq2+36bPA8y+GzxuMcE5YwrA4PazWdQlyVAbzs2OQCVAjXdRFL7EZ4FFeGwYmIrq+LPX4ffZX7JhgnAlWJoVn3sJPGQ3aoyNOdHAb2JnlSquz/S7aHRjhxk2cefYUQwtR/GgHr8vE+XGA9Eyl5EtvYZI5g9mF7wrCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIgEEDDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIgEEDDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA692C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782355653;
	bh=2CGIp7I5cD/MZiKJdwE7t1BwFzux2HDmlTw1AkW5s6A=;
	h=To:Subject:From:Date:From;
	b=NIgEEDDNu1mWlqHGO6locunlld+lLlqOMJHJAtWiS6IMt3qMjp4WAsvFapqQU9vIx
	 JN+t50Ro+9moEi/zF8acJpSpnsoHps+kKFoUQ7CqzD0LYTr+P/gaIPi8lA2bH24VcA
	 LrvL0WW2XMj+GhcoVyjdrP0wgyZ75DZCz9vP2NjivziOhYpz2p/JAQ4so7AfsaVXb9
	 2peeELq0Nqx9tIZKSYiN13ARtegzhzJIgmNBCJqpeEQzmw8ZJH1+OZNUluWBYGJZOU
	 M6Z4Wgzn/4Zgf3Zp5gZoE+mTt4DHkgw7GI1nZD+8PHh44MyzuW+0lVAmA80t+ASFO2
	 qtS8R9SmZZUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3AECDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235565370.25233.2742488102044155338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d639b2db8bcbd823395acf17a247b81e89ad339c55e49edfe2543ca8a76f989e
Date: Thu, 25 Jun 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782355653
