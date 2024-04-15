Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61984639
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713142763; cv=none; b=ZXkjxReipXEq0RLYjz6W93xeUiA3xd5rt877DRekEAwn+y9xvFd0obqYx0oQj107zCwH4KIEpgBrRLevQaRrhUThNiXhVna9BHQG+naV16SL8QlCzsSGsHUI4uaPCHZt4v1G5ehBoUORAxa9PXrIQ/V08vM42q8WfRgC+bIoWXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713142763; c=relaxed/simple;
	bh=uSIja3hWeUwJ+sOMi70hJIAud6gIxFmgVrK1sPnBJvQ=;
	h=To:Subject:From:Message-Id:Date; b=dYo60iJsk37B0r2xww/LBTf2SV2Qd/KU6+jPlcVYwjEn7Z9+zTdGQoAVdWbbJBhJCBRdj8t5GVWa9PUcOz196BzgDfuUfswWo8jsGynyR9KOog26U8BeKUx8v92y12PRDOpKeQPZRq9I3WjihzPPwfk+nuBQpfcSdhbY3PAIyuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nytNxoW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nytNxoW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BA5C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713142762;
	bh=uSIja3hWeUwJ+sOMi70hJIAud6gIxFmgVrK1sPnBJvQ=;
	h=To:Subject:From:Date:From;
	b=nytNxoW5pGNNcQSrSUUSAe8FP5I1gluh37dsfRx1hZv8VHdzAcPR2cJmQdqABN2Z4
	 NCWnLQMx6ArK0sL7Qvu+VRMISfpIWt5Qu9i8x8yfznWm0OUh1baewjPsSk8TL1eizL
	 7K+tZ27FuLKL1Y7C0tst0bgCqiE3uLjP2R05etFF/L76ZL3DxpSRqB5LeuNNWJ6xje
	 /OtsHlTUU+IUdaqYVqiiAKzES40Z/r2jTr17DMvGmthEZ3Q46RBiEVLWEQLYYsHO0g
	 1tqhRYdeofY70wr7YcICIYWLcIXDwYno6ynPw5XwO2ChSJ355w77qoU5ZquwfsEBHz
	 BRXWSL+EC46dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1A6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314276275.19850.1864539944537966724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61db99ff2356f82570e0d6aba9af2bd97d2131e002476f7415b8a56ecd7b3c2
Date: Mon, 15 Apr 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713142762
