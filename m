Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3932F84F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752957594; cv=none; b=B3IjAIgZdxCDPpgSUb7DDcMmQvAFDDfbUUHTBZ31TDPhxXdVnavOwGYl8dO5PMCqGAHqSLPTUPyXlAfKAJfqvf7rkU6+MIlHVMdNj/+y1AGjZwy8FllgsponPdt35yFDMQADFX5gimWBPcRCGlIbbdqxSMApvL+x0ekY++7Q+PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752957594; c=relaxed/simple;
	bh=mga/qkucAHGWBNBi+oCpLLSUyCP8kxs8jQdw9LsCFts=;
	h=To:Subject:From:Message-Id:Date; b=U2nFtt3EtROGjATPv+YD0e2FUh6b+/0/XwECwwF/hBcYHkCPsCFdaqQcEuMYIe2kkqinaP/PJ7RPyartrg0shYBpoEOXq3k/mlRx+gau+R4JrbURMemsWpfkv/lrmmmbd/z05jU1ri0ttGBatTbYrywla/Hmn4UJiih9lFdxfZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyBAACqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyBAACqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC5FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752957593;
	bh=mga/qkucAHGWBNBi+oCpLLSUyCP8kxs8jQdw9LsCFts=;
	h=To:Subject:From:Date:From;
	b=nyBAACqjvx0PtSAVSI2tYF/d9LxziiS3icZ8c43rmCq/GEToie5jVp3vYy+OcB9+k
	 vqLR8I0I6j8aEIvq4Itm5ZAfkLD6QwC2WsSx6HUbbZ6dQTn9lmlWXWF31/7CXG9bQ7
	 m/0CQkDa5GZ4gTsFCawj3v8hNaX8uL0SqzkaG8aSL9/re2GD4/vv9Hswa62qcqQEts
	 DsO0P3dH/1iwTSWMO6W6sWWygad02VAkag9dTFVbf98oE10asJISfkAMqW6fOjqksd
	 HL8d7XXXIfZwij7DQhy6sErCKHb3ACzt9386DUab1kuBHIO3El4NpJZoyi0bxgHokA
	 b0qkn7TMdom0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A89C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295759360.17023.15781816320129911114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a5c3fba01c85bc51f11337726cc45804058b578230aba5d4012546dccc39d
Date: Sat, 19 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752957593
