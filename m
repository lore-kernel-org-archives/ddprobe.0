Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BF521CA10
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746775795; cv=none; b=XRb+kf4jkaM6AxceyIK8hVsRjSsltJMNb5iKfSDe37Y98ldjVuwjBw7s/5ZHPdYDx348rpWvvoYepIKddQmmA6npeXWgiz08cnkEmVL0KkatGV3Sz4Cer2T9/kjLQDLH3NCg2XIOP9Bz6Hy1hFRLnBAY0h0s8VEanSAIhIFcHEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746775795; c=relaxed/simple;
	bh=ASDuxcbDgEmfph8NTH26NO1uAlAr3k9Yn0+//9cfmvI=;
	h=To:Subject:From:Message-Id:Date; b=OHXj8YhGLblNwmILv+anmrVjNkI19+f+80Z2xITjWe9HSXiguvxi7s5bBJb/fpoev2YDU2a3RJmgLp4XjiaR+FnuI2SG/YBdJ+7JRPOy8RFLr6NmAwx3vUE3XpS2S5vBr2gcECbcV9S5HVm8379OkVRO/SDvOoDxQ0Ks9v1uUPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agCfmQ1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agCfmQ1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746775793;
	bh=ASDuxcbDgEmfph8NTH26NO1uAlAr3k9Yn0+//9cfmvI=;
	h=To:Subject:From:Date:From;
	b=agCfmQ1GegSa6FPseciB0DBQ1YzgXRGxOtdS2SBxH9w/M7VLkAaDtpetdoiYbkfXe
	 OsBOYbbNKf+frvAa+JrCiNDNn1r+8+0EaBWxqFbkKNXxXCYH0N1cFZtChxg2ScGdnF
	 0YY/vg3Q1RFhtRBfvN0hS8QEDww8+a3DuUU7L46TQUmJThdBQ0fyakWHXFewaA9dQC
	 YQ/x2bz0tlTUKml7sRtatnVgybpukYiI/70BuSnq+DtulMO74HYuImCsoqFR/dXMiJ
	 lnrLmeq4so4zdZustZz5eTAoAq5iQAtSofYFvsSlN/4dxxDzTm88TBOnQM2+VfGjvK
	 N65zHCNSgBnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE40C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677579357.16348.8006358590761852149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e414a12a7556f6a7193497ae4ca50c0f7d06c452b124367f52760ad8bfc70f4c
Date: Fri, 09 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746775793
