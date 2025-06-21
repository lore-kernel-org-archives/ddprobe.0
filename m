Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438091898E9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750495194; cv=none; b=s7NZg2AfaO0zAFAFnZ+JacVS+Y1SUmgUl0y/78e/eWjroVHp8WHplh0EhKrcX7NdWIRGxL1vQTCrr2/0defk0u7NQahR/clYmftZrsaX2inUj6Hi4a4sOKFllIL0Oy4FG6iM/lyifzWQz9KJMOkpZvDn6CDNSaXk2CatX5ZrYLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750495194; c=relaxed/simple;
	bh=75sGaFS9ZJ5yUV1+jFeTnPLqV8EEiHicS2JfFfvWv8k=;
	h=To:Subject:From:Message-Id:Date; b=bmIVlaY5PtliwZ13JPZjSnUFtvrAO30Jjsr0WNSvUT4AVC/5PA4RvVfD8U90tTrusNwvyRpNq1PlOkVxWddANmo6pEMwjVPanw6qImbEZ0na6o9iWhQ0ihEhilWYBbFEKMEIj0vezKEqmS6qdmokSjFTtsoaQGVd7P80EtPdYUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6E/XDaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6E/XDaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750495193;
	bh=75sGaFS9ZJ5yUV1+jFeTnPLqV8EEiHicS2JfFfvWv8k=;
	h=To:Subject:From:Date:From;
	b=X6E/XDaBEpnf6VvDI0O/g2ObxieuqAWlm0Ci1zAab0bJtOtr1J51fVxZBkLdUGgVa
	 MEQq4aBqwFYikJIlYNK0wG20Tvo3GpKKAYrN3c60jOCVwK7ARdzVoQcJqmSRa3C7r2
	 Y/1PhWATJos4W+ZfdKTgSLMgYzuRIQPPx+Og5o1BJOJpTA4sbAQSocajpaXhvknC5b
	 g8DfG9+0j+0ZqqHQ7gNnfxyTmaXX0KmXtvjrcmfowJVTfT2ewdPeNNiyi9TVtj3XqX
	 TrB9VK+FOVD2GsYjF9tkyw2uP559Bjsz/InO9QJ02UkCHYtHDTj18zW+O5dWwbEu/q
	 FcTJu47f5l0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234FC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049519357.7077.6382011947136627251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273ad8d1cbeb292a3f057916491676de75609c8a8a2ff4b1db49d7b9a069e84f
Date: Sat, 21 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750495193
