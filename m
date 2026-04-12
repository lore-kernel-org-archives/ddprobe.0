Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38842231836
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775989654; cv=none; b=sL2TunlGdfQoTttf7Na68rVgup/behaddbAGhjvPXDsL9oR9XVEh0NAPJZIGHRA9ivH7vlJ4ESekWiW2ffk2ZSYWwX2z7UZnKmz4wTZV6M21w4KAQqVReZr2/0cvtFiKyRlrypqh9gKni8x1df4QE4uWvX9YDAOCYqy2wBQVudE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775989654; c=relaxed/simple;
	bh=hKnoYzEI5M8krDDQgiezTJS+fWmzycJF7qfgLLI6rfk=;
	h=To:Subject:From:Message-Id:Date; b=NiUqgS6JmgaTAZ4JGAVtJ9Z0pQas7O40eeq86BfGFtqEqewOtTMzk9nEhTIMrWNwsB4nif5tPRIbJG0ro1NCZtoa2/i5u2tspsx35eIlyYiR/TPM714mg4YUKE9mvDcfcAk+Qk4p7oHl5B/qYA0irwa05bcmjxuJ+u2tdBmZXvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syTHR60B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syTHR60B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17C2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775989653;
	bh=hKnoYzEI5M8krDDQgiezTJS+fWmzycJF7qfgLLI6rfk=;
	h=To:Subject:From:Date:From;
	b=syTHR60BebepS61nWRvkP+UKXf1L8oAC0pFBkSOtCpb3bdBSwgcera1A6+bodatsU
	 9a0fNPiav2zAySOyt86VtxBOZEvm02B/tLqW1vWRXaH/Z5wjnW0dPk6Ao6X2skUIFJ
	 kPrxitmmWK6neHD6133zZdUEd5UqjDU3bF1OJFvD8ZcJXgyuXhNiVshtGptFGclyNp
	 8G8LTNk3Go211zKop5hI38tj3Q17cSsSw+LzZr+y2pE3ewZp6tBnYBn2KjZtWCA3SF
	 2k8/rEmz0yv8IVGYxqkJAIk3VfK6wwa9vK6N5s1l6ETEQG5NGD36RlRoNu3gGPFyjt
	 AHdWtabvfvelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0199E6400A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598965368.32599.9506090628558537262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d5a2e2d10eac1a9a432a5783b20e780f47d84c34dd993fbe0731b9f5c53edc
Date: Sun, 12 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775989653
