Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F281DA23
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758689393; cv=none; b=d0YJsSlAAWcv8tP8IrFFXQnovuOLMV2pqi6VYkDfnyRD/ISkRsjQ2C5ftCltTQ6PbUr0y+qhQExF+82Yo7WDOxuWBFr7Cmit+EwgNn2wy90+nFEMKY+6/FZDL0bHkSB8GWmptfIBxgk4lSp1jhOXiwHcAuiu0+7SYa1AkiPThEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758689393; c=relaxed/simple;
	bh=V+BhbaytXW7+0XUbYggcoCi9Fs1Q/CCIHzJfhseOLI8=;
	h=To:Subject:From:Message-Id:Date; b=Ev3Y0V638ofPc2/rtBhP6+rkZ2xOnyLkffS4fZp+Tvh3d7czuY71MM8MbCqNgjzBj2/52gWtibD/JxO/+YqxW0f/Ib9x2wKd+mAkcUuwJfNK0APdluAJnOpyHvTXzYX4qWfkJ2TtFXK9chFgWMpCpuZG7CxHMf2MdVsjvT658iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBQ+o2QV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBQ+o2QV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A826FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758689393;
	bh=V+BhbaytXW7+0XUbYggcoCi9Fs1Q/CCIHzJfhseOLI8=;
	h=To:Subject:From:Date:From;
	b=rBQ+o2QVNvaitLDq8ncnwJyDMFmg63PcUk+zxCvSGjG3HM3hYaSUO1iBo+9CM1Sgx
	 u2z0JbZjerZM6QvpjXbu/ePOwAB8xIyEl1BD/TzkgI/Bhtius8ye0UXaX2o2sQphSl
	 E/CqwR2FHzUfs+D2vLrT+vV7Lf6baQ9r8ArDUKKApbsDB4jSV9bXw9SiBDe9JYj+xi
	 Uvd4/BWX8Nxrjl2+TU4V8eycK7tZzH2sR6JDQx5+gv/j6GhXK6Vs13ZGn5R73XRLfk
	 N/XGyZ92mkCq04yPEN20XhjYhXZBzlCNs0FdhG2gbDGX2OIAg+3c/zldmzxEN5Eea4
	 Q18Swq7D3A3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497BCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868939357.4733.5469409999909431076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ce795ad4d9411ddb68face155b4d6181a831880df19d6d5b3f73d8a446fdcd
Date: Wed, 24 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758689393
