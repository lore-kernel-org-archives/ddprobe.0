Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF41153572
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711579097; cv=none; b=aZdiVCsxz6o03ANA3hRiHktiDF+b6g2eSwrOz0QggLoMG/sdD0qg9okyavVUGqJGYLMpolcgtNIEnQ048Pygiy6fkf/dtwbmRc5q6T680Smcgt7Nz4VK0R+eIpxXQWoh9WdoVzoaTcZ7U5z6XFJejAbipmdhDTe/0+jxHfIpqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711579097; c=relaxed/simple;
	bh=GJNh/5ISqPAwimBt+CE+oso93FxLkEcXyRNFli86HEc=;
	h=To:Subject:From:Message-Id:Date; b=k8s7jgYmRppsFle02hqOZrjIXGNfI4wN0MNG3KEotg2h5JtXJ8Pr33j00HLwzGig4necNBS2iMhc5Exl55OxaDAOw0My7IuTTOb/WtdoRFgAgUeuvwGmeWjA+pYprg5obX6ij92/LFdNPiONfdRbRGTDkRZ/kKjW/Q2hxCgD6dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHnr5egQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHnr5egQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E45C43390
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711579096;
	bh=GJNh/5ISqPAwimBt+CE+oso93FxLkEcXyRNFli86HEc=;
	h=To:Subject:From:Date:From;
	b=OHnr5egQIByTNo9TgHGeOZHOLj+bAWD/r4+zapk+6sHN96jr0HFfaVu8sJ0+nl5Gc
	 kchpzFeTr9LyXxzUtktURkeuIuVlMvhm8spo+XKAXeBZDlGQUCXrbSaIZb1iZ9dqAG
	 Zq5XugDjEBkEzgQn/b3igArc87WL6SVt8ZajjBRu+MECzNhxDZDgFGLA3acNF3fKa1
	 m8ulNch1A/LR3AyLOLBceswSbdQKIVEDIaCKQnY39UVOm/ccUdE/VE2GP5dSYb6Edq
	 1x1TyioBQWxFkJsY3YuUEdpGgmskl/os5KOZLhelUatJ48vyBpjUDdJGi5oYEZMyyE
	 3f+zbQQSgh9DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BF6C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157909638.24548.2948583336746852918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83636e81ce8c646ce3ef72b784a7119683392188d7c946c858c1322bb96ee054
Date: Wed, 27 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711579096
