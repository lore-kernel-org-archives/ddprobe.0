Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582E8154425
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791165634; cv=none; b=GOaL6j0S56Fy7ZDFL/F2ElzrkN1Ap+yjeIWVxhS7TBesjqG2/PNImjJzQLZq9gt03Z/wudWRk1gvMyDuMczWNZbhCOgqvfR0iXuJOLIdAQVnWZ3G9BsBOjlrVWTSyWPdWTjgtqV5GzMvGtxH+hG21AfjFpa5BDn1TrH+/RYJYKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791165634; c=relaxed/simple;
	bh=Y1q8UNi9F4sMTqDzPZsxFYyzEkmxJOBPi/DB39DoSJs=;
	h=To:Subject:From:Message-Id:Date; b=AXWmTMifITBmvJaIIL5sGcN4p8+b5Xyx7JbRun1P9C6qYTpwdFfUlFwsXLIyhsReHUA6cFpFPI1LSJFIMCDu/UFZQ7YF72wN7+LFwvPemecNxRMvge7KV3hBSHGHYXXmJB5fqW0YnmZhjJSTMWGVsYqAKDaWNUmWaE9484Gk9OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3y1t4zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3y1t4zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E9BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791165633;
	bh=Y1q8UNi9F4sMTqDzPZsxFYyzEkmxJOBPi/DB39DoSJs=;
	h=To:Subject:From:Date:From;
	b=i3y1t4zbt3sFnjesPxDHOpea1OjZCM+rPFWKpvY9LJyPpZdllSRh+jxXSkrn1r09Z
	 OiUCnwxocmfFKjab0MssuhlGKz2SF5iCoePZBEubrUbXtzbrfYL1k1xRDtQ7Yq6axm
	 XRtqZuvrE5Fy0ZcIiEl5te2wKVGBROPNeGAKflEIwoD6YV08OYF7+SOsixe71n++q9
	 vm7T7X1xKPUOSrDEFP7YwEMwb5gzcNfrYeR/ajLuEAALz2YTHarlC3BxN0CHK36LUD
	 OH9P10Y6n1dyjNwb6RvNfjdjXVdIAMkmWbqiq196wN869y3n+ozoPxjw9POw5MKz13
	 pwmetY7LinwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D69CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116563368.26682.11343226320118790893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe3ea206555b67b6aa2454276b31acfe6a09cd409eff35abfb6e5a081bfb74e
Date: Mon, 05 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791165633
