Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B355116D9C2
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763422314; cv=none; b=kyIPkpF9g+5vdwPMRw5zGGOA+wtslxY2KSMAouj+c1djd3x/6/OyElTxidnK9zP3yUmqZcIOMHpJaOdAamKvXeBE5hnFGPEl6auXSDh1Akr34ag8n5w6wcnijikkkRYhyjCxpSfHv7i/gNpGuOa7zQA57fhM75unXqdjuSxd6/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763422314; c=relaxed/simple;
	bh=I4phcDAHk8VNLqsVUAFn9tXo2oD4zDEZVz6on0rA6bE=;
	h=To:Subject:From:Message-Id:Date; b=DGKjkYkL6wbNVFXGNrkk/NMMQCFG/+7gPdU6j8960+2s1ynl6lVy5Q1N3W3vZC0RgFCJdyijPR0TmrjgNVZ+PB6ECtnFqCCqEj2oRPTw95XzEdtmh7Gw8pr8e4avGjccYKTMIM510eREOCAaKlgVlvyYiaMXkaEC2SfZ4XD82w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaU8bejG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaU8bejG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD43FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763422313;
	bh=I4phcDAHk8VNLqsVUAFn9tXo2oD4zDEZVz6on0rA6bE=;
	h=To:Subject:From:Date:From;
	b=jaU8bejGaj+kGS7ZvLYtqOMMq/SuKtk5d/3uKyr87CXGO2xpe2KXsm9rlu5BkYdxs
	 g5ion2DcXHxxhV3zOLoU4Nx7dHmeHMh247o8vXHdUYQolAHdUKBfKUz3vLVMEwDaBl
	 j1RVBUJzf1xlYH/Pos57Q5cthYkAqSxg/bcTNvz7oceScXSJ7HyZ5/Qb4Kk2phkw6K
	 IRBdW3bM9sFoFMMAcW4oJvTWlQxPje+2E8WO6QvkGqP20myYl+Tezpxgai8EToxzlu
	 +8oPfZfDaZzrVJAyC2bD8197/Q9FfGQSowVNyomgOyO14uBqJbAajMYDKQtOFJYAPP
	 Oo0DLrd5cJYOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602BCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342231358.15627.2913614220426794051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95432af5425ff931ddef2e8ecef93102463d9fc3419e16d385d57d7075ff1c7e
Date: Mon, 17 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763422313
