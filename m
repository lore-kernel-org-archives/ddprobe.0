Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577FA3CAE9B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792363234; cv=none; b=sgxT/v2OPUmPY6dcXdDbFJEy+GNsg1f09HCkznniklSEotPLJ/eRM7JpQHP7ROszgdnJy5ukkffe7pnUdH5llFPsHx662ZNiZ8pGf49SQecCMIiGo4uqMorGMwp5FdxPoKmt1zyQoTE7w24/2ibpnvhUMc0AL66IwLWLrKhT5xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792363234; c=relaxed/simple;
	bh=qMpsOnPClyBZ3qw5hCyqbp/Qce46WKtE5IwG7XzNP7M=;
	h=To:Subject:From:Message-Id:Date; b=WftVXKVjdUgkF4Ghd7x0W90GB03TrSxQmBhBNoUr9iskeaGoHC2RGUlilFt1CryGRY1FkQf64AM/qdujL98qAG31QwKDZ72+PKP7r+5FYDPKtBYafrbfkeUZ7BO2DAa+UdVNEAoXrLGRnciR2I+C200N9JlZy1+tZZEdHGaQpZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ4M8BBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ4M8BBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF696C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792363233;
	bh=qMpsOnPClyBZ3qw5hCyqbp/Qce46WKtE5IwG7XzNP7M=;
	h=To:Subject:From:Date:From;
	b=OJ4M8BBuCL3zGMhcmJZ+/lJa6BttI9r4fB3cEIEopFFCCE7O+U1QAjAklhxVwpu2v
	 cAjq+hDTkxdI21LN+X8yHAectKfrmf0R1vy5yleAMrO4EowthJ/sBVlfyPwmyzgOWL
	 OOCAnOerBbH60c9SAVeMdNNNK3lzFy19P9+QCcjLj/gtgn3Q1qLD5L1/Ejrlau2Xpt
	 gNllEXwt+MkdnUbTTF1sKj0OWxWuE5H1WEbK+7TTRZR96Pxs7R1mZjixJ/mQqCF29i
	 1DuCFdDf1JsnPCyVEpM7T2GeabDBGIxbFYRobSrGtf7euC/ZsjG8gPgM6lm2i2kWke
	 1ESkpZwciX8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF1CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236323369.17560.9837049735879754221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1c2fc3031e026c4a8a5bc5c9e07e52c55fdb408ddbbdf6c2efea7c04fe38a2
Date: Sun, 18 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792363233
