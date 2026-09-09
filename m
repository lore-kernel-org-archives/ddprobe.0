Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B69A5803A5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788970834; cv=none; b=OrSyXieezA+QhkGmMgxJ8HH2vgdkuLgACncdtFXTW5jMAGydQm898hNG+697OBG7kV5YuOJEVxIz7TEP8ZJwYCX6vUNhFoY5DIgxJjObcHbAyQfaCYnLCmp3r6e+LWejmSPiwM/fVRjdFHh2TL9O94oFj1KuKNYVkwKk986r7Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788970834; c=relaxed/simple;
	bh=0s80z5ksDTXXmK40hTX09A8h2/uraU/v8Kcp3P1RKUU=;
	h=To:Subject:From:Message-Id:Date; b=gX+HnNQ3OgJGs2Yvy/snmNF6XinAlu3GFfN6eKH0XH9DAljwUv54D1SuRu+Lx+HLi4t0Up9sJ/CwN5ATk0NDkeNAwnMxJ1FDYTld0zb+5I+hQNoywHfXvx8Sa1i4+PZEbBCrgXc5YQWNzEFM9gevU4bP50Rro7vx+TzPAa31/Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1N9BN6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1N9BN6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD777C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788970833;
	bh=0s80z5ksDTXXmK40hTX09A8h2/uraU/v8Kcp3P1RKUU=;
	h=To:Subject:From:Date:From;
	b=T1N9BN6FlBPsvLlkLfZ5/XgvyRnUai3Q6VH4dXiug9gQEDKNaznecf6LeW2gXOljo
	 W16bvymEP27hTDnxEzk9ROLVHxK9R0fWsf1UKwDOvxmyFbwv0BHrm4ddMZmWxMbJA2
	 Kq63o/TV8Dovi32OZeRvsRDs9j0E61S9Z9S5uSFGUzFTq2+5j1UHQCdaIAQsmlb4Ea
	 JNz41R/8p9OpcZHpR/zgSc6tSl0unDphnIRMyIWhww1b1AgC+ZpoKtPk/+e6t/ZsOi
	 jiMbgxViZb1tgizpeOGcdG9kxZ3k4up5VgquQTLYPHM7eaFnz3OGGPFEUO5xcW26Mn
	 Em/cDBXEImVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B778FC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897083373.8596.207826064132261853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf8caa8bba8d97eb15370942e50ddcc89fe4cf3a2b3b02a9a0146015cf65461
Date: Wed, 09 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788970833
