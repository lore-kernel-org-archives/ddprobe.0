Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2060D155333
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761830394; cv=none; b=S8hpI0u5PqcuZ5Um/WFOEtDtM0WS1Yqq90EmwG7uhNnzUH+c/NVa5HgOTpoDjwcneqpDAOosyCN0CoV56Lz0VNE6XoZTlUFxQK8cSccqHJqwFTjjRrp8SFwiyewe/TtvQIMXKYai/0yEcDkfpzY7gbDdECAUwAb88GGdId0vY3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761830394; c=relaxed/simple;
	bh=1OXj9ewOEiGetP3nWlDdHgxB94o1Qk22sDwdYkdf4iU=;
	h=To:Subject:From:Message-Id:Date; b=ijxI+Do1j/P2XD7sargdaiz6o5qoFogxkX/Bhg33aGpjL/Va36ySU1IM48yQPSGYcOefZ7sxDKV2DFRY7FmDHZr5YsUhyj9J9SF0VcfttVdzJ872j7TeTbRkQYJR2W/pX/wNwH0XUGZimjqzV4b7lqRKhjZSuUeXa3HD3MWkfK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMqCDwyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMqCDwyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A690CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761830393;
	bh=1OXj9ewOEiGetP3nWlDdHgxB94o1Qk22sDwdYkdf4iU=;
	h=To:Subject:From:Date:From;
	b=QMqCDwyRj2Qn4rAzvtLZh7BxDGzKIOjwgfKH6h/ar4JRCsKVdPFnnprfHJN8ejGZ3
	 s5ORojPRdiZd35Q2Rgt/bScgxsxBNlwRcmJzo098zzNtCIKrLngOQzKj9s98rFcAqw
	 yvsnfR9Nz9hXnt/GyneI+/TU82ppZfAJc1dC6q3ntss1JbSztLW6bjOZcH8hJp1M7H
	 LBRsU9urawda+PivxKmHUp+DJQj8a1vs2N1fgvhN77hjeq7GKknIrNNRRJSLHti/y9
	 IXOMHN1BKyjo7gJjqkEBCvbL6g9J0IyGK4HFo+6I5hqfPDbaztqvScXbdHiZ/wA4Qt
	 1pqQl3vuBmAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8CCCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183039360.26890.7607776519439992843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f439c7280f521fc3360906ee6e15b04e9a7a9db23a9d5ba1fac6ade0ba119c45
Date: Thu, 30 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761830393
