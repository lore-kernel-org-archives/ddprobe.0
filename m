Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D726285CB4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783617514; cv=none; b=snM57nA7Io6dCwA+/tx91km60EtCAqzPGyEiWG7KiRvIAXzFuwsA8nHDoeaJL6v2vvDlyOFF/DQX300BHTt9QciWBWERATHvIeymN/oTSl+cK6RpaCElqiM5ow6yGJuEj2lt5oE6NAuqsnYuWE/dDKDO/toJGXn6OJtMvVcvikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783617514; c=relaxed/simple;
	bh=+3kkIUubQYYtWJnz2fMG3lLOA1nS4bCQo9bgzZ+IP4w=;
	h=To:Subject:From:Message-Id:Date; b=ZNWy6heBsFWrdTbfmele8cCdwcvKOGhk/jZzabz28UzB3VkEw3sf1cEvYkquyKap/iJDSo57/nRYCzBFiB4Lr3UIXoPvNnJngexPUiyVp3Z0dyfQl36Z+PUYYbPUSz8gKexynv2BQDq8bhyZOMQ6G+haRLWBLBNW10OHRbL35Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3f9EVc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3f9EVc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE52C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783617513;
	bh=+3kkIUubQYYtWJnz2fMG3lLOA1nS4bCQo9bgzZ+IP4w=;
	h=To:Subject:From:Date:From;
	b=X3f9EVc5xNaBDcz7obyzcL9Njqn73330Ec0YfyemwYdbhsEBXyPHsJBBuDNUXpxZc
	 orYm+W6avLaBcufwss3jJqmnUUP6Y8+b9GfPBI3880NPAJYQKoasRLTpQm0Q648Lgh
	 f9E2c46XGg3FJ3s7u5nAZ0RxIeG4sM33cInm6RTwK5YH0+U13cfsCjK3c3kp9vC/1r
	 Jdd2kGqbkqowon6+WMTUdGHJ370HVBKe+LVMCdFjatMMQ1IA4hQFGaL1+/zefaDKXV
	 HBFoUj2gFGAdmpqWbHFHAj2NW9R52eiHwIsWiDGwBYnqmt5Z7YSg8WtPok5HGLAeHL
	 eM30thqiURqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F57C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361751368.23556.12173939522593490407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3737bf90dd8951fc27cbf29437e3ff2b05ce9d60d22db2100c1e9b471de5cd8
Date: Thu, 09 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783617513
