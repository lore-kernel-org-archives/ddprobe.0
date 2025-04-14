Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2825229D
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744646394; cv=none; b=UOeQjoOyhUTAklC3F3qnR2luY97Utrln1GYGvR7V+Jml5XotEOtRBfKm9+JwpNOMSJFgj14Z4zDoposUw3QkmXDBBtZcPESf5Nt5qXteBr+cbrJBDk2VlQhY25SCzfUEsSs608Yo3FdKsvr6zM1ERlN6LnxprETcTWTs8S6c7tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744646394; c=relaxed/simple;
	bh=ijUApd25tqm71eNKNZt7dqAULuelIquyX3NpU6anJdU=;
	h=To:Subject:From:Message-Id:Date; b=NWZGg4v/aQVgqvncnROSMzJYbTq9zmxT5LlZxBqqKRND1a+lfZkSvzgy3poRSxcmB+eziOBqUw22j82Nr+CG0BYgPUUWgf9gCVyi1paZ5ki1+5vGaB1fE6LzCnExK0KCLMKKMXLb9PZMCWZEzF9PLLNzbX9DNnqni6WJUppzmXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPEwItTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPEwItTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62C0C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744646393;
	bh=ijUApd25tqm71eNKNZt7dqAULuelIquyX3NpU6anJdU=;
	h=To:Subject:From:Date:From;
	b=tPEwItTOaP7cyCYstdzQODvBreQdTKddfmVh3ifmaVrXJF+3xTVVyiHE7S39Au/PL
	 EDJwoLCAvEP9JtzFqDSQAGtP5u0pa/SYu+WR2LOm62Um7k/ooQ6QFzvFEUk9AVqHsv
	 2J8Z0F1qgKqb5GjXA0CxqzQooFIicqYyjnK2tjIuU8+MCdW0IKuOuNTBoCFVN6dFwN
	 T4iZ1WcWlOXySqwTfRJxquuMyGaP6kZ/U5DgBvYC2tuFptgnIVys2La4lh+dZkPTVf
	 dCr6C+hjNhn2NlphKa/uhOMW9TDOxwEkMgiWHzvnGPmnFCIbjGnXRyFOGeAgQ6OyKR
	 dhlthblpOyp6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A157C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464639362.19718.9963272808581596577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3447e5c2d86a1732c7fc4031e7fe229c5314c3c6d0ca841128c4ed9972bab1e
Date: Mon, 14 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744646393
