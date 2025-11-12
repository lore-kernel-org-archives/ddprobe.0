Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34754186294
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762918794; cv=none; b=VGkwjHTPhktd/4mnZP3NlN7sEVxa2Xec015V2y2VR6tPyrlp2xoEYvwl4oC+mOtKSuIBtAeSEbU4olGT0k+NcKCpaNdsyIQ42Zohd1byCeC/kY5PwbUp/WmttE6c4ZU1f6IT6Mv75dHK8RHspywiThZliT8I9hV20m95vZCwHYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762918794; c=relaxed/simple;
	bh=3E92Lq54gGAXLL4s9S6ASyRSnEJIRxNfp+uLuAeiINQ=;
	h=To:Subject:From:Message-Id:Date; b=YspagKTPXngvfPXx82tDN/JXbEJlCJVQcR1vNXgfJ/93r/bY+QJ/SiDYBMFftaWBUs2Er6uIVpsfORlRugP+n9p8yNbALW42JrkcDLw/TUcY8QCFkwhge40mfE37y5kxgoNFgYK0AaD43yXT/mQZE44EYvC2uuP9ob+3anajx3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPhWU/l7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPhWU/l7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1882C113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762918793;
	bh=3E92Lq54gGAXLL4s9S6ASyRSnEJIRxNfp+uLuAeiINQ=;
	h=To:Subject:From:Date:From;
	b=LPhWU/l76dq7QXCP3zLsph5siI364CBX3TCqq7qnp1Kh14hCNgcMHi/ntLnXZIwR1
	 hCMjPv5x2Mmj4PuquObpwoBEaSarsE/GCWbkC/GAnyYYikg8XRevSoGrmxPWGTpEx6
	 df8Qv47If530UicIPhPgGBbC6lLV/MP2vJ59VQc6xVH/+X5MKd8LeuBhP/wL8baUzu
	 mW6HSmSPDN6ZFWKCNnvPqcSWszlSKE3VI1/WHr87xSikZZxyAxQFpgq3+enMXh7w95
	 17wHQI3eMC2Lc225Tu+washws+6loQMdHuZQDHOXicTFzpz9NVRccKLBD8igWM9HUD
	 g7NYGKpz9jEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C915CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291879363.13791.4683245335199828777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f068b8f639c3d327c1c3c101fc3a7168a30ca263187ec887c3eaff5bba05d74
Date: Wed, 12 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762918793
