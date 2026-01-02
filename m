Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AD35975
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767327234; cv=none; b=Rp+YtMfAQqfHmUfZTWf2LpwmZYfpXmZx5hViEUuqVJb21K8bzQPcrdj84H69lyntRmlEV46Ho7K/QvJCgQ4ZM4VIusaBaow1Su387JMKBkdVcVqNtNVhXD5GlKypwsf5fwWhDxOe9XK2aJsZ8nfXJlEmcjpSb3Z01BR6jk1V84E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767327234; c=relaxed/simple;
	bh=+QKnVq0MpJ+K5naLsUCG3/Pl2fo9l5X/5DuDz+4oqbg=;
	h=To:Subject:From:Message-Id:Date; b=VqNzWDBgfoodkJEV8uaCufgumPqn4vcvvcmDTC+wJg3Le2Hfy7bLotMkqHdBAIRQfvfgCtJWLwLKXjzS5iTAJ0O6+gOMS2pbYfzIqZriQ1QBsjB9XN2SpOSdOpVqcSdEzJNw+DA4KqOOYv2yb0ETl8CdoV/XzCgbgwGP4JFj4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Weg25a5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Weg25a5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767327233;
	bh=+QKnVq0MpJ+K5naLsUCG3/Pl2fo9l5X/5DuDz+4oqbg=;
	h=To:Subject:From:Date:From;
	b=Weg25a5fSk6foX37imPAKdIx/Fp5g83cYVL5wl5oT9tsLd5ZbXh5jpHR9IyGVCZmP
	 jvy8yM36T5xSbx/lM5+vjiHDpleJwXH07hAa8qkkxGREz/HdTHw+c4hXdAt749Jipa
	 4jSW/t2kCu1JkVqlNOb6xj9u5aYb9TJC/jdslTbTuknYlBp9csAqgnDL9PprwMw453
	 h67IqatNR6kHjm/bP0kir/j5pJXO5Z2sa3UD9SOeTKauP9oYthfWzkcm0rk3C3RJ7s
	 zaoSEnP2MTIG1gyUnzGOsMJu/T3mUoeNqmRQgmRb5uQQ36DpfWyG+1DvQohcCkZXRC
	 H0mdxrtNXea9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96912EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732723358.14523.9213832339834651488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b829f59c2456ee2a7e714c9f26cb5f986a0dd02bc4c7c1f5fc38fcb72f5a684
Date: Fri, 02 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767327233
