Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351261E480
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737770154; cv=none; b=TnT6S6RUtM4e8z71fhuqLuv4vAPCXsP2itC5Y28L1Os4u5uw3dk1os/C+tOFiXR2jUqEepeh1QET9eyB7gDr6CTLtGC7CBGstJMEMZIuny3iEbvYrxYC693ILU8WMLnM4f3sc2SXexV7ZhjcSrB5k562BbvC8c8ZPbVjjEYMZb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737770154; c=relaxed/simple;
	bh=lDLucsMUyNwfl11S8ot4FKyttl8YRWIO8WNSuwyUTlU=;
	h=To:Subject:From:Message-Id:Date; b=eZ8COFGU5L84hQlUAtOAGGAhRdHKrghpalZJkxS/4uRS7+bfCCM5QpNt11qeT8SWbI23r3qm/a8Nko+qx4/yzT1d30d9g/DKSiU/0ziusdyr+hhY3vXKDpD9CVMEWhh+Al+qYCOvKGKqgKDVnfeYaDcHPOhH6liLn+DL8nKqGz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3t1YkKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3t1YkKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DAC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737770153;
	bh=lDLucsMUyNwfl11S8ot4FKyttl8YRWIO8WNSuwyUTlU=;
	h=To:Subject:From:Date:From;
	b=h3t1YkKxb/DHmUFR39LWlpf3PTIBRP4SvwegAy1thMhNC5Dp4pQCSF+FoYaNKTjv8
	 S+6mbTxINdIm30jsSu3gASmjJkDnpGj/x1cVt+BOE51hgcCmvIb6o1WlJDKUNnn8v0
	 lqYgmbdNbAQGqqGDMfIyuXynO4gJjModROIAWXYePx0WEafR4vf0r5gKbqig87JjaF
	 kA+8m8vC18YMNksrsbl0a2Uoi2cH22xCJdfMEyqolRNgwPSz8eQZoKaLi4RvD9BAsj
	 FLkE77WA4e06NbOe1ArEjUrxb0BdRA4mFCSnRKtdNj6pJqeSRW1ne3JXpko+dItxbq
	 yRPYsp5aUwvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA5C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777015357.11241.12168916542875998259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6b602670254b2819201dc2d4709b3125ae1a8aa084b2570e76394374da8f7
Date: Sat, 25 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737770153
