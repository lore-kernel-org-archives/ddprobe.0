Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180971EEA31
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777718854; cv=none; b=LXvHPAhD0NV6qvqY08OMSRg9LPKLTVzcHlrsZiJxR6DbavtbKvcpu9Pfr08wW4GWggm4JEnolgJtNxmw2ONCvm8zhOWtsFCY11ryCyMroyTlRrHauER0PHvEJWFC+auv/rDV1yD9hYIMSJRuZIuQiLcXP9Xmc9mFbxwc+A9Rqck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777718854; c=relaxed/simple;
	bh=jPArvHGux/OUengyXkszpEtEsnfiS4TEInbHDG9PX7M=;
	h=To:Subject:From:Message-Id:Date; b=FvrxjQiXdewctn4v5dSF7IAqO/sNEuc0A/TD4dY7ptbAQtSPvBe5A5bPaW0XQvEsEUu9WI/6hwa4lpUKLsQXk2jGGNnGMFoQNHjq7r/ulBxBqptwo3bdZkSdEFq2/i/CxfZjBz4rnDpEuYIjlOnDAUVxi/G0KdhKbBVMufrQ+XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJZS/6s9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJZS/6s9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCC3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777718853;
	bh=jPArvHGux/OUengyXkszpEtEsnfiS4TEInbHDG9PX7M=;
	h=To:Subject:From:Date:From;
	b=hJZS/6s9+k5JVYhoZ2AY5oVkpfHqcztoaf8VJyRVk5UsLudATemQ9EzESV70KKsJX
	 3eOzckEPvQAP8p00DTMbspxxH4Rh+M1dr6gr83WNOcphqKkfB/nEqEELYioTqAxtGW
	 gNSP6+fdDq9sslmp99ljWjkdI/WfAw6JVEo9mSHxDjvP0Rhhnilh9Jqud4iob1k3tc
	 ETmgrd79LEp92jKQz/lN7W+JB90yT1Guzwz1Kc37pCfDb4EW5rNIoZfdY5ibsfxdCS
	 T6gVrQGwfKmyLlqJTK2chKxBKKjDhYFWnxugQm8BNeHOuG2jNeTX01JpWaPZPepv7K
	 guRXDKF/zsPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D7CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771885368.4272.593301131474732957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba32f47e84ca0a0800c4efce52ec35bd4633d46510e6343bbd2dc2eb6e5f3da1
Date: Sat, 02 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777718853
