Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D13A2FB622
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808036; cv=none; b=uWbHniwFD5hEBWXnl+ArETav1P2RXK4NsyDMvDMdier0J/9KhVm5Adz1lrrQb5nlWwRkY1X2Gm6kCajAM3cnBPbfLlllD3Mlb8PrYlOBbk3a20+EtJ3eKJqsKKBCdPUltJeNr2cHdSOK9SwHjoUIansu0C45ySqj9H3jHGbgdlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808036; c=relaxed/simple;
	bh=uZSzyl+aFDYV6t3qeaR6/MePJ7nBbFHbGAjss3sqcdY=;
	h=To:Subject:From:Message-Id:Date; b=kgTGo6HOLWr4BipN+0LukDkx3G6JY4QCuZ/eYT4C/Cq7u+pXD8l9U2hrD7tBl9x/SB6JgixeTzK40uFs0UOtOJmTdhOCEIAQDTpqc+1KJXNzGUeMCOF7l8z0ooIftz7U5lMd7v+eBvq2DmCPfEkez85W71ETLyAJOTI+biOGSWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvm8Kko1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvm8Kko1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6849C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768808033;
	bh=uZSzyl+aFDYV6t3qeaR6/MePJ7nBbFHbGAjss3sqcdY=;
	h=To:Subject:From:Date:From;
	b=Qvm8Kko1g/Hvg8hbBWpLCD86dp09URmPOAqgH596ekDuJDhZNQaPNSLLHCiB51LER
	 jdUQ0f0FlB/yQOZ2FLf66BILZ/6BjNe+efSPJnCcVRjahZqlCZJhWySgS46aCpWEwn
	 K2IX4PoZcZAY4vvkvo3gQTJRMnK2bNteVkmbinVWJp6+yDhTWvWRLv1t2jCsVZbKRV
	 lH4hvRT8O95p6D4OnW3vBHc6dbZOJwcwA0QBXXkLv4zjWejGTF4/KZhmmasrrazn8F
	 5MvsvlsltfPrHGH7L2XHyhSc1HK5Gq9nvrwLi5rHtHdiHHvDKea/tuRD1m/0+j2Hr9
	 aE6OX71VWGXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93590CA5FE4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880803359.13605.9466545198134240047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f684c6b8e717fdca317d89a086db9beb5f5ecb45ab401ce285c1583f085e594e
Date: Mon, 19 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768808033
