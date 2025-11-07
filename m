Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1572604
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520994; cv=none; b=SA5Tu5zFoQosltFgCOaLZYeB8u2FitBA1xg1ZpJEjCHMdMDCzBZHijJsf9MG4rXupUBSAmg1kc936HSn9Rl5Y0lbr+zLvBe0Hqgjyt5H8AXo09emWGj+1JqdrgpmBRfY/octiNAga2OIyvpkf0R4ykmMmLy9dfATSTSS1pdOQsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520994; c=relaxed/simple;
	bh=Szi4XOtgD76gjeke2JHnYNhAE1e+FXkzTWqhBcJUOAE=;
	h=To:Subject:From:Message-Id:Date; b=J4Pi3lnu0LhAMPvgYQuUdA3zop/2dzT4e6KTYl45dmBnMbOvyKDZkfShpgT4S2oaOi43DB/H2ilHSPVesHtyUG4tFC7xv6RTiKUNsQCMmMZ0sGseDnNTzD0JrHqmEPRoiqxLdXo7vmBN4A+Al0iECzjK5oab4C1UT89pLEwwPOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upM/xafK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upM/xafK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B7C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762520993;
	bh=Szi4XOtgD76gjeke2JHnYNhAE1e+FXkzTWqhBcJUOAE=;
	h=To:Subject:From:Date:From;
	b=upM/xafKbB9OoWL2qSjnrFkwgjS7cFkMXUT9MOdnR+9yOzFN/m62MinPHRZRm78fl
	 0ve8VCnsR+KknxUV/XckCErT2kLOoScmoL+YR3WvVziGv8kJzkIAdyNu95/omOr103
	 47nnM29TiWoFrnP5HM1xHWNTWAyMqk8HcgXQgkwclhWbv1Oyoctb/uLaWkBzQC3ati
	 dzeL+aZCFV46DDUDuqCHnG2kMO+qRRw4vw/6pZv9QIIyaCzwfWmz1MMNB8T+EhcDjg
	 cF0vF75BXrCbvJrfykB0tF4hV0yhBUOGw7KfXJxXOLix6VV55IoPn7OWAWqvAF+TM7
	 c06by4m9qSr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91174CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252099358.6689.1242611966389169210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe5b1c80150e799b1c8252a3c7b0ad20b928198899d92bc2543b8a9dc451e0b
Date: Fri, 07 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762520993
