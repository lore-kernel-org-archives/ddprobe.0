Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385A034B1AB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762969194; cv=none; b=He7jt9Gh8nQuG7GOkxxndL2IMHAuP9BTtpWxUQ85E1vW+RrVAXOWNczBQcdo7fzBgCu56+V+hlDzghbyUl6b3Nm/a2jH+8Yisj+Dh13q+yIf9KCjE4sFiywq482eSAgQhqSU8QiO4mEV+oITbETtkq73GylxcJ8ksgxdX0Mcl8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762969194; c=relaxed/simple;
	bh=KE4SIVQ0ra5nFemkb5mWTG8VivtQsP2p6ihEe7SWsqU=;
	h=To:Subject:From:Message-Id:Date; b=aHrQta35oCCek2VTbLlJSYqY7YgR0z9kvPUqZkFOvfDGKcSOunSNbzQH2bEsa39pMdBw4jRg7KInXnaG6YBI1BsRwlanXYrm02Qt6/5fa4IV5fk0mW7Q35iv8HcyZUH8O9x8H1NrhPqGV6pn7TItPpwTkdEonYUD2MtEh6tyUPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtDNf0t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtDNf0t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3E9C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762969193;
	bh=KE4SIVQ0ra5nFemkb5mWTG8VivtQsP2p6ihEe7SWsqU=;
	h=To:Subject:From:Date:From;
	b=HtDNf0t/QbA0pJ3znqQ4EXc+Iwz7RHnbnSD8qhfjiBRcZUnm2k54hmJQrfke4nQMu
	 H1EivfhRwEK1bpCSeyWQEv0iGZet7H0a+iLLaI4tqK3nRFiHwmO9i1CD/0uhxudyhc
	 RJzh5ijJ5q6ZhijE7Nvs0eEJfX8OgDt5yowvXO21G4/meLnhppOASByCzHgfodQrcK
	 phwQdfJ+4vRGwP/WsgzlH1oymloBqjiVUhiZDeesZSB0NpJeAzpSOGkMhJFCaxW7zp
	 agLxKFWyBkV3s/FkWXcwPQyPAJHqxHFTiF7WppCtzj54ltrYKZ+aEbLCS14zeswHFp
	 J/dZQW67a2Uxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95456CD342F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296919360.10466.10673292316502903244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ccffcafa02935ceed8543c9a8fb5041a45933612d9b319158f50964f52dea8
Date: Wed, 12 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762969193
