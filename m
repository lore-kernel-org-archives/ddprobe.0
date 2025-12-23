Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258A34AB1C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766453034; cv=none; b=WqLvr3f3bWBbk16JOAP6SPh+j1KyomLH5cRmU2b03dqqLHvQKJsE/hKCnjliWFRnzDgFQmSyiYlK+28cQmo0UJyp6OC6+HtvUGm3OhrSwDO4ijkst33FbQFLaPkNbDftJ+o6s6oFAtuMgxdrrkM6Jjok359+EMRELp1Pn45Ct6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766453034; c=relaxed/simple;
	bh=joKSJPIH7SPbKe8WS0cm9BdVJu1RqVdUVBBWNFzepHc=;
	h=To:Subject:From:Message-Id:Date; b=K5Vw962WnGyA/UfNl3lBjQIa3+btWz7mV3GY4+W2IXvhS0ulJEuZj/1cF5gBADpa6B/mvCl+MRR3Iy4aaKSHRI1+GaWb6lBXj+B67qdiyTIJEfm0yT/E3AsRJujyrcWcoZPgfeVnq3T7a9hkXToS5xlgAoupqoki9JOlVDfgDYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3/ugBRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3/ugBRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2429C19424
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766453033;
	bh=joKSJPIH7SPbKe8WS0cm9BdVJu1RqVdUVBBWNFzepHc=;
	h=To:Subject:From:Date:From;
	b=q3/ugBRKO+7O9+qd6wD4ZoZjqw5M39YbLT89w0lRVogFHebjPnca/Hd2+ldtO0w7D
	 DcluK9NmBwU8wytZYe2GlE0fLIIYYxwS/l+Nf70pFIBVQvF2FBMu2TfPe/AVySONKN
	 92LIBszex8h7qMa8opEdk080S7fnKXrn4LhHbgzV/aYzMfFC6Pa55/xYCn0vQXlFx4
	 /05/1Uf9WEAPpTQEMyKUaR2RowtBe28VpeXZE3pX/7De7a3FZg5q+fHS76KuLoTaqj
	 fHBF/VRq56icR+2rUpzKXv2n53PGLIEKWXgigrPc3CijpS/uYFrCPMEfXqJymf9NhE
	 tJM0fuu4OatKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F6AE6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645303364.7274.10110479538589591154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c038a7a39087a48d9fd7cb3b8a8da599fa1dd0e2ec4fb42c667d7d339aa4365a
Date: Tue, 23 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766453033
