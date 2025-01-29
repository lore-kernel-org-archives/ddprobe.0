Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3CB17B418
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738128954; cv=none; b=HRAq3jdKsOmWfq9Fz7yhQj2TZgQVeQepqtg6uxyqFu+Ize3RYAwSJDxIcImN+A/Z32xu3LVQH1WGCACZaCq83w1YsxEyvIVNWsZdtoRVw2lF1BzxaUGPyKzEK5jOctF4xp/tMtmme/KuQ8vX0HULBCyhgeDPI4pcPk+ssn+u4dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738128954; c=relaxed/simple;
	bh=L2UUeKyY1+rV47UiYxrCWOJ/S/xMz11w8kdsBgjnEqk=;
	h=To:Subject:From:Message-Id:Date; b=OKayyljsmtB7j4XHg33wfirrp6xaRoaYAp0w56DBE51u+RbE9peBOat7EBUA8BIcN78KN3Bgjhfvt4s4q3/gqOJIYCYAQ5u+T5AOkW3/56cUXn9ZLAsBX4NvqoySVoc2M4J1tT/85pW4OsM4zJyE9MwVLrxJs6qYlSUgkiaHex8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGSWR1ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGSWR1ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13EFC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738128953;
	bh=L2UUeKyY1+rV47UiYxrCWOJ/S/xMz11w8kdsBgjnEqk=;
	h=To:Subject:From:Date:From;
	b=mGSWR1wsrKGvHVMyl9ulF8AAdNFAHXchuO7g5+4ocrU49nc7suZ3Cz7gSuCOLQhVp
	 R3iue66KBoONhJx3DWkbFvwCuyk0g8+B9L61nc7fiutWySxSAkQ1IMpodbWAuSi2RZ
	 mdKB9e2ecrmg8Vaq52tNFscY7JOhI4scGetZKV8MpK2jhPsGjeV6iHE29ZTHDQom7F
	 Wdsy/UzR9de6jMQRK0TJLzWKmvd4ZmFmu1AVhCqTzCXZdd526V7G0SzHoVV8TdTWRl
	 vPY2dhTAxbvsMaTM+X2eAdeejGTL+r9t9fKdO6dcu/JwxXNzsuHc1I89wqZJRu0ddn
	 kMCiIh5nwM3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BFC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173812895368.17602.4605509157110110151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ad0617d3515ceafaefcf8a4b26b8ba3baa2c7750ffe9fddab34764edd36e27
Date: Wed, 29 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738128953
