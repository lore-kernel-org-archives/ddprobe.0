Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94E30BF64
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763500915; cv=none; b=ZYEVBUhYUR2Ax42YHhiOO3/Y1PwtPK/Am0cU5HVrLs0Xjrc1afnXruW7uh3/jpHFt0mFUCZSxi/kUxtGnnUF5a/bRRWfqhsWbW1n+1h8I5hLsUgEwEVqAevhC60DjRrSXU1zJ3WLey4nxPW1eC56GBU36VjhwHUdtLh5BafF5YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763500915; c=relaxed/simple;
	bh=RpCNMCqYb1KdfkeMidLaQSCNflpg4H9qJRpuft3ZQL8=;
	h=To:Subject:From:Message-Id:Date; b=imuWID/CCTYvs9cWh9TJEtIvjq/WMYbbbe2miL7Ooqvlsy+zOkT2wErYBra7vMpDcTP6OhL1ZBTL6s5JCJecON3xbTFxeGMoC+5vkfOsDICFpfOiyYQcsC/iPSeHxIZYd7zvacC00M4t1gIQOwEgRJqu3QHfOIQk8dKx4Hd6zs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUE1LMYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUE1LMYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA571C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763500913;
	bh=RpCNMCqYb1KdfkeMidLaQSCNflpg4H9qJRpuft3ZQL8=;
	h=To:Subject:From:Date:From;
	b=aUE1LMYgpN4PEPHHZgRBnxvUbhQIMjiBB/HLKJxzP4e4SoegjLS1YfudBXv7xVAO8
	 qYlQHC3LKUj77qzU+L+a4nidv8dD20u4dQqoB2tBUz+xX1l6pCzm9RpisHC+aE4diJ
	 1xOQDT11LFb5k13EasY589vQiWPymB6/AAygV9wnmPlSf0LVK21DqH/DmOVU0lVxcu
	 pR4Dpt7ZQCNouYvvoczzbeswnZZi95AD767Ti75oD2oz+JE1mnQn6d2kidbvWnqEXJ
	 +ISHyI1Rx7OJE1s75jvvPn8VblkzDrsBv9D06AXuk1h2M0Kys7E6W0kRNgQjB65UtR
	 DaluyOlSY9ntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91392CEE35B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350091358.24536.8490084464996904670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75508011ed841e2a27f6eca36ebaf3b51251254e35fc5094c8fdb19520efa9e0
Date: Tue, 18 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763500913
