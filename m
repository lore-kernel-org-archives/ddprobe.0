Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4442139FCB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786631434; cv=none; b=K5uoLFBJzoTWSH/hVgm8Ocm8lntB88o/WrCUEXqG3GzCrl0tNsrw3uvMcF5M6E6D4vG/TFzUOSgE0COkZ362sU0SefOf/+dtstUlcMoppjFkoZsWA3ZBXw7t9e5BloT/rfNGVsk/Ud6+zXl4oJw8Xu0F8TPfOzGVXc/ok4sHwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786631434; c=relaxed/simple;
	bh=mQSiy7H7MvLIL+56Yy3oxWYfDAx2p913CIxl5nlSAHI=;
	h=To:Subject:From:Message-Id:Date; b=tbcHLCmwQTpzTIgyv4HQF3gCUfgNwWBITxbj2skWIgLodgo3mE23zdPST2mbS5af9SrG7cxZKEKgEKVmEoYis+8vwyqIWv0sNcWgmfdS1hhOW52DdHW+IwjTJ2GsGrBA9uxXsWSNkrzEC1hOz3f+DjFN8cGu67NNgZUyTTCjg3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4W1XNsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4W1XNsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD296C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786631433;
	bh=mQSiy7H7MvLIL+56Yy3oxWYfDAx2p913CIxl5nlSAHI=;
	h=To:Subject:From:Date:From;
	b=X4W1XNsJMbEciek89xVaA7FUhZBFPkVFtzyv/lkDmt/Z63nOyk2n5Ll8+sIT7P8zB
	 Tm8obaRSlZ9bxBMn/h4GSGb1icaW/9GlVxJhx2rgC/x6sj6qMFrGsowFiqdQmx8fjV
	 TS/f9BPJ4z1mXLobA9rAUxZ1K9j6rrsrnp/bit4mL/0ICyI5PfcjsASRnBPwS+eDC3
	 V6Wen0bEAn8N/mWDIZQJFHu1xSxTwh0LxVzv3sjur971SWMmJd0FLxkd0skEXMc/YC
	 cDT0xJXq8xoxNRHDmB7yRaRpW7bG0kYbcHQm0qZjjhVLSA8sEVy1mzmm1RgHN0hxKT
	 qLrUqkdYQt9DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE2C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663143368.30704.14604375703998965934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a0eb1359c153dd667cc2de87547d2a3530d66500c72899291e5e244ae26a4d
Date: Thu, 13 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786631433
