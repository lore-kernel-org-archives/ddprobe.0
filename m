Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FB478C91
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742811594; cv=none; b=D7CvVU83cH2YNcRDkosoAqGXXqYrbX0bzimJc4gsvGr0cLgf1AOBzLocNbEoGuO2Saef7Im381WD8yT9x/C4eIWBUh2Kx8KIIFK1PXtUl8Z2DrcE2gtkDTSgho0l6WGkXn6LFQFy1MOi2o3TgbVYUGhgDTgHAuA7oXi7PVySEI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742811594; c=relaxed/simple;
	bh=RsM7zN9uRUhPTrqZIq7UW3w8QKRFF71FySdzaWocz2g=;
	h=To:Subject:From:Message-Id:Date; b=fIQf/fAObXf+ycCtkSILESy4fK0eMZk56W1IFEYoG0vIGZH69epiG3s68ely0phuyvD3CvRf/RBCb0W6wE0y6XffVZ4R6k/PW4/5ADDY1MmDCXEvzKF1kOSgX8oQVfCOOlVjzf21MEuBoRKD3cO4voe3ocQyb5KkNYZHeUmdAhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHoH2orh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHoH2orh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95CAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742811593;
	bh=RsM7zN9uRUhPTrqZIq7UW3w8QKRFF71FySdzaWocz2g=;
	h=To:Subject:From:Date:From;
	b=CHoH2orhXDWZW5h2GrJZS+5OkOa8djOyjlWnrw07fJsUdc9D1WO6iXzs45xHjeYw3
	 1BjvCDj53wRMnzv3FDdtmgfWdtyNkve2wolJ5Z7GB26FeanzqjQO+Fg6DsqiVECn2K
	 N9rUn4Np2g/EQHhraar6SLW7DFs2pXzOPlhSIR/6O8pwmzlmqfK1SH5oB3srZFYqyO
	 HxD7KnK6tams1u5zG+Hx7t/ESg9lKj/Kcny/Ciu67aDSPQAO07hJp4L2nqWQZGAsuE
	 ZP35c3LR633uyZghZyyNOSJAvjvnPBuJkV445mMscgtAWpy016IXxPS/P3TtH3g3i7
	 f2EAVZGgc8Vgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56EC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281159369.22204.16177743886426432832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5045d6b5ec4c48566987901a07a5e6ae2ea6d652c0ea2e7b5b4a7109fbbab6
Date: Mon, 24 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742811593
