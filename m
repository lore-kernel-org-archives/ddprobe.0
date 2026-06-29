Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B229327BFC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782765514; cv=none; b=djfGTy5DPCVSpj1uiTeMyUWYj7w2uT3FR1zOHtea02H/Pka2VCXK2k/MSZVwzpJycQJhQPMBNFqtslISi6Z7Rv0g9M5wLKV2XPFz4trPsOTweOgiQ7zy0OMqSoTz5Gl3Q2u2mjvRt/jHuOiOSieI32K9u6gwy2NGS78F2nargSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782765514; c=relaxed/simple;
	bh=TRTCmCunippAOJUwa0rAmlbcmChzc2Z14J7AEYOAHZA=;
	h=To:Subject:From:Message-Id:Date; b=lNdjOqILXRmy580Y7v2+k1EHhy51e/WF/zPhvd7G6WD7HQdZM36Kg9Nn05/s/S2SuvZLBorW6CMqpim+SDEnBV7yenRE9rQYNbcp/jlneIWvDBpaBVnHIBRXW0km+C71k0WD/ynsoXisBXZvG30HJ+5LMkqaTYivQxTmBFKHV6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVVGvJZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVVGvJZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2022C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782765513;
	bh=TRTCmCunippAOJUwa0rAmlbcmChzc2Z14J7AEYOAHZA=;
	h=To:Subject:From:Date:From;
	b=OVVGvJZPsxvtBKleOGpw2pLQCf36f2VNCDMLlcOAd/IhlGLaKRbxEsIjcJZihEFxz
	 EKaxyU8hbvhVFCZVp/lix+y7eA9cRKyA7v3r4S/wc8hUb3DnxF8KgPT1zp7GQb4z0L
	 AkUCf5THXfNeeaDj63okIPCLPYvt/QhTRnpjafWXpOHXVx3XUeebNOH2Unl68LRaTm
	 CnzB/K1rjpEFOtGdMWxXke31u1nOq+1XfSRRY2CMrthu6XWtu3Zdw2ZML3+ypc+nfV
	 C0EmGYJUyImW3w9Ws7uVieaS3Ti9Ms1WRkOOg2PiSEdVvRTELdDWupFK4kHj9xkww/
	 uv/Lhozd+of5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6BC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276551368.29344.14189224811176740628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4751e4bbba4d0704e70476509035e04753ad02065fe7a6b8224c097d3e1e21c3
Date: Mon, 29 Jun 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782765513
