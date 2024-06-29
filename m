Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61ED22032B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719694463; cv=none; b=pAvOC2yf+N3gltefGgbIogYmB5gcYRQMouSzqfG88bGP8erxsReEj/iUKOTrfQsbaAymaP4g//ZhATtx1BwDEsDiJhR2PTX+w2u8fc1JWNi04oUUwFZpJEWCgtphFmHBwtfFtC3HpZZzm91SZ59VJ7ye2bI22Kwyr/FadDRQIOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719694463; c=relaxed/simple;
	bh=9MguaSCU3C8HaeZjXsQnviSN8tYInkjTU7bcrWIny0M=;
	h=To:Subject:From:Message-Id:Date; b=ZuuOH/VnGM7YS51YkWl3Q8l2BN4+Dryvl62Irxn42UFuflpGCgEmHXr2xlnZIs9DqQ6jI/OW+Lr4s/HE51H07yRHpTPb2zKOUmEIOD8m7+7/SkZf1nXPgaVJBNXPHq+lHUbhv7O4O5YQymxKD8iJABVCaF0duhQMo+uqbRR0jO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLLw8QUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLLw8QUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CA2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719694462;
	bh=9MguaSCU3C8HaeZjXsQnviSN8tYInkjTU7bcrWIny0M=;
	h=To:Subject:From:Date:From;
	b=RLLw8QUE6ORby7Pw6+iMoiiEcRo25smYsnfCS4g4bvO217nKncTtOv0ZTEe+/6R0Q
	 /xcHEkRoZllGOuE8JgicegabMyxprlmuvxp0gXnjdG6ORI6ErjAieViahBNeC1CONs
	 FsIBsEjzVXgkVBpuAYEVmW85WaEQVQfGaEVbQsx0inXujVrVkclEMg6J4KBBDAP0F+
	 Jjh9zuX77g/RdlWLJJqj3eZOrAbG3mDe3Jj/EveuGwjmhax/LqHj1EldjYFkWOq98M
	 H7O2SWgLE6eFl81nyVxRPUNPfQjhIGhc/LkvTTlSSbWYA+LldzGeGFgJ+x6oRSqId5
	 brWReUO9gip5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BDCC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969446278.15796.352971209864932436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f74e5d7ad5553dd6532de436e31ca695b854fece756c3aa8868e359952ae46a
Date: Sat, 29 Jun 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719694462
