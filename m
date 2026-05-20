Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC12D12EC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779243034; cv=none; b=l+H6mEQdFd3Z0bYKtpfvlcd8Aqm8fS5gr6In7xP8dai4Bur4+N7PWxCqd/f9P0AbW9N2dFD7QzFgzkPwCDiAIIxsjb/g5eAiKKNpzM/dpy8glpbKR7rgpnUIS25a2YDCCdM9ETtqOvQmlt6Ue3wK9v3sbKHvDGJNAZhB+pw7Kks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779243034; c=relaxed/simple;
	bh=HJS3dIXEAYbqiPrqSHZLc3OLZBrxtu3qOq8iXZxxwAg=;
	h=To:Subject:From:Message-Id:Date; b=VLTgdvw0HJI1wdSGL9A2f02E/NUSXFYEjubMHc7OGjHyK21vr3bYyN32Jmrr1mSXbIEW/LNcmtHl3hVjuBejTyT1gNUZHrlEAIozilpMqEF08x7Mzmx6Yn1aVZS1NXaNPpVoIBmwLsidjs7zouLpFUmMPTSHjCyasl15ghSLJi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afMMONjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afMMONjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D0AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779243033;
	bh=HJS3dIXEAYbqiPrqSHZLc3OLZBrxtu3qOq8iXZxxwAg=;
	h=To:Subject:From:Date:From;
	b=afMMONjZGaEZW/WGsLEbiZwI9BngoVexwRyW+bW2ZzVpAKG2EycJls0fx7Tm231Hy
	 t5HGJuiUp1sCiamXM7F8yevLmCIOCAZYaA0LexFmXJifWmCddPSrHybM3CTiym940J
	 0CY1TSzweRgpR68N1opdtjlhdICodDKJfegqGmzT4itUjyCReWK/k0h17L75mUS1tb
	 kVNTKS4SS3O+licGW3y4UTFkdP36+S/fwbKQJwypmaSrxTyaENn9quvTzlsfDVnKmd
	 WVHKu3j3Jw046Rgu0yC4UiMoeawuB484QZnHoGgwt7eDqv1i6ENMh+FzD2uMfRHBZr
	 qrNL4AkFfqVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF134CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924303370.1206.10180229508174422073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357ff2706590f0d31f53d99fa6e770c8c196682cee8098261e02ccffdad96caf
Date: Wed, 20 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779243033
