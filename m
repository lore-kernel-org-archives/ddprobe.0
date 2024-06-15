Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E0A8C1F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718422703; cv=none; b=swANC7ZurnP4u9c74voekvrPhDdeLnVAsi5AWwcm7t+RsuXsvTB19OPTNxran276+PO5VqBMa8pOjEVOcF28YL04Qhtmrw64vQoXzXGlxy8mKgWBcVUdFglNIkgZGcmp0z7hIS6fr71zJ5y6xr+61XxC4Z47uh7Wb8l5DxL6u14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718422703; c=relaxed/simple;
	bh=mB4aFoxvz/5Edc9B1x5V7FjVtl5GL1+AzDG/55qGGCM=;
	h=To:Subject:From:Message-Id:Date; b=bsrykS+HL56qmCKypZ9pBf3MXxtgHrwzjRBH/+gMkAWptjMdBS7KcvH5pSB/4eqCcYTd7QCOvBVYgT6k0o7Zgm6dz7Q63JljapxKQmgW71PTPUD2WnMxGS+W1qlqooI8epsy4wS4FiszDu0yU5h64RR8RQ9BJUYKeVgKWiLwafQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVZyWciG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVZyWciG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F7FC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718422702;
	bh=mB4aFoxvz/5Edc9B1x5V7FjVtl5GL1+AzDG/55qGGCM=;
	h=To:Subject:From:Date:From;
	b=sVZyWciGqXCvVQRB61nXGzieOwEtsYHUuG6Rr66cU1Kf4sVY4RxHWc2l5xVlTI9Nc
	 SCbMBoVFx2kFaEf5vR3FLDxsNgrkxHB1gwvuJXOdjYmvTICK5p4TWqU2V6Sn/l8Z+d
	 ZqzNYuF+ViH0pszrxShfSSx0Z1/2teISN3Kv9tRfDZXDw2dg1Dwlqrtj6A6Y8RN/Ho
	 BCsuwEuz/mpeoyhx1B4a+lUbrT4W02VVG86Iq9d/vlYpF0hKySKboFL3Xle/EW2CCH
	 omuy2MQFCaWiaSCWmsPizx6twSrwa5nfPtzMgP6KBxRYaYbJxFL6Rtd9UeT4tf/0w1
	 XNakZ6tT/lZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE200C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 03:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842270282.15996.6146210244146695712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d07b56aab53ef02e885140c10aa513fde9bff7680bac366dff88ca539eefb7
Date: Sat, 15 Jun 2024 03:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718422702
