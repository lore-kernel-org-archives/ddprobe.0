Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFC33F4DC1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783424314; cv=none; b=KAfr6zib6YGlxe3r2N0OA2oYS/jD9aYbQotYswdV3LXlDaKQ9HtIjkbJNtZf448FKv+ae7ldNHJCMVKsRqvg12MunRUYUyx4scZ3JPT9996LMb47JGwbZpntXxzUR3rNpM6RcRz48aRv/HczcaZDZ8KCLHpQRKlIR3NryJMiWaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783424314; c=relaxed/simple;
	bh=emPEBi6lWsWOpbz+Me2jAT/M5Z1HA13J3x3miUJHZ4c=;
	h=To:Subject:From:Message-Id:Date; b=Mzg3deF2NiMf9FlMT7gp9qSNilPhdejTCEohGOeBFsNdKa+BAwldiO8CnWopwi6VD5720neJgvxafvwQoCjKS93+Doon9+1wTp8wA8nrX53Da4BNQA2VuVALhZrKHm/BK2y0huQodwy1O5JYZWiL9YZcYeFYTjyCFP9ZyN0/xbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KThZJzdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KThZJzdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB517C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783424313;
	bh=emPEBi6lWsWOpbz+Me2jAT/M5Z1HA13J3x3miUJHZ4c=;
	h=To:Subject:From:Date:From;
	b=KThZJzdLzoKFy3nbbt2bqaevIX7nDd/AzgZeRYBW35STB1zeXSwDzU0codOM6+sus
	 cs1XAY8EH/wt663qHWSMrbgVedk7ZtHCsOQ9r9nWh1g7wlj4WWmjSnNwaxTukJg78X
	 SmqGnV5elxO4t57r6/Xy5rqpZRpqsQjhGcXKyvBgrBvAlRZQytJB8TVNcqTOHacqR8
	 umMXvOy3diSYmM3bSLq5LCFpkqsjc0iczR7oGp6PGK+wfRmx8yUAlmTlhKuMiOE2RJ
	 g8XhXhGZbTa9gmeSkonWGzAsN0tzWAoHJbFEWGOd+36AsjRky72lC5M/TmGzT205AW
	 hfSg6zQK2mNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9291C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342431368.14624.11322703700953906479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40896a5e0cf479d07f2e3a684ec5d6937f49bc060bb828d5bdffd5d344cb978f
Date: Tue, 07 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783424313
