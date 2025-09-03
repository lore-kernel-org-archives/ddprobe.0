Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130141DDC3F
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756862994; cv=none; b=WTctAAlX8f1UXQVifDPo2sA5tVXS8ErNiK+eY7pkjkxSPO0f1W1w0CkHPthPjsNWnwVmZbipYuP5i9BQ0uloWQdA/PaXbYXDtRd3RwoBKEcQE97aqSEgzgzb8UInf4Brx8AzHBa2PTZEtCc0r4k7zvkOBMa72RU99bSo0rvPM9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756862994; c=relaxed/simple;
	bh=IKwVBqS8QKCB3NjqER3S/KQ+OzGBr+wMuVxKtCmnzoA=;
	h=To:Subject:From:Message-Id:Date; b=j/NWFd2/0Dives1kMPdI7RS/EMyWFJLi/MKmVqBU3NC+NSknONTlKOXDS0E7bTrdTD14wH0O2ojcs0oQPSfiyF4U1slA3DNUoT8r6RcZGUNXaVvZ79zN9pf2MFlrELC76hQX2TxW5drBv1E7P/QPq8xEmzQQu41JqB87TwHnfp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgQdBJcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgQdBJcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3012C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756862993;
	bh=IKwVBqS8QKCB3NjqER3S/KQ+OzGBr+wMuVxKtCmnzoA=;
	h=To:Subject:From:Date:From;
	b=kgQdBJcsHL+Tj1GT7XMUB7doqowCaJF71oM/C6hYk0eAvVgZyzCdN0O9yBnQFjqdm
	 +uUvawl45bSGQbxE2L3eB+ETJe3vKAYCLqzC5uDELWyYGfXbkN8YDlvSle8ZDV5aWz
	 rgVmVsmeqkvFT+kTAxBZRx6IiFSf5bgcA/rCWnm0+NEM+lHp31hX7UjLU2KkEYBx/z
	 rz5a8emJ/YNhAY0gsmCF7hCy52Obie34kuPqeTv7RjPu0vEj/TfEi4d+zNF836SFdA
	 LZ6c53vnYy9v3vS42PVTJOasGanz1KLtOF5xB3qSSOGvJPHMw4LDZnMEgky6eCxNMD
	 quRxjtByW4q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095BCA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686299358.7976.17642765341860172508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4275346da11355c7d6372dcdd64fd9890e51ca19dc8900bd5555f2e3de29e0b7
Date: Wed, 03 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756862993
