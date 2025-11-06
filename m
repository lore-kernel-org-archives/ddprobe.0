Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAB23451C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762447194; cv=none; b=GBQBOZHk2nd28DLbDzQ2MAzZDMmXp32UxjfhuYZFY/m87BqlMZ0Sunt5zrl5EfYzRToW4DgyXsrcLN9mnpcG4pnPsGiPU16kHdTpUudTo+oh1RZektiPz0eGeUIP7qasFLapkr/NjWKIntLemrWbYRdnUmdwti0bZYfuC6UmF9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762447194; c=relaxed/simple;
	bh=iV6zWqxp6MaN3zhx8Rk+f4D4aE1K0knpQsCr9RZXic0=;
	h=To:Subject:From:Message-Id:Date; b=nOdi8CHPjWD1mHrRO1Y0LMrG65KwjEKuFY4GyDKae0RfjN6V+82OI14VS8vU/2+EU4YNriu0Tvoo6KOt+y4vJZuxqw6IPAQWIMiJbNIMdRELMMy32xoKYZuH5Pk9tP7hVg/Y4zftVPqNTpDFQ7nQgYP6nxJ4n2lE7XUS7mQS6bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYoHc9fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYoHc9fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762447193;
	bh=iV6zWqxp6MaN3zhx8Rk+f4D4aE1K0knpQsCr9RZXic0=;
	h=To:Subject:From:Date:From;
	b=EYoHc9fktWcU03jJ60r4Ssa6MUr+dJT7CtjALqsshfYh9XmShZH3813mXzi2lqzQf
	 0uQAN76V2C/KQFRU71cBskSEzsHyQZgjIbI6neXlVi1jcUTBk51f2sXXEG121C1k9u
	 OKkLjzk87UeVZCSAUZOrUgUVhXQXr9B6OOyIoZBR/Q9rHQfkx5x78s5mXeLcn71lX/
	 VzZ5aCzxSjrgVHQ5ECMBwhi6W9FRkK8Arhm2O1tlR7cLaSar8amlun3Pydr5ut1nBx
	 cWTUgRRQsvnFTVsFselAP/JqZ4xyUsbdLasXMwTVVL1FP9ZwABw0ss8uaX/GvDbX42
	 6iOM1ctZyWl+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92821CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244719359.8031.5080560592805466345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65feb471fd83d9e806fbdc187e5ef20f8d08f97dc2e9e15a576ccf556a44063
Date: Thu, 06 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762447193
