Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374EF158D6A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734515754; cv=none; b=bX5KOcbnf8emL1JSLnU5iJClKSc9kmeH5dVrSsO28X44HDXY6Nm4QmqF4DYBL9CrRvfkX/VfJ1/UNMXmfmgf7UwDfL6TPOVTeeP2DSt5uG8jHm2mOYdHUHaKAZoIeiP4jS1oGrtCBb1D9OICsEUpmJnkY7KfzQ4fEMFizrGHhco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734515754; c=relaxed/simple;
	bh=Tu2RIudM7b/DOpe6AmGHp0230BHlApJZOGGMrgZcLpM=;
	h=To:Subject:From:Message-Id:Date; b=NVsk9Ld/a3JAObOBHDu/1RlhfBboktr7ryZTONazILlzIUmxvSa9Ac4wTR1uIqauSwUYK6/iXkNtC8uFlnwYflbTEcppJgmLhr3gKNYijxdI66MqpAygSUQDOQl/imz3YY2bu/E4crTdZxJlydUQnprIozzb7JpxV2OA+2ClgqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrxkB1qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrxkB1qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57D3C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734515753;
	bh=Tu2RIudM7b/DOpe6AmGHp0230BHlApJZOGGMrgZcLpM=;
	h=To:Subject:From:Date:From;
	b=lrxkB1qqFcq3ujgK2D4RQ2tte52kM1uWCFLKtklEEXYsPGxjXsIzuG1rnF1NoZQcE
	 VNOHL0eRXn+pcSVu9q2yX0SNuIowdLULFbWfKzbtxrs7oegE45u4rdpAvU0cW7meec
	 wiYKB6lLTU6QY96Aa1wWUbGmvVeSWh4SVWUnOf8BxkEcr1TD9xBne2vHWvYTonb6jQ
	 BfRMvBEhD4gvUrDQZquvlOVeO91UoV7SZXo4+m/sbOgXCB33Ab8B2iGrNKM613u17n
	 pR+hxKjzhHOniE+ypUjYtad/El2LZzX/wddKqdk50nqzkJvjuRuA1IpHnBjVzXRGPm
	 SMcuMkVVLdCTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34FFE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451575364.10885.18347662285245840878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b7d24f3ceb2a4a7aca627fed8d467a485cd0bd35f54b5e915446e448badc13
Date: Wed, 18 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734515753
