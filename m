Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152B820A5C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734007554; cv=none; b=kc8mwBLUjPoofzs1jOVmE8KVDlciQ7pOaM7R7qYSSvUp/W/ATx/+PUAvOD2Y/uAbWSXzQR3wIOH7gCpjZlTxNBPEvQJMlVmNwgwtjStuT7CSFmQizGIY2MSOZlz/9lq2X503c0zTjWuDeFgEzdBTcChd3S8Ij2SGfHRF0jNyVIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734007554; c=relaxed/simple;
	bh=zDEuMaH91xlXSkOwbxe+sZMEmFgwOFvacVRjnaRlj24=;
	h=To:Subject:From:Message-Id:Date; b=g1wFTLFDHVa8HUXJCAFN8GO+ISPuP3AeB2XLj0E0fAhTDH/d3ePUgjc6f8i2bHpGji4gjpPHp8HZIlYtjueOBfpnuvI4j7wj9f7Bc9jRtIT6m/k7XTI2MV0LDrB5KcycyP23yIPtmbrRsX+O2lRiKZ65KRUwvsa6jZD1RjguEPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpwksY3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpwksY3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC54C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734007553;
	bh=zDEuMaH91xlXSkOwbxe+sZMEmFgwOFvacVRjnaRlj24=;
	h=To:Subject:From:Date:From;
	b=kpwksY3nOwothRYSg1eY+72Za/c5Dk4TAuvPxlw40EZjZAWeUhxhyJd7RELfapmU+
	 9JcWDS9dnGyyy3Cpxac617yRmErRjOj0fsCHD8Z/eg8fFpJ77ZJVw316MXtUPJHIql
	 3jiDoezIieLbsG1EEM9so7HqhBkzAcZ96QquZOCNKYxnRVz0q7ZFrhmQfzduwQEgm4
	 QKmt3JDkG2XY98cBgd8jgZsF92/OKFXI6nkOyEHNJVrVzgfbNQnGOHb1IBDozgOpiW
	 /W7CEDHHzmgiJCLBXlwPMm3Eqiq7Oo5QE+iRtRqbjpiY71oWv1mOzOgpNt0EjzZrL3
	 N8HQ9ITfJ3RMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F83E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400755358.32144.15482653821051859193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e261533267013a967217c05e385ec7ea7d3363a720c37cc00912dca7e100a082
Date: Thu, 12 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734007553
