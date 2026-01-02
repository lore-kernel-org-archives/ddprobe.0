Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8323FF1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767322434; cv=none; b=dOlWKTNqo0pa7V18SS0oJWX2gK7yHR8Rvs63NQ3v4yWfX7hj0JRfx/TH6oGavB4/QYaiOb2E7uF7+vrfX/VD1ORNWMVTD143Wsm882FNMKzrXKJPPiaq0SvXmqCWjfgqXDoNH7lQfON7cap0zwzhNFmL63Y40AI8Ut/HAC5jQ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767322434; c=relaxed/simple;
	bh=l9Vueh3LolzDLFpQWTVsxFryRmfzaZwjXxha1SjhzIM=;
	h=To:Subject:From:Message-Id:Date; b=HrZUfFSy/oi6PZQs/J3XG7VwHkQe3juphrW5pzsNeRvtgE5RU3WfgX12cfmChEL6OFnQx7lC7veGeZFnhJdAgIuWPxR8RwNF5vLkeAt1+h4i3xZ8AMdUw9RPhbySu4H/kNF2HsoRFw+JVpzGBCVsxblsP7hAQGOGFXKpnjfZvTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMf0PVRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMf0PVRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30BCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767322433;
	bh=l9Vueh3LolzDLFpQWTVsxFryRmfzaZwjXxha1SjhzIM=;
	h=To:Subject:From:Date:From;
	b=UMf0PVRr2V/8GJpp0KZtFdyCmW/Hz8JMHz9wABdj4+3mUJkpgPyG2H2wfR/nJKe9p
	 ZfASZLYWsZH0CflxjmPB0zXTKgwLCR1qX2R4DqSFbQNFLc1REMxvnVADVpC2yDyPsK
	 w42M+dA6QQOvL6+RIbEZ6STlHemiTZYznCvHlL60BC+WOy+quGl60Iw5CupGTT7Z/u
	 4f0SU3C3/2c5YXRmKg6lIbpCNJVLWTU4YsxpO4OwxLTfhI03XUe4KIJHvvhidyUrKu
	 XiQx1DEKLoNA6uu5KEmS3LSAFEPlMNzcOleiMbpV1KUpJzOTuzwXs0ZvAQmM71bfAA
	 ddAur+aS4iFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FDAFA3725
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732243362.26249.10145206244806983640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a614f4f372932b0c650a515e2b7f05aae6265494ae3c387a857538472c6f5cab
Date: Fri, 02 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767322433
