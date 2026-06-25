Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5525D26CE1E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782356854; cv=none; b=Iby6Uz+CGMbFfR+ZRBvBvZrHftyKWihnL0whcTZ8KAhmR9M1JHCg53ugmA2h6eZv3ukK8w7v2WMRaRYp1wU963/SP2EeEQMLoN/uqGgKWlCdfFKMJcSyxFSzG8weZ2U6hU9w6UUKo7LaXd/6GseHc3G/6utFSoFqq+a3gZwTxPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782356854; c=relaxed/simple;
	bh=G3qHZzP/QuTDYlYcW+Bsbpx7xkUzsULOzvgjklJxBfE=;
	h=To:Subject:From:Message-Id:Date; b=Hd6f+J8N1fpayZZnIdC1ZciWoeGgR2m2j6MoAS3BF95KLpG5gPdBxIcq54sxV50w1HMJf0rSw6iSMM2qaNsxH0ui3/e7A9eoO05z2n4ls5l/SfvMzporQTiSR2omQjY16kZXgxggtFEQLCA9BRykWc2cBpUAqi2kx3gM8tNzNgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cihSH8vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cihSH8vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4846C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782356853;
	bh=G3qHZzP/QuTDYlYcW+Bsbpx7xkUzsULOzvgjklJxBfE=;
	h=To:Subject:From:Date:From;
	b=cihSH8vG1Mskoj3tMFQfKtgPOkXjv71q/cVH3FGFuEPiACfrkbYOUNSCHqJ1R+Dgt
	 CgxtT6A9HtZyO6xXNoJySk74nPn0KoATXNS+ozZOo0xuTvvftvuLbgdtPPk7Ohabuw
	 D/HpGUNdOVJN9+MG1IiAJ15d5S0ofnPt45READxJsar4BzEufWlKhAnVed90AZMy3N
	 OWVXSZnIp9UWvDiz11sBY0ZI5fmV8cFFdhh2U46HLDWj02yxgtXv2GOAtR0Yo2Hvg9
	 8uQW30uIpzlFUjQY0EG3ZIBRTcgu1EUsgkGibUUs22GoaPqr4D8pojnL6AVM/eY+0p
	 t+4MEg1w2cYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23C7CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235685369.3536.8502380554463748841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949234bc2b69f1f120d910844722653d7f28d529c0178364886b8d0eabcaf175
Date: Thu, 25 Jun 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782356853
