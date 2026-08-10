Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737B942FCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786384234; cv=none; b=gDrnx5mvrz5gk/iFrvJSGOqsqwTxZ8wcFXOyXV4U9kq7yCcWIzul3poH+b4vpTlZTJ6KM54qm8SmYOh/WBF2p1F36lmmhb9fqMrUh87UvxnGu5AhJi7ZMymQbRgHtlrEklS/2Uzfzsbr4mmKB+SwxeJ5gh19XuR+tL1fA+/jEqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786384234; c=relaxed/simple;
	bh=LzsdSbYUtBUtt6Kr+7d1jNVhguv9ScrXIjvFmvFVZqs=;
	h=To:Subject:From:Message-Id:Date; b=Iz4+BtckffKnrvAx/JLOGc1y09JrmfyzMesi0LLzP5dhD7cemnbv7goDBFDcktF3HR11aCRzctBEnV7+4H0iMY+YUBFfr96MaEAJQpbip0J9DZLsMSE3SI4F475pErAcBIsIjc5rKe6MwVkEyaEskZTXoXG4DN5WIaLVVYeXye8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzPK4erN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzPK4erN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0834C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786384233;
	bh=LzsdSbYUtBUtt6Kr+7d1jNVhguv9ScrXIjvFmvFVZqs=;
	h=To:Subject:From:Date:From;
	b=bzPK4erNBPAcNNwLKHjCwYV34m5FF3vWtiOj3J4ICkXp+7oZYsQBAVpEAMgQOqQv6
	 PgW9TV1iQHg3jOJxntjo74pGXFAvEoSNiPgkdrU2BN447AjwCXrJmuEKhJwmvmuzrq
	 oernzJ7+MU1v1sI0NgdKEfsutPTrdo3lKNG8yL146G4IAdEpNu0wzKLr8ObW1HdJbH
	 6vIdE9Bz7KbnJiofzV7NSyqmioVRmNQ7RGQmjD9Xig7ew6upe0z7XsssXKJhgfNH1W
	 eN3UG4561YjBgN28Tb60vHpaseRahBr7WhuVF20W6eIlgyTQKCmyJndB5iqYFwYDIY
	 ahZpwGWlGn6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9074C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638423368.27868.15797708839504454720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc0481ae436ecf3cbb1086045429781eb4e617c573768c226687e0d51403476
Date: Mon, 10 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786384233
