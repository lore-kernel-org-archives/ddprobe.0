Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1893017579
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727957154; cv=none; b=aevD7QiCYCk88pEAuO+Rzvqsdhh7edVbyN5g0ar0cejpz/WM9CmBpRATqqRo1fCSss2/Wmwj7c5V+Bf4UEXUbMEfQCd1FVthy/cMV/Tvi8KEamL2zBXn8luzc0/iFeVsmH/c/wlvrt53Uj+9RY03RMhM6G3iM9V5ZOC+kuyxXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727957154; c=relaxed/simple;
	bh=dvrvKiV0yGxft9OUPrCv73usNCL8N4mUj4sIoFsqOQM=;
	h=To:Subject:From:Message-Id:Date; b=fd0qLbNsCGX2jrB9RBLffvslWeNh61J6ETDmsy4CRDpwhT4ruAvbLfsGmTggGyJiVJ+SkqAMyhRXk1q2D32dUcMt6RN0KqictLC55o6jZDkG/XMwrPywCWl7piS/LU3UIwNiaz4s1F+D2LnyQMPsQlpomYnNmZuAPqzeyIA3o5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSe9jV1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSe9jV1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD80DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727957153;
	bh=dvrvKiV0yGxft9OUPrCv73usNCL8N4mUj4sIoFsqOQM=;
	h=To:Subject:From:Date:From;
	b=mSe9jV1Vwll/63YcCrWQfacYYhHlJ9iQS0Z7GAu/jKruK/rJmhNWTstyppx58SLro
	 +HPHxg7oltT3hWQviZVfaKdINJozCGfnYBVNyIO8aHknAGedtDLiAZ0JSf78Nn+WQj
	 8/wL9h90NBVxwGT+ffSFRPMhErOLZ3+J0OoSxkhL6C1Ys7a7ozVVFJc9TsNbgDhsMb
	 W4JZAP/Pmf7k3OBLUy+AlpJMQbajCvhGvQih8+xV4LMrQyhL10bT0ycehZ/gy8sV0y
	 4jm9CMZ9SoA/QNJuubUWVMmEXVRSsTcIbNo71Q5rQef09mueonAf5XRTZxLVpIXxCz
	 icWBcbcCHhUyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAB7CF34A1
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795715362.21524.8514829521187599664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e81763da1f0de69b3fe668f309976300f1bfae7cdfa09852ce228af2459a0b
Date: Thu, 03 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727957153
