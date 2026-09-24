Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511CF489894
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790293234; cv=none; b=Upsl/dqmIVIoVl4FXzlxz+TQmtXTdksdJeKn84k4kssI4K1Mb/ssYTj+Qslza7jmCO39fKH311R52GGu13Xxe/Hs/Q6rcvkQM3Yc18M7QT2qmcQdqrrqAUn/hkkj4OWXUZEuM1Q/4hxNGo1ERzFrAIoAXqowXyWBpaw5ghNv8kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790293234; c=relaxed/simple;
	bh=aoJxD4fHqT1f0ehYxAHPdrPojy3wYHsEqtbbmnGN2Tg=;
	h=To:Subject:From:Message-Id:Date; b=PHLqOuO35qL6ZdbV4n9QGiYpWxaDq65M+X0mzum+KBDHQVglvVKLf20iIbDLkW5m3S71TgV0pJJh6j86YngHs5zUNrVSRzdrz/CAq8nV+IKzKfNjuGWbKx1ooOEnnQug1sniGYsddjbnNBht+q7Y1xI/5rKxv+NhBCDmndIqltU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYotyRMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYotyRMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9062C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790293233;
	bh=aoJxD4fHqT1f0ehYxAHPdrPojy3wYHsEqtbbmnGN2Tg=;
	h=To:Subject:From:Date:From;
	b=qYotyRMISd5sgthJkDBeEi3J/UbjRIEco4svNpQHHE3YQ2OkqcuEwxMGQgVq/1yti
	 qMbjP1jIm3b0MSpZA8ke979aObIqH7FLkDh8AxbhZ567ZrFqCQEvQ3Yi4VfrsScCvN
	 NXV+225sk6qNuKWMzQ9YGmrCl5PJsU2ZPR0ZUhwevJI+xeZVjybNsoYF/9m6UfzN8A
	 eQqlYyIFXFVKecg8HwwnjcjULdqTWo4BA7uYImO63syUiO5tC+vzE0fiw5hkdbuaZh
	 E7IkINB8Xx5u+G81oNEe8QlJqS7uAuBr7BGsGKiFJmBHMmwYz3OAACBQ4csmtmfKD/
	 SBe4J9kff86+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1290C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029323369.14855.1239372364280045850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10dbd82ea77890cdcd60be7f9a4cbd5ccc0e3064daf15ebe9b113b32c8b86a16
Date: Thu, 24 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790293233
