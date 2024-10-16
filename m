Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6113632B
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729041954; cv=none; b=cyWtupjgUaeLk1ACEe0C1HbPdwd31gFT3XRK8D+1iM9VdiTpdS+MxYhYjzriWy5eZ493kllddBQ1NEfmThiCdt6uPTeJQYCL0kVrQVGqEhWETpw0RwLQhhsb4xaDAYa92edlzgvK9235MUQWby93zFWUV3jCDVA02mFR8VFdh0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729041954; c=relaxed/simple;
	bh=XQA/d1eM8CyDxfPhAr1plivUnLaJw2hKDslGCnRI/Kk=;
	h=To:Subject:From:Message-Id:Date; b=USw8i8aP5x/uO1pZT8zqkxFT5m2WdDwQ0GZ1dpCZV0fugRCsfg8b60aNEl68s68o+PRsjLxzwju7wSz6TXTTFVNUgFHm5AE2AQGFdKZ7uZSue27CMJ5DLyiBztSwimWrAYCsad/ODOHeWoQNuuiliauguf5ZgirxvFvK/jmxv88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg0gwyRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg0gwyRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E62AC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729041953;
	bh=XQA/d1eM8CyDxfPhAr1plivUnLaJw2hKDslGCnRI/Kk=;
	h=To:Subject:From:Date:From;
	b=Vg0gwyRuVldt1BtgPbY06yTxfoAo9rkSxGg70WwrVr8ykzVrYrg2SWlAwlUg+3vkG
	 gPTSIAepLXUwaFvKjkaC4nKsR1BsBocjMy0S/yleObISBFC+Vszk3xM8NlWaKaqhMG
	 MqVdUNLrJD2vnZujzd41+IrISuX0gx29zpADeS/WTEUDLNZ46GiEvzEz2DTynjgijk
	 dwkt6Z0x2x5fmNH8B2+f0KH7EWYpzHSk8FdMDDcduXXnbRGIOYvCH39kRVMat9LLB8
	 /oLtYtP9M4fHx+r0DDs32xsUlNAG7zLz4MRoSP2pj68O1nVU04otCmlCy6g4JlPwxk
	 +OlLGxwbPoPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF13D2068A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904195357.14557.6201486963688006632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f2d216cb569c6636791199e5069433f1ae6f9496e814defaa1ac2fb38f2629
Date: Wed, 16 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729041953
