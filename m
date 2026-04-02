Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2036C0D6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775151934; cv=none; b=GdXi06m7oiF+9NyGkFQhnOb2fl+4ocEEzsapMgAnjssyOqTpQrl1sqXc01N8mVJaIEUQwjXbtvBf3AVV9POEbR8VtCtf8DrP3qLBQ1EWEuCXVeuLYLpuMIdwHbdDMQLW7yYAQGemLrgvx4MCHSEcJT1EoVCUbaXt0Zf7/kaWCWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775151934; c=relaxed/simple;
	bh=KL+2Z/zBW3dGanbJ/dWZtsW5NMXyft7G4s/wDECXe10=;
	h=To:Subject:From:Message-Id:Date; b=TgWCOVsHEVA1gIelnwK/iurZZ2fhvqHGyIZ/8woVITEsVOh5iZzYFjwEXwmsqTIFMXUTnAX+mBXCI8ILWTdxwqqRfUZD+u2eBpcOk+Rxy14RJ2+sTi9MCBh3wW5hgqaoGcGGVFiBo0egUiiKz2iKHkMdKiHb4x9r/z9dNc5r6X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poRxT11n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poRxT11n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE503C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775151933;
	bh=KL+2Z/zBW3dGanbJ/dWZtsW5NMXyft7G4s/wDECXe10=;
	h=To:Subject:From:Date:From;
	b=poRxT11nRWGWRp6/Uj/EQF0oGJcSlakFHGJPzn7LDqz9xl5KQv5ERt76XysjbJSNL
	 0PFS4P78FQuPgo7LAbVAJ4eaRGONpFh6s7jOOJAoKktXh5heJwSA3wle6C5JuUL/nn
	 vksrNZJzTSODCMtasSpreMs1DQXh0SUTWTCixkaP9ZIypcvU6WZqJ6j7KZ4jgrqwQh
	 qBLteujD2ZF88YsTqJ9y6idkSybvKJsXrO/3HjfevY2yxPxuhFC95QeKNdyd8HneGp
	 qSXK7AMnlViC515mJY7fCSLCM2c0ryOpDrEiW97PJr6DD26VsDslOJX/YHDXWBzseD
	 61J3lkm07Xhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C9D6AAF6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515193368.11303.5252511666673207756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf766424ba6c915cfd74fedaf13e7dd7fc4b6c5c597d9599a47891735151d6d
Date: Thu, 02 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775151933
