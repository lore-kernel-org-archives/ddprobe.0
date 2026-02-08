Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3160B20DE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770533634; cv=none; b=SVrPdWwgYawNyxjl2O11JyEa/HU+l75Rm4UvSRLk+d08+OwzB88Y8uGgdpCE1jfh8tJmncUbG/aL0lKymIVw95nOQZl2ruThQsmPvRpiL7OixPpN6iqTrOHvh6AANxVu71TfJIXnFDfJOlCySaDoP3Cmuunz7blmKvaCYzdImcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770533634; c=relaxed/simple;
	bh=wfOjD5cu/kOVQY2PIQU+8Fa+M2zej6wBAutKQLhQufA=;
	h=To:Subject:From:Message-Id:Date; b=VbZIHGdtDUCjensbq4VfuLu5sEpb0BNzR8Eacyguo3vdHBKLYjFOSoEuQ4ViHF+fgsBiX3MsOeK+k8bMOEDkaTReWBAbKdZI0wv84lctRqrATo14pCrLlHmoxnVJYAEjipizgMuBmvfCH5kB2tXigHa4D80HwZPuBu46wr+qB+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFxKcYJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFxKcYJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90E1C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770533633;
	bh=wfOjD5cu/kOVQY2PIQU+8Fa+M2zej6wBAutKQLhQufA=;
	h=To:Subject:From:Date:From;
	b=pFxKcYJKwibnQeUnMvDGaW/8oPZZ8k21a63A25Iz4p5MS0rx7D13Yw7c25nMEcb3F
	 gKG1YvReVgJOkZmYVGs+tA2Nc5y1gL8abOnl/oAPwltF1dk0cHIg9mgh/BbVDmvZll
	 j1TjpJeuQpfHUrg1OO00RiXaPWg0nXfLVJT5sBA0Dt4rw/3iMPaaKyZYa2IVSWUxNy
	 cf4f+QkFmr6p96vHQYGFqFq5fdawUuEN4tWFRqkrkfSNbOI51Pe8a5z0UmRFTpn5ip
	 mFBL6CX6gN6+9UH4K6GL6hFJIdDYKnpXEHZVKzoMR+HBfk3cKY9wWObNkcZzZ0tfDZ
	 jyPY9JKR0z8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BAFEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053363363.26690.6428380252972520087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ab1456b806c84a9a2b92de79c371914cd8a1b42d6c358d0c2bbbf1f094ebec
Date: Sun, 08 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770533633
