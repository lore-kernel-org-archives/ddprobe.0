Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCD2BD5BD
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770161034; cv=none; b=f56eFEBEUtdjlYlFevijoTBz1HqbSRNphRrwuvKzaf4snWupJE0tVVJVhsCM92O/pdbI7py0ziBTpfTHPI94dTed/ObcRPZGtvHRPv6ETN2plKdjja7CIUahLB270p8rU6Yr8PYiq/QfzsuAu6590y6cfQ2OqNWR1b4o20WKzHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770161034; c=relaxed/simple;
	bh=iypRGXmjgDQGbZjQR83fE/GG9HOP1MZSD3m9ZZzzoo0=;
	h=To:Subject:From:Message-Id:Date; b=CXaIl5xS1Dbgmc8lD0ksCvWfXbHtBSJ2DZ927rAnW+Od35i7ZiKTPRXUOUyEgwrOJ1YDmZMq8ldJxaahprr9pYljDR6aQ3PGpJnvSVyG5vUmsX5rDlU4znnFJoM3jq0LRvzUqQvUvuQFJyf8c67+7PNdnyV+DFe57a4PRSuZvkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErBRS33t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErBRS33t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2090C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770161033;
	bh=iypRGXmjgDQGbZjQR83fE/GG9HOP1MZSD3m9ZZzzoo0=;
	h=To:Subject:From:Date:From;
	b=ErBRS33tDYh2HFin4lRFyFtseSmk+0Wlmrg3kcb8c9N3YahmIXrOr1sfwegAwWSBW
	 lrvHBM210bzaOpEQX+sblofaYFZwNXPSFyDizls/QYHXHI0XfmsrjSLBe60P/R0gUx
	 fLiO6bQ2rUQ6/b1A+iwOLve4+rxnKZ2DtJrF2wiFjxOrJfguANfyaUKqxCjFqTAk1v
	 jMg2JPjZcixtvfcRT0bmyBZLQ0eUWrIKQYQNq6yGwJsOePdoNG2v0kXNIyajxUctwI
	 6zLlfVsFb8LhwCdW4UPzH4ZJE5Dc4k+o+ciwhIJmsOoR6hFQkEgzJ7vnvR28DRKKT8
	 1zzh8OKf8g95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E524E8B384
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016103363.24847.17031945738721934437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7e55ec38c7f434187d34d51d4083c33a8a53fe6fd9380c8294e2ec0b1f7f6c
Date: Tue, 03 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770161033
