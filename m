Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D330F54D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765910634; cv=none; b=Of/oQ7GxtWdAc6vZT9AQWbKOR3mPim+rQ80DYOQANImLOqQLgFMfKUAUFZZCx8dmz5p1fuQ7mlhHzBFMr8zROGwcN+PWIRvu5JeUBmnfhVuWZnKUqkcuIT8ZpAEW13aaRCUFNyFEcCSZUVLt8Hv5hq5KRX3j+ATxl5gZtJnJza4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765910634; c=relaxed/simple;
	bh=jES5qD9CpqalgWFklalrBRlBAnfG16i68NQWamzPALo=;
	h=To:Subject:From:Message-Id:Date; b=seCjNOzZPYzWd6xpH4iLqO5Ryb7bqnXCCxJBhwadISkRn/kMRha6qI0bBFkUEc2k0I8d06XWKm6avLF9TZlmnz+en4GPOX1QaHcOsuYZDg3kAFACB7/FDiXGgR8WDP+Ht8HF7oIx+Fadh34ejqm4nbncb/jc0mwPwbwHeUuq7Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9dCBY4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9dCBY4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA85C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765910633;
	bh=jES5qD9CpqalgWFklalrBRlBAnfG16i68NQWamzPALo=;
	h=To:Subject:From:Date:From;
	b=V9dCBY4IqNdXX+rwMyG1rAlTJPy/J2CIDV+ge7AFC4RaGsfPA+xSF92bnhwPtY8Bq
	 u39eOnhCAGC9DyyAoltRpACK2UldDfA5WILEVzwfwWEWhZv5DEXLt1gIM7sk/gDbGt
	 khJ1MlyVBs0kEJA6JmCRqJayiMeEiaml58o1HbNUgox5tYpHCaCuMCBj758CUN4MPQ
	 AvHU7Wus6pVU+ejHPk8PFkR7ZLKz9gmFEudibi4FlrR1nZL3aQrgCbI1Mc8JTDZWs0
	 8iYrpq8RGwjVmMiYtwZ3WgsUIgmQbCPGbvRKRs0gGEvs9OKIGEWhsYNzScV1aFrqTY
	 po/o/LQBnTF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836BD609DB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591063358.5172.12049400249663126902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0875a05630707f0994580baa5d9b9d2716b306f7fc74c76a48847bfa9cabcf
Date: Tue, 16 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765910633
