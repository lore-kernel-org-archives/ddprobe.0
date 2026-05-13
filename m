Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015834CFD0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778707834; cv=none; b=u2eaF/0/efCmcR7llHc3qZBkEcNfmjOkRNqE48f7lgtNcug+hwE+qKLqCkHKodESpBMYSPB4nenNiVHgOu336ywlaLVoSJPeN3RRf7JJEZcGZJoL0xIfBaVPW01qtX1ig/eQNUco5bUd+afwzK8Fyzcm9f9ObXQVt3GK9QjqIP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778707834; c=relaxed/simple;
	bh=CVJZL9z/19p3xvwkzvuP/Xv6p58OpyDpoC3TOTVEqnY=;
	h=To:Subject:From:Message-Id:Date; b=c2pnalji4qK2VKVT548YWoJVTaV3AqEARa9D1F34f8Y4f8PiqZljs29Vj9R+NKFjGtmv+ZfayLUwhudLEfyq12kj47H/BMoJHt0F5HABv2bvNk1K1alfQ0zoGPpifKjFFoSrXl1pHSzIjxzm1DahOgI2gEUW6xKiSQmhmowaRr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSksMVkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSksMVkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA396C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778707833;
	bh=CVJZL9z/19p3xvwkzvuP/Xv6p58OpyDpoC3TOTVEqnY=;
	h=To:Subject:From:Date:From;
	b=pSksMVkE9VXIYJpORl/CoeizQRQaaZ5Vr/EaeUgUNmqJfRiu6C5J6pUUTUJU9ZMCP
	 9joctDdOh5hiOFZehGBhwWptpVoI4pA0USzdE7EdMMun4niAl03dWiK/dqJrcy53wP
	 1FpmK3c5I5c6eZD+pSQ3N1ObmBhLbmNqG5GaapvIQj/e6lALsdFs7ESakC/AqrqVHU
	 2+e9n3rlbp+WfZQSMmYXcZmVuMKCK+yA7tKHctAqqjc3XlqBwQFxsbjrpuIl37CrbU
	 PBJyjPkXas0W7Bl9emCvXYHmR2uieKmQ1nKAWXx6tmaoRJYEQXZKj3bosq+cCkytu5
	 pk6+PLuyV2Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB014CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870783369.16331.5033133483101120863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebff7feee6ca3e135d2a17f2798eb07125bef880ae4d7377ae3b1bfd60b7e51
Date: Wed, 13 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778707833
