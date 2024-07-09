Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6BD1EA74
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720526183; cv=none; b=gHNMSdO0Hi0q+OqOH3sQ7yBzaqKgPr+LvL3HBPaiOGI7jFhYgm5GT7xokMpRQj2lQi9apqEZnbVyR+x1X9ws1ogj/vRIovl73VykrxnWKHIW6JGMW830KrdaOi1rEQGlruWDUFImSDTEanparA7EG41s9tPx9Yd9mbUfBL8OJZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720526183; c=relaxed/simple;
	bh=R6gGghqOO8JvSFdzEzxI7nyhlOIs6A1jtqs8hKuwbJ4=;
	h=To:Subject:From:Message-Id:Date; b=ouTLwKY4J4s95u+FHRDs7svOz1I0NDfkLJk8Bh7gSxh6ph96sJKlQQos6z5sX1HpukoHs9cvxTmDy98W+3YHtrpoj9Te6kPLUmndBWDZnwErl9bMp2AmmzNQvhqHj7K9klh3azOj2zpVTDjIjiAr1qHWgVAXf6jo6F1d/w6oyl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1yn2WFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1yn2WFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE0C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720526182;
	bh=R6gGghqOO8JvSFdzEzxI7nyhlOIs6A1jtqs8hKuwbJ4=;
	h=To:Subject:From:Date:From;
	b=d1yn2WFtMaV2eQUwGZy/hLF/WEvC3H48i65Gv7jgh0xoyJHQ6bRxejk+Nf953kqXs
	 E3NtHwo+LiRzievVjT+u+fLmk9xPtWKuruNPpecsmhvMDJgQKIbJ8Z3JoI+ndc7Zui
	 nZnPFZ/GktOxu0xn3RKkYIBSpkac5m8N8j2oeupPYU0bxBExSWBaFaaOS5f6uhmLie
	 G6BRXj1pVNc1x0REe9iiQDJXcKj7B/5J+P28uOSZXOI80qQB6/XezVGG0WK2/4APvj
	 xMlACdNaMpc/EUQ3lo+jSf3I/Zne6aDnO/BLKjpfbV6qzfdvaBxRHFGVj4ioALB4Ti
	 fx4tRLnkv9WXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AB2C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052618279.7722.15020972123957127166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b540aa7b3206eeba88de794f9455c37a05c00a667668c05da31e645a5604bd
Date: Tue, 09 Jul 2024 11:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720526182
