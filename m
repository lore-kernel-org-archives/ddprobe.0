Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2918C3B8D44
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764995574; cv=none; b=Ua6ExWcZQnErdg0PsMeNJzm8sqYMTTqklZtk4vhuJKkZ9Y1Sd2kdkaKKSxWF8D4lb79EawH7hAv1ag3Z+DTg5BVLKcXm6Okj2H2zj2zagGKa6VyYt+BSaUFJaqcUfpLwk7tGMxWX1vKEbYZq3DVRXt54YMY6qwr0v1FGr0HwQSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764995574; c=relaxed/simple;
	bh=7U3CR1Mpi63PyJ6u8b66oqIMOhXBbmzGvHtIrl1o1cE=;
	h=To:Subject:From:Message-Id:Date; b=SaC4uaBkAR4YcozaumaONoGfPYO91ZlzYehTOaqPw4j9NSW2K871h8P7oHkin39AhgHIiTlww2SxD5ZaN58u+zEvQcVdtHfTJKSE6xRUAR/Are3CputY6GpB4jEphbfxQMTm7VURurmihrr1T6X3c0erFlY9+huVKh1yETYfH98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUb+L1XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUb+L1XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7472C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764995573;
	bh=7U3CR1Mpi63PyJ6u8b66oqIMOhXBbmzGvHtIrl1o1cE=;
	h=To:Subject:From:Date:From;
	b=oUb+L1XI4XcOINgZWu18ockKe/opqHA3ZL5or/JYcMB/oSF18kTCITxxBRHhcylWb
	 SRaqvQKxP4vG44bKVGwWy1N3cdoy34mcPU76toUXQEi+1D2vUVTVqOpd1LZyzG9Cfr
	 KPsOaYuiGoWn/ElOhrdwdEDpEwL2AeQB8AVVjnhrT5LbW2i0wogrnOJNrFD3igRPvr
	 6aZoePFSr0wraXzhTB66TLgoCdtgTW0bsRBailq13q/MCt3P72yxUHgn67MNgVHn7o
	 fYWJ5i+zP8NguZN+LlaCpmUvHpYI94Mo8n/UlHYYpdUnWfSFCSo7SxKX65Zu4jGAol
	 dYePeX1Upriow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB29D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499557364.13034.13140182540482261589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441abf6d77418f87188f7cd3777de29dc8e15b070a7519df1b1bff124ba2b712
Date: Sat, 06 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764995573
