Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019D02E0412
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763074194; cv=none; b=Kx5PUd2OqdzzuPNqe/63nY6yQFJ5wrjXEzWcRWqJYSwTMVyA+0rClgQsxA57gfOIJxCOHer6AGXXDgH2z+cpD1zUF5U942s2xSg6V6kP5ceWmCt/DGf9QojhrjRGm1IHqP1K1/8IoQboqw4UCXCZka5eoS6qSxTjewAUqTQnO9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763074194; c=relaxed/simple;
	bh=k2dYhp+BQKqYraDb2zL4gs7UKYPGYxXDHuMcEn+kl7o=;
	h=To:Subject:From:Message-Id:Date; b=Sc/6UEupZzQVqElirG4+W3NgtfP0BwfdoJjhPHow5VVhOzkuM5OeQ8LShSkGrVkepbzC13NKrmPSeo2Yadg8KrJjREdQvg8NM326CLJ7drAaJ/opx7hU+wwrczZQPTG8oaaUGdkp1MHxaEdHjn1pfK1/AJnTIOJGw1nFptdCf/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPpVC7jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPpVC7jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED8BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763074193;
	bh=k2dYhp+BQKqYraDb2zL4gs7UKYPGYxXDHuMcEn+kl7o=;
	h=To:Subject:From:Date:From;
	b=TPpVC7jTGlF4jzCN3wLnzh0/qE3hdn8R8oc2N/ZGlkiEu9NO68JejrsUJ+d2F0mOc
	 F0NuNmt9AELsPnlOzNnmU93KY3pJd+JErl0p+jJXRQsDMmwpT4CTCcSsYWLMgCtDtZ
	 It1boXNitACOkUw1vyzU90R84dgbWATIXFciOkbExCGZ/url+uLo13zp1UFq+9dq/H
	 msClmXZgsnxdkzEthYv4Dwrox7Afie80vA5AhcU0k2jBwnVJuKA9ZyEWZtwF0T6m7I
	 jJEr2naLmQZfFBVf2N2csysRwpb45vBqbDgIucMuuOCTasgrzqkD/zoE8ro07DjILz
	 K6Hw/h73V6W9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90494CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307419358.28431.13619494830914667978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5eadcb84a029ac2a783a4307ab2e8503521958f8ce828b4238276559716c1d
Date: Thu, 13 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763074193
