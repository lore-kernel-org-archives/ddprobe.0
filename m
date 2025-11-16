Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447E2F90CE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763318514; cv=none; b=nCDGFhkgsUQlvOxmhKYSqTmrGWJ/YwDylL9xcLCTeYkB5tFEsWtyAkV3yGfdMg8cvfdcI3E6vdJAVtn+419N+YaxsKXHmIYz9hZ9acZnFdI0TuBTYRLHMghWI1kUFkmG7AyEFkbscd91ecaT9reuHHcW3OrT8AHNS8DVVD56tyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763318514; c=relaxed/simple;
	bh=XcNYamuol9uGJiRQ4sEoOQA2izkJ77t61j3PqaKF5Vo=;
	h=To:Subject:From:Message-Id:Date; b=gS0I3xrODmKL2l01WN1upEI3bS/Ajq9xnX1Yge171ejdK+JbMsjnoDZeWwoYX4n0AKNquMGMM0GZSL1YIqR9Ec64/Xf/aezCsVwXEpZHzkMlEZ17sZ56nw0rvBAAfszl89WaB33/BtOfWrPzU0mgF/e7nNw14orcK+qLusZNP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JltaSQtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JltaSQtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763318513;
	bh=XcNYamuol9uGJiRQ4sEoOQA2izkJ77t61j3PqaKF5Vo=;
	h=To:Subject:From:Date:From;
	b=JltaSQtCkGDEd2dX3v36UChNyipa8KItPqUPgu3Jz0QwXuXeR6gK91AGz6+wzTLsZ
	 mOPkgkeAFtWd/WovZUtcmc1p5TriwObBRuk9oD+j1BrsMYwwmkPCPEwFlFOiNYVmrm
	 YfS4baxGjvGfCaUX+28A8LED4qTbPhyBeBaDjKRARVoMPVqrRpDYsyclaraivYNa52
	 jjzBPlvR7un105u+WJu6ZN/Cf3kqMwAK2GMxGCmAbDI4qB91XZG9MjXlBwyyugTh7X
	 HmsWSw2Zd7ny5phZ0JTM5Np2E9cxHNFi/Qz4SEQ7erqdpr0NoRe4UuSy3GyYNjFF/C
	 hSmvhuhVXd8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E9CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331851358.22360.9888220942248812829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7992e8cc70b5819c99b3b15790d2b820a7110f8a1491fe1a5b84749ca3f9597c
Date: Sun, 16 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763318513
