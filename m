Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D42A14F131
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725036954; cv=none; b=e1esCbJPkhdf8Yqqvdq7ZsYHiCzX9NXJbRk5uyOaTqhSasmmVzz0Zh9P34EnuAOy50sNpZGrNTe8pdMo8ij5UpEijvjYbcHrqbC1+4zEeDtwBcRpJWpTWQ1ZPg4G8Tsaki906zuOdo+NAiP8JzLvsxNbvsFhTkOxSVwFSOhtx00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725036954; c=relaxed/simple;
	bh=H4w9+O8HiyPF1kEIGjngmFSVGaYHarzUVOh5HLJvRHQ=;
	h=To:Subject:From:Message-Id:Date; b=eUSvU7l2RSrBfDoKLM2eMrpyTwwrzswgPVtO7vYr7ba5KDPlsSggfe4+yq9jVJUCEvcke4l1jOow3b13f/A+MQ/Lxmpl7byRegs6qzlTO6mgLugz3eX4nOQX+XccK5WG8dGpeZ/gmWF8b0gv9NjzLddMJ7YZbOhT/DwFt2ohT8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWlx7tkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWlx7tkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EECC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725036953;
	bh=H4w9+O8HiyPF1kEIGjngmFSVGaYHarzUVOh5HLJvRHQ=;
	h=To:Subject:From:Date:From;
	b=oWlx7tkQe2glojRMWL+47Fwts0hTZ2qrdNAwGdcD+jTlAet0HcCN8R7mtcgGNLP3Z
	 lIde+dDDYLIZL4mg+1NuQFtfPf5dmV1vHByxAZQ1LkUsixdSFvgDyxa9Rnk2f+kBBy
	 tdv1yEer+CzMVG71JMUAalRdwqL8F/0C85dvf2w92L37iKYG70icxHI+dUKxrOdrBe
	 E/0IIDLgZQexHRl/Uf5q9ZThYOUilcdSgFxXo+zhLmoAbbkeg4wyYujB+xbmEy5S2p
	 CZb6CxXlXzwZMyXHPi1TQd+C9hpEzgIKqaDex+Lks6DbBrVuz711JwcRI5J2o3vBNr
	 f2L6MmqenMClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E15CA0EFD
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503695363.9768.8916307101402601040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501957fd142e436ba489c33c8f176398218ec3139fb2ad36be626a5323f7fb12
Date: Fri, 30 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725036953
