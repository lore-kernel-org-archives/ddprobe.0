Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6531E511
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778036854; cv=none; b=rlUfjgIdbh8HtWxficTnDpFsTdN6H+MgPmSS/hHCA5K4JA3wGKJ96JSqeTam1VAikkGqm6irEFVi2Lwg+67Qalx2hFl2OqoO10q+Gen1PRmej3yAMVMRr4nrqyytfsZ41jufxxPqWfGyfpzIaN/xQ8EJk6BlmAMw2enVTmYEzU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778036854; c=relaxed/simple;
	bh=MfTLbIbMSxdpqkgDFNzbFyPeS+TP6OIOSyS3wEeeMt0=;
	h=To:Subject:From:Message-Id:Date; b=p45vncVTAW0Rip6gLlm779Aa7MWURuLwk0fVBZcYk7jPqx8iFrRbAm1wikId1ZkaDckxgok9ziapdNx+xbnqbc6QJMxAf6q881JUaT5WQ+EThsPfBRL1bhgzJfpDpdq9eLORsUO3o5JW5lhGUSFS7rFZuEg4fsYf+/fOzl7Vkw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFUM965v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFUM965v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF21AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778036853;
	bh=MfTLbIbMSxdpqkgDFNzbFyPeS+TP6OIOSyS3wEeeMt0=;
	h=To:Subject:From:Date:From;
	b=QFUM965vHaSOO8Fw35ePj7wtt/biD4qHrkofHJFpX8caB//R+kAHQN2r74/fruu+z
	 tZUwxMLbfMiP1RARRKxkAxhcTJWqepUJEJo0UVMJcLXOFT3voD+p5bvK0UJbf9ce5J
	 lHy2KZKGvqeOJtw6t92/HbDsUBcF3de5Fd8ZmEKyv9E21ln6LQZ/LHXT22JyoNwD57
	 M83OTojvFrDDbBoiuwfXAQt+HKbnpR+oIrLRUllwWgTJoCWNc9wy3djK8EG7Xo6MXq
	 Ng2maGrOFaV5nqXS7mXFqM7B5VCWLOZD7n6ukZM/ywmRjoFugMzdOw/TrFVZe1mkpq
	 LbB/yQbpRmoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE03CD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803685369.30582.5564894626431633107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aab0d32c137f72d47633990089e1c701b2a81b69d541ad809ab2bc37a06026a
Date: Wed, 06 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778036853
