Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA1176AC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719357203; cv=none; b=kOml5dzzXYoy9TiVXhnrPDjW8dy+LsCW7Ioi9+oxq6IVWBkAuFN/73zuB0OnjJTqvVD59mTwl4JhzXQqgSPhZvw3MHR5+kzsJt97CCUxYj6xMe+1k/4foh7LJnIuVvVAAj633zsW4SVKlBVqu9JS5cHk15uC8iP9Vd4NszjbWwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719357203; c=relaxed/simple;
	bh=wY3hC08tJTz6/2fbXQ++12xA5s/j0f1at/3oJZDcG6E=;
	h=To:Subject:From:Message-Id:Date; b=AuQOt+xqmZj6Lz+DHv5uOXSes/tqHNpqBS27j6bJ/5+KOBd5l/b17lNSmA9XsF5BWtlaAoEann58slqAcrM0IT/xymfX6a2BSRzRpj97Y33Gsd/X7WxqgJYLfgHYG+nXAb6qDtpyBCEF4wII9ZyarzqEDV+BbwkKGb3Ch1Z898s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E93GLXfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E93GLXfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59DBC32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719357202;
	bh=wY3hC08tJTz6/2fbXQ++12xA5s/j0f1at/3oJZDcG6E=;
	h=To:Subject:From:Date:From;
	b=E93GLXfpSSqjG37fed0m1k+n+ml68i8rmCLL1m+qdxeomhLodfOZF6FXmhLoDzuyN
	 3MTpcR74WDFXHjn8xRaF1/whkd5q15ftkBe4z2clA00r4TItzWJM+JVs+xy89dqUDv
	 tEENZJWMzIxrsu59eRhpQtdhQBrCP+XCsdOZ/zf/ERMHWlN9WtiCoF1sNVOLWYaaYr
	 Dq/k7oAyMxNbf0kdX95dPenkKMc65YCgBQUKqYFL9k5TD80fjzdrbtnKazPHRmeio0
	 Ce3T2Y4Zo9HNTlVIsaJNG/yqy/SfLzCFeomrXWYRyKVLngQ+VmfKTBzSq96+9h4Cvp
	 Y304dbdeU0GWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29C0C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935720277.28827.4284094666493465747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43aba1ab269e99c20fb0fada0322f6e5bf81d7a50ff5c8629084ae7afb88a7b5
Date: Tue, 25 Jun 2024 23:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719357202
