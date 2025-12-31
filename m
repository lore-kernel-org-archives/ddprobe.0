Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2C30AAD6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767224634; cv=none; b=VEo+LM2aAsY5Ee+qZ/gMV9ZrL5hUiKRmb1N2YDliQVnwD4q5EP4oIEuX6lXnEAh+gf5mCms6OI2cZCq2OqOqZNwKI2hc8jDOjYyUtCcWmIsb0Xb5h89SnV/96nDoxXZcOhHVAHXAOL/zOZ95td37km6U+cXkZjFxHF+XwDRT13I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767224634; c=relaxed/simple;
	bh=gfMHib13IN6TacednqYjCVJpJu4/uU4ufiD2jRdcAOo=;
	h=To:Subject:From:Message-Id:Date; b=UeZqzvIMzC2pKbscH/6GyM7qAiYEV6HgJ+q8XSJJT4GSIZhF5War4J2ri9rKIquaeCZWSKGnxAyVRI4kErWSXiG54lvSPHk+HgQr2GGfviDaxXuBVKCbvMgpNs8ZGj3DM9OcRyP2ljk/hZqmruibNCpgQzJCkoSEjKSwG7KLod0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaE62Osj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaE62Osj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C30C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767224633;
	bh=gfMHib13IN6TacednqYjCVJpJu4/uU4ufiD2jRdcAOo=;
	h=To:Subject:From:Date:From;
	b=BaE62Osjh0dWBL6rzLX4r4/TyJKB4YTWdUXF44Q5XkEIIfEQZvtRRUY82H9tb1GT1
	 G4Jp+tG8veALldBEUqX3ieJrjpwA6qNy3wQ0QwG8dtiqEZXak0dWNe9hbfHyHB5Ijj
	 fBJoHBpplo6dUolZQ3cJNNuNcqEdVM+NLZkcoS2cQIyyS9wAtwytyJ7RHniwUOjisl
	 txQJF0rq1dPyGoF/cGs4+jzIp5KgSBNPe+FYtftq52e5csEe0t3Z0K619VKFZ3MxbO
	 JWtgjbAocV0MBKkkddKqwt9ziiW2JJBFIV6dXOEZFtOTZD4AXdwSNyrQJskkZNrR6M
	 Gg/AdFeS2lXVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9225DEEB573
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722463357.8093.11161015656636039173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b59348100b6d2c54ba767cd6aba554abd93faa4a0cd2f0047253c227a35bbe1
Date: Wed, 31 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767224633
