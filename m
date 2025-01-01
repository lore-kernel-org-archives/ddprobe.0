Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5AD2119
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735741554; cv=none; b=ej7UPO6DtgFZEV6/dWeVm6OgVPWOhgMvaSE5myIVzO9LhtpdKrDbojHQfVZ603d9Y/xAFzkP3WuIxK5tSzoQiFkPZHLQANiQJhb7ufRt/P7NJf3w16D6Vp6S/8BdAE3MLsdNM8/8dlUVsXwKcvoKTNQG0Z1FMdDphZHqKSSsmR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735741554; c=relaxed/simple;
	bh=oxB0X7n5hSgZTPVjtI7nuAnsQ8zFxA6Z1fgkpRhEpcI=;
	h=To:Subject:From:Message-Id:Date; b=EUOConE7rdm6EerNsZmxPuN21ybHz95tKefIWO6XZovwYkk56tLyRW3fwHcEJbdaD0y5D7cQbneZDuHtXtQHxpcKZjyiE3g92mWWnXqUaOh7lJ42oRujlK8PZwwF4GP+54iVXJitFuzH+7TjBSutcj/AFvVcUck+7kwAPYF1OLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK8FXuu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK8FXuu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACACC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735741553;
	bh=oxB0X7n5hSgZTPVjtI7nuAnsQ8zFxA6Z1fgkpRhEpcI=;
	h=To:Subject:From:Date:From;
	b=hK8FXuu7GNhgTprxxfRTZmXlaD64I29qzcFavC4z4HZffuxM28f9mO7dqj0MMauGO
	 tKTkmecbvHqb0L1UYRCf1S+hqsHY4wdvUivxg2ZEymvSl8IhxkoBxUlKzAqDzw94IH
	 J/Dv0kHd95fdSd8biajcIOpuBLdJxA/eGgGaGIrMI4yoFrV0YAWKqfXhvAfncq4wSn
	 cHCoaLbxde3IY9S89io9+POK1lQy3lVZ5k5VvPEHAr71urV1hSwZHHOuU75u0AHxBo
	 nkHivZcPjLDd/dcub704aKWIf7oH/xxG5FjiMBSynXEFIFjboYMSWAJEQW5s/vZk6r
	 4DkJIm1KeEiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A78E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574155360.5531.10591269150276214052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f828d2904ec0f4c9c29578f00b7252a798241b65a5f82e470525856a42f51dc
Date: Wed, 01 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735741553
