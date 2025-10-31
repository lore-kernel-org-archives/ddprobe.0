Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D4C78F5D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761896394; cv=none; b=QynUN6jFEU7Shnbhcyv1TN1W/s+HETgdyXFSFw+g9ysjmDvIWpjPUB/nnXROYxcdTyztqJwQxnzOSaWk3u/pchmhhng5SferyazDA9xIpoRF5yq+jXd6eM4/7n2o1ZNUUCtydxQVDxlbLRBKap2CUF1tVzCSbLsbykc3Wz2KZY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761896394; c=relaxed/simple;
	bh=FSbrrkdwomvZtdjgN9FbD3iXzbC70L/2oaL2mYZhBEI=;
	h=To:Subject:From:Message-Id:Date; b=WuhQRsJgniDZsU9xn3RXan4wPIENihLDCgFMx9aBKdkYhobKe8vYBBoSc0EFM7dBBHTkkttd+fDMsTaHwuafJIPo2Ttu5+D1hMoay192Nc1KvTP8bCt4wrxrSLHeW8RNviTtRamqeUfNI7MiXbIzoxRlgOHuW6gWZHMeElJi3Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1UKqc1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1UKqc1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA83BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761896393;
	bh=FSbrrkdwomvZtdjgN9FbD3iXzbC70L/2oaL2mYZhBEI=;
	h=To:Subject:From:Date:From;
	b=O1UKqc1nZpy7wl51MnLTPmFRfNLhP+Kq8cj+0WqozIqYfogDfNuCRr1N9Cdm1XZYe
	 VzqiL9RW+2o5o8Qg31MU7PWdJ33NjGd8lps8bUpmg7Von9kdj0bAsX1MnAF/EVK9y+
	 mgBOuRVUhcKc/cSxLY3dZ+yeEVbZhsXhn9fgMUmSdDd2GjKHXQpZUXTVVgPVjazaTJ
	 cNj8cVKL8dIFUszrWMTxkRApOdD6t1vktRpWGlAIY/bu3ciR7AfA9WcqeSdmB8Eacx
	 DJR7xgMDKnyYabHZZFTVmfQZmshAxVcnE7kxVwE5i0iLFC1jk4i4JgDvAxx69ubwLO
	 ulFBmx/cuGR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B91BCCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189639362.22960.18297302381849247823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2ecf4f3b16e98324f8ae9e5615e346b3d830313a9d45478da71bb523e9d9a6
Date: Fri, 31 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761896393
