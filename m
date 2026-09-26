Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E695207E00
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790439635; cv=none; b=apFJJvxwQKqx7LqAQ4e455JkujvGm1GjVxKqt5pb3qHEKzwBFrxkmaR0lz4lbcuRH0xukkcsDio17oqntNwiKKvstOceV31v/7Ue1X77AaN05yu/AS3QbVUvO3c4V50SXzdOgowZfCCvhzvweJhQIgIBNqChwVyGomJYsecNIws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790439635; c=relaxed/simple;
	bh=MEkS5SW8myE0VbXVEb9K7v3tPEkM7KYm1nO9zETRLJ0=;
	h=To:Subject:From:Message-Id:Date; b=nnA3sp0+PS6drf1gUOHjADv2bidq1wy3GUQcrxxDkSWe8NOidDplKc/AznGZ+K7VKNXYwCDXWxO2j6ujy7O99/lCAcyl2xt3wPFF0GVRO9gW1y4FfnXwQjG2JnmXASXXfqETJxyRiafekwMTElqeQGdnrZ/ulgl41LsEv40BynE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHgwWuaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHgwWuaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB75DC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790439633;
	bh=MEkS5SW8myE0VbXVEb9K7v3tPEkM7KYm1nO9zETRLJ0=;
	h=To:Subject:From:Date:From;
	b=MHgwWuaX+eZltj6g1afOyA5cUL4D7E4nZ8eCBVdOTl52rHmpMGrfj+glas9SNnY3Q
	 7A/RDDbvMjUHmNW4qzweGotA8KSTZXo7LDgoWev7qSq4ABik5dcWc/qhq9n4HXHPZ0
	 UmD+heUxHW9H9ZA6oWPv6/+GxNJUyKNm5NGkKL7UpJgQP6LOh4+fDKvI0L5GlqiG9+
	 NIxPuWPghHEu68oMVjR5KdbnEYibA9Ff9C+tj5BTzbHrXUJJ4o6zttcAyiPwQYaKA2
	 7vhpOx1aA2XTCcsOszFcHOmUZA2Z3BTC0U1dpWkziOi+XvxJgd6AkRBBiGKA/LNG9W
	 PxPPKBWhQQVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA428C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043963368.22475.17765960385615814972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c122052fbc328a3b1eae905de3e9be38b7df3ab2df15a1675d6c19f99687de39
Date: Sat, 26 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790439633
