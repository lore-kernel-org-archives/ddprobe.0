Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C247F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720968623; cv=none; b=FzTp7i2j2hh56cIlNnQqoX2YrH6dkZFPGViaMp6NhGw0p+sOmlxJJ9QwW6zqpViijMhLiOqKhM4hp30ujUW/Jiwv8Yz+GtH4tOxpWpyTCrQJp3ok8Tyb4r8OaGbBG7wmblFE1L2ZDcjhKp/SDcI7ERGoYyb0aigpKkCNuOy6oOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720968623; c=relaxed/simple;
	bh=ogqfkQFJvB7DbP5bXqqS3RUuo9dkUcLzXOmx1KxQOD0=;
	h=To:Subject:From:Message-Id:Date; b=Y3Ci/pmeoAUvyuU/aJ+X3p2nkjW3CA9NzhflI2gicNeiHZZOhp7nFvFrU1K0ZlduSdU/AfZD6+ezqdUbs9/wfBZlL9hB7PF+ga9KxR5e4URb2CYSmyfQhp2HcLDz3fXWO3wRhqICjBBuWVAoK1sr0lgELlxgLfNoOxbtefya8ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP4VvHGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP4VvHGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3654C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720968622;
	bh=ogqfkQFJvB7DbP5bXqqS3RUuo9dkUcLzXOmx1KxQOD0=;
	h=To:Subject:From:Date:From;
	b=UP4VvHGk6klJlT2TozHs/WBbfdCVFwLIyBPARzdlhYmMdGk2mSm36iUNbIDf6pkNw
	 hByt56KSWP3Fh4Gqm7UdC76jIOQ6LoiqCqqaLm75VmhNCROoMnTgUTpx5UNnesZzCQ
	 TOggHQ7G6j8XDd8fyTL3tDQU+VPuPZj+IUcJExmgB99mItr8u66iaSrN4sgIywGnyb
	 JxpzMBEwsccmJgZJiv6MO9PT4chBIxq1HdAF0FIPrMMGwMU7rsSRMoVD93GD72vqq2
	 BjtcFOO2WBKaO8h2J/Mo7spVaMa7aE4wq5jlU8yCqk1HlnAuVvNuQi5M91Wxtsf4B5
	 +cmnVkfxSq9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD59FC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096862280.8488.11671401052527857689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acd365ddde2278c38a70f7798129b2c46d4cce8af383e34f472e353643e289d
Date: Sun, 14 Jul 2024 14:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720968622
