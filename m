Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5D6567F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720339583; cv=none; b=MkBtDRPDHArJt6eQsVgJsHMmNOcEcQuFca4X1Me0W1snm0y1yNJQzQv6cYM00TaiC4t9mJdUwaMZ34V17uKytTi0B3EuNm9ypyjSxu7qPBnOduEd6Q2KhcBRhQwXNfnmjjLC8EsZG6pXLmaxvG7t70xYW5dz88Mghg++xodygUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720339583; c=relaxed/simple;
	bh=48pE/VuvyQLy8VpKy16mvjtfaxsNtQ0vm6hxzd0kUMg=;
	h=To:Subject:From:Message-Id:Date; b=QnWJYEI2ZtcUoNYItFrU3U45OhcjmAfJ4uzR+wjnxXaNThMcPwYior0XzNgtRjBuAGact/K4b7H82v4wc78K/J+L55314kZO83a6FlNTcluvM4deiWZUIhMVjMYELca3R+ISKvuemGPsWSlql8bdiSACqsjZUzMlmcIhHU/mov0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLlx3VpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLlx3VpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BBAC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720339582;
	bh=48pE/VuvyQLy8VpKy16mvjtfaxsNtQ0vm6hxzd0kUMg=;
	h=To:Subject:From:Date:From;
	b=mLlx3VpMCbnupb17Z8hIoekR3WW8wYZmBkI/dqyNOooc/SRhEhvfs0tgaO2kHDDDI
	 MHZ96IQhM/BIAZf9PtvTHYn/WwrvO5yjp8FyohJnn0I9V2rlaL0iNu8tGaZvsWtJrv
	 eN/LVnpLGCdtXu051dLDJfBAHJ7vzUC7ufCQf9XjY2Yy8Eiy26jFa6QW9JvMXpRNAl
	 /1eVHchUVJoYt9FezEafwSrrsHekisfzrBBd4lHYVqzdQM74N2cXnL2DJ4sMrfg4q9
	 SekgPTEckn/8auEAfQQdV/9Y4AICKPw3Mg44NNLbBIx7nXySRWZMhaVl0YhElccZ23
	 usKbYZb7/c9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF1C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033958276.21833.16379031167946818359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d4be3cd30a6f8e0138dc328022fabafae5b47d474f076809da673ae3d1467c
Date: Sun, 07 Jul 2024 08:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720339582
