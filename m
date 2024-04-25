Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B58005B
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714036283; cv=none; b=agRQEPDd0PmEY39k10UWe7FkZoimj89gzXmRe04j1mUVQm/UgkP+RpWb4WSf+T3kygB99uzQHptZwLOp7abCuoy2KBJPwpXmCV9LTV20i4rmwtgNx7B82CtQZh3g+8mtdF5ipdJ2N/mvVsfvH2vk7R7LmGMXVuZtB2A0/VenUEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714036283; c=relaxed/simple;
	bh=k8MfC5kjpXb3p8dENTtqODMKxTiCfLkiB5bxQGGIO1g=;
	h=To:Subject:From:Message-Id:Date; b=O6BP+BwajjrA1mhndRaRXGui/RaIue8Pf7sxjEDt3/7k4P21bTUAOP517nv7CMqprsTE/uhtl95L3MakWEyutKqCZ5Jn6ex4ZxO4NkFWB66IpwzJIk34w5XdjeoDPZPERtRSE+jrMGl3Lr9gEcEoIUP4URTSJPQmLq9WMNgxsdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiUjo+ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiUjo+ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC2CC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714036282;
	bh=k8MfC5kjpXb3p8dENTtqODMKxTiCfLkiB5bxQGGIO1g=;
	h=To:Subject:From:Date:From;
	b=MiUjo+ZWn5kjhWzF+7d3C1DgB51zQskEK8aK5tHfLITjSnJBgyjuF5nA1JNL2JoDq
	 s+dW6hcbEdQp+tbmry3MKadXPm9QwQ2t9O3Rn1EjvylZR3QnKkxWk4308j926LPr8d
	 EZGgJwvqCopXBBSEcngNFkBx281u+/wQKINc+H3fFCL/zguWE12KSDgEVdqvwSQoVz
	 jHQm7oXm44fRikMLMKu5uznCAA/iA+SInXcTi3BGf6cgWdrqNmv4AyimXSm1rKtXrL
	 zTbKXP0xBST53gUWed5s+1BKZGuRUJ2ejYTsbrhOEyT6g0wufJxpx6jFsOZjxHN9d5
	 X9m+oEnDSp2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49CBC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403628279.6824.6923454362395938108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2d943c5c967215b992e1c7360be657a494dbaeafd4591ff8976312b324650b
Date: Thu, 25 Apr 2024 09:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714036282
