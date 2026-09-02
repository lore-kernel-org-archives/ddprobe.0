Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C973331EAE
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788355834; cv=none; b=ciwalYW6nZbZdTVGGNPJkYc0dPX9FNZNTK8G0602AZWQBnnN/4yIr4DF8IlJXbaDCRxUm8/Dp3mXCdUhsDJ3U72aFWr0Xok1K9xmv1oNo3MeO2g5+UBlxKUpiRAdiVEcMfYHKb++e9VX85GVoFJQdfDLMqr3DU/NqwZoqUA2tdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788355834; c=relaxed/simple;
	bh=D9tf18XSaPe1X1a377LL/X12PPizuu9RnBGgW8c8+cI=;
	h=To:Subject:From:Message-Id:Date; b=MK7GEcYt4g+fBFaSx2/d9cy8LhsromCSSExMFe4aq9AH9ElCl3KSD916bhkqcbSK328pQNFnZWuOXtU3wRRe08rnUMGcHnAUCOWzS21nBKuD9FCVHy/QcsEsVXER6/+vpZ9ohDQtFSxL9zsFkO66JD0i5TVh3ypbO1EudYj+jYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clo/GnTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clo/GnTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D115BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788355833;
	bh=D9tf18XSaPe1X1a377LL/X12PPizuu9RnBGgW8c8+cI=;
	h=To:Subject:From:Date:From;
	b=clo/GnTtQD/PRhnZv83u4dF8rK0N62GGDh6M0urvoPSaP8NxoI3+8U7iQA7aL3UJE
	 beJCIueOQ+NVGVL7jz8GH+y8wxpP7n40/ItyY7P9QI21nsJ8I+YefzrBq+ZtUSYsPO
	 1CdeJAwG2qGOQDeBrvDefWuhc8Z7WAKUjmb29zQylrnFp3r30hm9NbsYF5HtZgdaVN
	 bV2wIcVCtgvTXwQL4jiFtsXjGGkQno2KU47jTVXqkkCfmNY/UCU6QdCxjudbNhe/4g
	 2MeW4GkGaYuIZauearHpH9KshD0uxuihPm2r2kXnVyzU2UJggy4kbhhyluqUqlt6lE
	 KT2OYTf1n8Okw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5B2C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835583369.27372.15148258954526744134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d053f49e20fc0002dcdf583b0d00537dd4cb9d9439bc7780f140b900d63944e
Date: Wed, 02 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788355833
