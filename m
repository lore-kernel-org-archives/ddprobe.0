Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBF8F9F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718042903; cv=none; b=QsLY8lcUd9hiy0QGAtp8vkACo8Ocrtb/h2L+MVXiQ0AD69C9np7bb/RXh4HyptaE0fRjRhz009rnZeMoQ5YOjp06sLAJlinknQWteaX/TuoAaPPS0I+8rwiTKsCW9L9H9tx2WegynaO6knNfDAJOKjwoMCF3L7bGKr/ECQwWPzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718042903; c=relaxed/simple;
	bh=hoWMB0OU1CeSgwtTP3mq59siyTCsBuEXDmpiBeInAYA=;
	h=To:Subject:From:Message-Id:Date; b=Tbt5CBf0qtrlD1RpPo8nUdk0byu8YuTZNHOrEQ6z5slELO+GAuUHXisf5/Dc6fxqHNwT70LBMlgjrVZsuwU03uFq3ap92B0bIU+FhQYX2dgq/1tpoDIY2yclqQe6o+Hv0sjqqhRmsU1p4g8KSFijNqrgznMX7NFcca4VWizWjKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3M0tj8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3M0tj8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBDA6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718042903;
	bh=hoWMB0OU1CeSgwtTP3mq59siyTCsBuEXDmpiBeInAYA=;
	h=To:Subject:From:Date:From;
	b=n3M0tj8RLq4NKjQYs44W7x7BDjJDBjAngYb+n/tXCXEiAMEagUzum+NXFVRg6qTRz
	 UZe5p0vCvH/DakBL3PeMYw+Mkxq1LvIoRBTVA967SjpGEn6FUIPLT/7rY8f/GzcI1w
	 NuYibHzulMlhXmjZG1k8/1UTNqV5vffvwcNvZ5+NWUAIg/wHO6BS2vYPaXqnfbCVfb
	 9CVPhLHYf2YI4sZCRL63NI8WhtJlys+ivA1NY4kY3kopl/wOEEGNe6knuzLl4oxlc/
	 qrJtvVNwDb6Sy14mW2aOXkXSgSrAnzD5bLLpXZdYYb2P/lLku8d78FNildfihPXyRK
	 1zIKVSet9cShg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8AABC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804290283.603.3788924375251372621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b32455a76e9fc27c197a92b1508d9508dd2d4339dfbc472de35ba26e7fa782
Date: Mon, 10 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718042902
