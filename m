Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192481E98E3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766087034; cv=none; b=BB6o6JqkuhwfppCZvF4sjq4SmdsetsO/rrq4bhGn505tUmlJHQHV6gO2oPniuzEWVqqRmxLb+DvaK4Cu3/X2dstZGmlrIxybwzGSmsOjk6ec272Ft3pDinUpY771DkyhBVamnR/zQ4V4jfcrDdM1vc68YwkQ/LmU0NPsB+cs9as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766087034; c=relaxed/simple;
	bh=IwSIwbMYVuffWahxgad5juLMkLMiZ1DBvxb0pvuHGbY=;
	h=To:Subject:From:Message-Id:Date; b=I5ZgKXifl2SLEw20YCqqlFwUiLutiO6q/NAJ1LInTpv3jcMzBNA4TJHx8iQNZH9twvvquYtX37aKU2wWUVYLrjMhQqaE7ePgt+VHNcVAEnXTt8lqg0ErHcfRaZfX7nJz2jfgvM9NdWZPikTbl6y/3az3fm5FK+WD+dO5sCAmLc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAuNvTyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAuNvTyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766087033;
	bh=IwSIwbMYVuffWahxgad5juLMkLMiZ1DBvxb0pvuHGbY=;
	h=To:Subject:From:Date:From;
	b=vAuNvTyHlA8aTuHhENXj67lRmwYymiNkG3IwGUpX96pqlWwv/zktK/wS860yOWhgp
	 9hh1JtYxwyi0EZi5myaZvTNozQzmBfKx2XFdUXqmQaKA/Czar+gW8zxOWM+WSJlVIx
	 gcpYayUTJHrOHzUU9MkfrZ/jVAGVz5j/gBrH4QCYNMu4++qA0GlflyW1FIsVKqvsJa
	 m9bNSjVkmXW5z/tKva0UI55s2B3bUHesD4E/C4k97tiiIPeAgvKBPLbJ9A39lHTYGw
	 DhGEJOc6HJjVEKXQnbSaA9qMbbQupAsOGKL+cUiifG+haxog18QDY8qwVj+PUONLkJ
	 KQwvMZEoTx4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F85D70DF2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608703358.428.5019545902567687414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a936dada3ef2fe57a9c22b09551ccfb6f284d4125426f16361b834c92c928774
Date: Thu, 18 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766087033
