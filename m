Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432EEAF9
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753493994; cv=none; b=uQRgPXgFZ4WjgXgFxA3cvFKPZ7o8JkkHU7dDvMsjQlxD/5N70pqFuyh1wvS7OMp55evFRzKD879qK+5YliMj5DheaZvT47R/BQ3ERTCIRq3Wm04sOk3UkeEuYqeW4Oit6n34aBZBM1ysHqhOLG6cbPDaMZPefG9hLxntkkzbslU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753493994; c=relaxed/simple;
	bh=mwTD7N+k7MMN2Bc6rDhXYUw99d0sXqB2+gQqQpvikcg=;
	h=To:Subject:From:Message-Id:Date; b=iDjuWoeoHHF0vEgd6k6Qx9cH1YCBeKzL+23FHo2tBBMCkMEmrrL+xVBVy/8Tm1EIrAS250kyJZjXEHiC5RsLhiHT7+dv0zmZXtQR52shBfjyLxJQv4zQPaW9+dW5uW+2Bzk2rJM2XaKqnNQdrQ3xk4vFCFpANS73X3lUC+dODkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPJJyoSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPJJyoSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4422C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753493993;
	bh=mwTD7N+k7MMN2Bc6rDhXYUw99d0sXqB2+gQqQpvikcg=;
	h=To:Subject:From:Date:From;
	b=HPJJyoSwYdRlrU3WRq6uocuC58G0sbypIZ6IVdNcFz4m+pFvqmcL+xHG8r1AkNwdB
	 Mc5hFajUW0X3vOF1JqWtuhJOUlPnE0r0/ap+Ky6oMusZT66a614u/chtZA1hcjqDts
	 k9Hulcx6Zs5wvUkCDGkfEk0AIYYb1mBl4jx1HWhbRwsZU2GkDEBfhuWhC7JMMNuVKJ
	 Sr6IfUZc9TpKJ1I+bpHX1IodmxaAdQ5bArWKUgpBXw9y2fX5cGDUPeKutrRv510m7Z
	 YBEnujDOMpS8KiatBI/Y3UM+0gWzw5jLne/j7UvxjcUNBoSafgbZhIABuI5ai6JePk
	 ANPCKLjeOmkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C7C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349399357.8459.17684210420614964888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9d01ab7128939af5f6ae9f21d97407c9acf62a0a97dd348e5aaf2129de2213
Date: Sat, 26 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753493993
