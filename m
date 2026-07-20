Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA7939B95D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784554114; cv=none; b=H3LSS532S/5oYrN1SP2zLGO4L2Y/5Dbcp8QsYYVtUhzKEVnUL9h1yIUrIDIXvzVDvxJX6j74zlXYphWqeSjFS9S1F8d3Y66CSAic9gg4VFUF7TeSq7bwVsvzVWwOkfKBE1qPSgqfW5F2v+SfsRlfcIAdK8PqkGUMJeDPl/11pYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784554114; c=relaxed/simple;
	bh=M0JIIXqMGBBzeEj0VVkw3RQDDdp0jqPxIBl4UOofRXY=;
	h=To:Subject:From:Message-Id:Date; b=X/knYh69eRQyiMLUNCaqNJjSwwIOu9rpV9Kj9zPcZHQ2mnO7g7/OCUwj8ALw3oEhlJkn4uhr7GbQk6QkKupuLS1cAoo/T6JYFBm6rTrGH8SkYQVFKj+x6mqnjJZLT2K8ph/6vImBxrwq8YWHu2Ghg+YVyGEsXC5V5FpvWYw+LTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ei8PtSFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ei8PtSFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A46C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784554113;
	bh=M0JIIXqMGBBzeEj0VVkw3RQDDdp0jqPxIBl4UOofRXY=;
	h=To:Subject:From:Date:From;
	b=ei8PtSFTwClN+QnPUWQrsqIQZVDQ3kTQs6caBDOaKeZYAbmsh3yb6TNhzyAeTNWZ+
	 6CN5FJaJupwptnR8rSrLfbb5He7pMl6N4DkBcqZIDvYSEOQNpWPjNAB2hPZdPSb47t
	 vACvFHQvswjFaP1mjhtmkDBImGP45IDu4DA1L2Ns58ETbgZ5S2BS4sv+lYoIqvFi4r
	 /+bDeH4ROt++8NS6Crn73OxP1cmaDx4RTH0bHoVHONHUY2spbl4bd63QHu3Ug1ZH1z
	 X3rmK59Uytnthc/g0YTk11GXu7mRSPzP65P4n83Cq5GfEvJXWHtTp6/wuEWKnxT5sp
	 B5X4iQdQ11hUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD26DC4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455411369.16531.1704300435106909174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2b9e4ed17bf661e21ddb75c34eeb2c6a028d9d3721e5e3480323d29c867cc7
Date: Mon, 20 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784554113
