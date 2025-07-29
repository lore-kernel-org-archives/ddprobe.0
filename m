Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DB522A4F6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753784396; cv=none; b=MP6bT45rswsLybBuw700Hp3WOHBHLOtRABPzevkjP4s60yXS4aT+rptdc8RNI6oeRAvETk6uRhFkNAhEbNfFK6okuKKW8EiOjPIswQ/rduIj6cHFzyxrObTSvAwKEz+/KlYn7PsPXYKfKFIwi7m3w+o28wYqrzhYcuLSG6D0xVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753784396; c=relaxed/simple;
	bh=W7sBa7vyo0ZvZQuDab0Ie6OVN8JRS/ZyhzIegX7r9eA=;
	h=To:Subject:From:Message-Id:Date; b=Luj8MnlK3qdz6xgsUUfQCcq2wBs+KwzXStJsNQCBEmbvqPAz7sXOAQDDmnn7cRYd/7qEPTBE2k3kOkKdw7PKGd3ZeGEKWUOI8MVPCRkrsv4DnEcyc8q9ccV+7krpG6xp47hA+Pd9UawemmaDbw2oO7z4KGEamXZhO3dvUhAk80k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W18aRQHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W18aRQHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF57C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753784393;
	bh=W7sBa7vyo0ZvZQuDab0Ie6OVN8JRS/ZyhzIegX7r9eA=;
	h=To:Subject:From:Date:From;
	b=W18aRQHaL5wYglXNf+H7FfQXgIGxdqMp9NHsU6wH/IxUvMP1z+gpMIdvoYzqvrnF0
	 m+0CI0sHFLujO729snoMYoZHOcLadvg6zS+Vw/aIDcUgbB7/pzgkOaJ+QnW1UwGCGr
	 jIdYref5pABixBMb3CZmZ4zh1TdFYNgdnmRXEp9AhDinVfLXpupPqzzWRYF33K4sH1
	 7FuoWEbmThWvD/v8mSUsG9ijnjypuCzKz6TATZUosbeB7ypEWE5AnujCSfhojz0wUF
	 tBfzntBkvhDmtmr6TmJuX2pv3kxAwvK9F1xs8KaUklexg2dCvKz/jDcsRT6jBzPmpR
	 8ZtGfs7huLw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59CC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378439357.31609.14062520055754521471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1abec87caedc4b3ab9a0b6217f73c3518672baf68fad0b1cdfceb413daeb6b9
Date: Tue, 29 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753784393
