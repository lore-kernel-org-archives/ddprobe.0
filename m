Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C964B8DE4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778090254; cv=none; b=NGqKrB4Eci+xdyZKk2zxzo6+RJ63nB5/eNGeS5izwRbRyJfP5Gfhsh95QaZV8MrhWRFWu5Gw7pQqVL4dO7MmIW0kxCC6OWyC9y/s5t8KIjU6DCgYjAhYVgh91Ryx+gXQEst+ucMxN7hkNXpxiQvBFyrmeICVvyXgQvs9JdbG5c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778090254; c=relaxed/simple;
	bh=9rXOgrj2jnZ0u2CGQz3FM2fKubbqjCB3WTSf5H75ytE=;
	h=To:Subject:From:Message-Id:Date; b=baazo+wIOR1duAgcsjhHjR598d/FFVYWnHcJuBd7eZewvwAEZcwIhSvPqg7u15e+f3chS5UPANM8VMY5T9OUnPB4UzP5RVdcKneLaAqN813CZupY/K90qpmj0SMIdgSjMNslCFc1Vsk4mzDcQGVy1+qvLczqBAUSL0Fp/IIOSW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlqUWyLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlqUWyLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD155C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778090253;
	bh=9rXOgrj2jnZ0u2CGQz3FM2fKubbqjCB3WTSf5H75ytE=;
	h=To:Subject:From:Date:From;
	b=OlqUWyLh37S3MXQd1Wo6H91K49uTQy1nU77DwWj+6wkBaxO6pB2FhyqPOQ1WGo9zU
	 o0bfFKgyQH5dv2t0watIlQpadA+kWqG5+9sjX4XMj3gj09xxzksOiv28iT2UkH7yfT
	 +HKPfu/WT0NPhruKYQgnkPZQQWDqzCjNEN7KeV4UhKszkjmzCPtTQHvH/FnmBqupiq
	 3DNBu/eXjWG1kRb/xTy54JLpLZvkEVQu16IYy7OGbR1pArPF4Er29rjZLXbOMopb60
	 a1XGmCU28XbSINoJAC7B3buwQLDWq3/z87sIdeUcJtk7zCNZjixdGY5mH+IHHdzCjJ
	 Xi25ngTugzZjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA27CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809025369.6117.18125655160741928254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69877850e57999dcdc221dcb9ab42f1da2aaf4e6fe29f8e5ab7b4eefb2f251cb
Date: Wed, 06 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778090253
