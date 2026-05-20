Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D64C374721
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779313234; cv=none; b=WZzBA0RVqreK6K32sa5oheYdGR7/t9j5HZlBeEHMEsih8k2Z6ng1C8D0RSCXwQTBCbZnbr7SHibJu73y5Zk6BzcfXqDj4y6J8gfMle1shLNpFuIuSU35BcHy/GtuJajsjT0UgDAqheiNNWszZUNP+bkllTHKdxanaWKrr4IWzCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779313234; c=relaxed/simple;
	bh=yd5RjLtZbSMWfhMXJ/bqbvwdCMY2w4zEpayLAmMq4UQ=;
	h=To:Subject:From:Message-Id:Date; b=LUmDmUNpLJbr1pu1mqhiceqw0cVei/0BuUmm/W/foQ1pyizNojfaiuO6XM8oA2FGXSa7eFBRo1q/KoNa7ahVoorwrfDkS+w6smmNQPwYus6zefRGBg8JBATRMhDsLd+YC+b3morZqPlMZqQjHerx1njBH29K9t5OtQtWZYJQczc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeFilNkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeFilNkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3020BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779313234;
	bh=yd5RjLtZbSMWfhMXJ/bqbvwdCMY2w4zEpayLAmMq4UQ=;
	h=To:Subject:From:Date:From;
	b=WeFilNkcaDeVP70RjZTLoB/iQOI7rg/xxfklm6ow0XytMxHPJ9Z/f+VI6ZNvECwgE
	 z0djQ9zIWBQsfqbvf88iysEwoA4FpAk92AM5EDexcaF0mfKiFkYsnwBGoF50lgEXVS
	 Zpe01lBc7ZqziNDSWNAiu+tbM+PcGc1TuI3xZOnj5q+QS8K89TuC1kJEZugktESWw5
	 Q/cTYhAi1nK/shghe/FNbxJBYaUbfv+xEQN5j/G/rs+mwukfBOHzEBvkW64gcWVTBw
	 mdvxknQYK+AaGBt4bsSWUKnL36eI0cCX+HdOeS6c/qmkeMXL+EGtD6GYVKJAZbM9HU
	 A++0sf2qvUDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E97D0CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931323393.13236.13164565016400061776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b85eae014759efbfea86ffc7c02914e0be9781758848f42753a6e615c8be44
Date: Wed, 20 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779313233
