Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF1C1EEA54
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773119094; cv=none; b=KE279cwJhz7SIrG6uGZmvKGvFhc4Jz3UE6aTmd+uqllkMJkRtuCL8JP8TPgjCOgFuBeUuKwunySZUtYw3imaZBt1JhY0LW5qe6+DRxEBvGToyrAGtkw+VYnvx9bDsfh93X2ajZ598a0fo6b1rTqMulzAvkgSnidhL75jOgWG+9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773119094; c=relaxed/simple;
	bh=GFJXd8INgVKYfdTiEv1zQImh3+9F+heK62gc2si5qjg=;
	h=To:Subject:From:Message-Id:Date; b=Jnb95mTCOGZyqdpy3LMNlVqYliXyWoSlMslfqGHL0Td2ur91AxVOng48DT2SvTFsWKIj3C+h16CLbziWKGBOUbLsxGe+KJhscuNQM+dPfdnk21bAYqk7BaulvSVO1QZjJrGc+Xv4QVowoiZfOL7H2ml+gv/fco/Puu5bHbRYnxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UambQndo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UambQndo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC5AC19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773119093;
	bh=GFJXd8INgVKYfdTiEv1zQImh3+9F+heK62gc2si5qjg=;
	h=To:Subject:From:Date:From;
	b=UambQndop5aZe2dfmmyc9Y+/QuCbiGl677UGLdszOrLD2WfsLzOTZWJEGkEvka1kz
	 URV0Fskk+GkJ4oBoAHy2cYi4GEcw0VxuUD1IdIjZ8z7DCigl9p7Qwzsw3zApvKYCPE
	 IFLv55YICg+Z/jamuDdRvH5TWvf1gxXOpwlREistSFEE+RIe4MhQtYNgEjb9aJD5wo
	 2mhBpMNsOcAYrRqmRGauGHfoEVLaGDoTwa+HgEvMAUZsaHDjRJV/3dpkPLHqpg1YuB
	 nKZofO2bIQEYRRG3fpOxNBTiV8wh3iQvr92nnAv7+RJmz6tYnJ1wfJUruMt9nicyBq
	 g57D8Z58+1oIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ECFCC9C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311909357.28648.10628040807340405108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd342265dd666219afa71b2d929814ea1b886b90b2c92dbb2d82d3cc5ca24789
Date: Tue, 10 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773119093
