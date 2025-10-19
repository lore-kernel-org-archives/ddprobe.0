Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4501482E8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760878194; cv=none; b=r6aHzEqd3JpVa60zip1/YkJjXGaWEjJ69nQ4+jDk3QktQAKj/LHp/+lrIZ9uVdNtSPN/BQDzPZZAndBFJtfiO0DGOcuGhqta35uY9C4CuGk5g/zQxOzE7priD1qwKBPvuHc7HLrfXBkzLvPgKBVsMXOGhgpw6kDUf3ndTWNSBKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760878194; c=relaxed/simple;
	bh=b+Gt9fSTDb23HHBlTSl3w6MvZyD1cIs5By3PCTY74uY=;
	h=To:Subject:From:Message-Id:Date; b=T/qTs7fOexL62KV2aT6V41G7I/NcSKG6S7rpksUeBXVuMDnBzmIvE6dpGX/cUyMG0UU6/La/vV2EtmK+IsOuYKqs5YeDC4C9AFkpBcuNFO2p4i2rC76kq9kZunX2PBxRK+6rYXfhCt8pMDzXRR1Fk5Egd24oYMJ/pb1C0t+LcP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFGU/EdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFGU/EdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760878193;
	bh=b+Gt9fSTDb23HHBlTSl3w6MvZyD1cIs5By3PCTY74uY=;
	h=To:Subject:From:Date:From;
	b=EFGU/EdCiB5sRp9e91/7wz/ayLBkT+ZT+dSMG+/CYQjh0teQpbslx43t6O5Edf395
	 6Lr/HwZk1sJjdrOGMp+Dm/RHCqWzWM+I40Kw1GZAO4z1esW6tFjP5Z/HIUlgMpTCl5
	 1CMrVoq2c8SZ9+tMez/FtQ1HT7r40HL+82vd0duFM+zw3upDPi9znxbhSzrKxTgqtm
	 9N4ITKFx+t9dwLJMHdWW1qfZWXv9N/PH428WrFdHh7V+dFnCg2ifuL862BJjAsVoHR
	 Pz+eExiyrIgVBR/+kDsEf7h2AHAIrLdhISONtTLcK20+lGk+/qtqSYHQnP9RFQIMSp
	 mhnZczTjhAGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493ECCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087819357.8689.12464263641075621183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0765e21b605d746f2fb9e48a4deb716491bc6bc6243f10b093f66ed8b72066e2
Date: Sun, 19 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760878193
