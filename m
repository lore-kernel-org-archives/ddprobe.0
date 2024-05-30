Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C9183964
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717069463; cv=none; b=Si8vFWQnojyL6HbrYhaajHqPXrHtrxskbLX+8qecWNoZvDrtBqb3EL9tqBW7dFEmaNlSZrbHTqt6rIfFnrIa6wcomzJ8rtFWqcSFQPzTBFA/5mq7xtQXqu9Wp5o8UMXbtCzuOf3vk61eRwzm1Bq5jTxngthLk/E9s/JiCT/kwek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717069463; c=relaxed/simple;
	bh=RocUEiqWk6FEXyLmgRZUZrjzVbc63y+ivdy3HFX29vc=;
	h=To:Subject:From:Message-Id:Date; b=Gc2P4K/foPGlSJWuTtXNoukBZfaKLaF4PnXQWHsMGAmmz1tOI+fyfivhY5el4oLnULqYbWzEZUPHs+V0shTo5afm4qXnK6y4Cu4dyS1tiSysfG4jErO8+uD50amdBs2f5aSs8RarRbk7sjlZGuQOQzuMo7H41PnTRlylHmuWatQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCaWDNU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCaWDNU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DC1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717069462;
	bh=RocUEiqWk6FEXyLmgRZUZrjzVbc63y+ivdy3HFX29vc=;
	h=To:Subject:From:Date:From;
	b=eCaWDNU5IRK7zv37XnHAJRT5pPcIrJBRp1XrYjDxlb44AW9twCbzfdQ4OZuW1xXYm
	 1aU9eED/1e/wt4JM8IzBDSgJLy3n2bc5H5YyaXJjE7sQd8M7ZkYcUeV2Jmvp3tsVaa
	 zO4e/RJaIGmz8J9DrQf92ZRKKHzhFvfARs8byzs+RhibvfD+oyMe4yvgHgSuSOIKkL
	 K98bZUJsaABMWKTR6PXlepIJKP0gcFaJEkwBwjkInqsG7QGdj34/cL6KrGJSDJSxI9
	 Bqed2/wfsmx6VNkareLI7WdzNfZZviKbDHwxjs37fsSOxmq9VZmHrkXmJX0G5RoB9Q
	 SbOByczHM2Eqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FF4C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706946278.26134.4532223229962722892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519f0c1fd8a767b9d17b7e8886d51a8ebca2dfb25f0a5f05f876461f3570302b
Date: Thu, 30 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717069462
