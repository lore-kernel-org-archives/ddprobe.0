Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4974C1DC98B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742897395; cv=none; b=k0oWh4RcQAXNHKZ7/MIw3iANreYBF2KiHCkVQ32sr6FgO3NBBoWU7OejdJ1NYQmQEivwOaFsWryQW8WOpJvoL0lZZyQ2FwIyQj+zMqF4Iw9dQBvwMfctHc4UOq1xwZF+1e8Y0gE9ivtDqlHy3NgGdEjjRgpFEHIMRvzOcViix8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742897395; c=relaxed/simple;
	bh=Mp9lVd1UdGk8GO0xE1fSfIUhA1VWcBUDiTY3Zjx4mSs=;
	h=To:Subject:From:Message-Id:Date; b=cKe0fyQThQoyJy7V7jjQogWb13vIdG7ozE3K42eFC2+A8df0FFjGY4tMDGWWIYDoSBbcH39d4GWjGSumJ/UKC6ktUzTxKYd6V/dv6U+3xFJeTFVrvrjVrPyqULNW7adaHYeVhhbs6G86BOaKMGrNzukKlmCWcr7+7nxIvoDki5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MECjVX5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MECjVX5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0634C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742897393;
	bh=Mp9lVd1UdGk8GO0xE1fSfIUhA1VWcBUDiTY3Zjx4mSs=;
	h=To:Subject:From:Date:From;
	b=MECjVX5sQFXXdwg0/hl2fp9cc/NAiZ20wAd1Lyyug3iawxF3FU41Db1TXjExYoUnW
	 ltRoCSuwNBUwBg7zWZw4+rU77v5hqfQXZ2vWT35P2WUXiUBr/ruhz133rTn7Ap8GyT
	 8csZQ+NVQolB3YixbvWeHyLesoPt7AxUYHfA88612/PGi7iFY4N3TNEdO6bxj0o1h3
	 plJEoZRT0Mfa9k9qhRuneMlwIae6wzi4FQObHEEBVLv8HbguDcDB3t/Us1zSTH1ZB8
	 ZRkAe80xFmt4UlG41V1OVIFgvIAuaeZ5S0hTxZAGfcXmGUUnidxLcZZC/3g+mbAhTn
	 zsNitWQkAsTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD94C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289739362.14449.12668331047913831898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8fdc139b94b27d6d31b46794072b1303ff73fff519702df4ef5630f51a785b
Date: Tue, 25 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742897393
