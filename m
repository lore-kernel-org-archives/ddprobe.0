Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18C1B85F8
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756999194; cv=none; b=OB4wOIeSdzpRbsriTdfFXCqkFWEI8GJ/Z+4vLApR2XisLriK/r1NdKHRYlQtJajJhJzxoYSWtjUPpK8tcijdO/fE3b3Skf3XWMhjozL4qIlg/GdnppMXRKunltjBWGXnFiV1oWd39rFTVftIiOiGSuknFkmsvriZ9o+/UK7ix1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756999194; c=relaxed/simple;
	bh=OFJTJfN14zbtXSXyhAwJfmyVq5/RkByFRZujPK5vSLc=;
	h=To:Subject:From:Message-Id:Date; b=Fpmy5suu3HM1qpwNLI9fgL+D9tjNJPPY78mkfwl+ZBDZm+xboI/UKNOEG3AW71Nr08QHXh0j0Qkd//w/lPTYmx1fcnU8oLMGHGMhpZo/WfOC36aLG0cJ1Pi7GvoF/YfuLKexqhbg9AhAUDBfGLgtM2vX1F/CFvPMOCIiY1OXdtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAudZ+Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAudZ+Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FABCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756999193;
	bh=OFJTJfN14zbtXSXyhAwJfmyVq5/RkByFRZujPK5vSLc=;
	h=To:Subject:From:Date:From;
	b=OAudZ+KpvyhWOfJwxjGvC95TpmTNMPQwnwjPxZEwIeTZItuhkC905Cbbk2GdAWYdi
	 D6xz6nsIyp9Eu8bNxt0ek/r+A+/363M0AvO5LwBuiwdOrV+zf2YhwFTpM2R7qLjUQQ
	 XXmE7Ps1N6I8BNaKfEJyfa/1owBTI8TjIMmM9ZoTyGXPAv50xTi7UUjt6ZvZ8UUpC1
	 fDFCCrTwyTGLxalKmnXkX4muy2GvUlwWeGXiXrOxOmy/JFz+E5v4wE2mB4M/QT6/T5
	 Z4IgTy8Cp8UN54sWLdF4zGwprzTy4F4qvpa63U8TW5FgzobdZjcQv2HVMfOaZr2fE6
	 cOMBqIH8Wy64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92935CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699919358.27704.11183203944187088534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c033672dabf61af1bfec09975071d2dbb26a9f815aa3982a1e8bce3abd252feb
Date: Thu, 04 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756999193
