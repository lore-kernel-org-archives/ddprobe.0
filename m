Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32921DDC5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765257774; cv=none; b=WGfQRg35r+e1z5xtd6W7rz4d6UnesFHE3q1AJ1wwZ7Nao0imoNlFnJaFi2H++lvx9gw9H3zys3LARrZXpFN894dK57JRzQbPvNcWrptLQNpwBgEJ1LqbI427+36rx21KwtPT0ptdXw+Lsmny9VDHLOHCmoFTc2THUPSZs34xdDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765257774; c=relaxed/simple;
	bh=bkG3lhRrw4mPCYjB/jRSDgBYc6+DlGMjJs5J4BCS0S0=;
	h=To:Subject:From:Message-Id:Date; b=BtK3OK55gxrvkONP+K3H6SFGsNetG7pCJea0l5k3gmlreJTgWiUgALucgOYmWHNskIrlNfFR4DUpFRVl9uI347JilQpuudMoIVpNXCinFYTkLA0ezdJiNINlN9gMBm0iQCCvUdjpKa1/ZuCG9/0Ox9usBhiw0VbaUHfjNaSe+I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/kSxhuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/kSxhuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA24AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765257773;
	bh=bkG3lhRrw4mPCYjB/jRSDgBYc6+DlGMjJs5J4BCS0S0=;
	h=To:Subject:From:Date:From;
	b=R/kSxhuCHiY8QkIWSxeuIHMOYHZ+BFMQk1kpQuLt/lf7fFUOVJAADaAO+S4QrII1Q
	 RhabWCn+c4QMHjkyrL1y00ZGeC/h1qJ0OVGMkQ50hv0e/xkT/DegBnOHTuqzqYazTD
	 6BOwYymkv4P9w98lrsPi5L0qVA+3T3ZrzV34T4evFtGbvldggJMHLpArpvcBOJ78QA
	 XBEyZYJnatiZB4OYYOm1ZIQruyHlcELEqAuWDnipnafTJphMvn+LlOWAhL5oH+qKSW
	 1g4TJvw57xUfKLTatqM/tLLMHIpJynXgx03ra3evUe7AtEC9z5QAoK8QdNFrfRRkuP
	 1PPVBccxF2pcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525777358.16718.16774257382177904947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f7aa7b3e1f5a7c8abd5f68fea25c9a0e6f0bbfa670c00e45ca7960d9ee3ff
Date: Tue, 09 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765257773
