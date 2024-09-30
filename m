Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A5383A5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727673954; cv=none; b=Zft6CsJPr1Pn6U502MFFnedpiMxF7AaO5XbC41egXO41xGlUxEvR01bUxzE12W1MEKxbHapMmKR71GfooEthenpNQoo5Aew8pk/tgZiVfHeFRkdWJ/5pq7EjO+Uho0m5sLjQ+2NaoofDCsR9zMY37hUL9tbdbjppcTHNvELhsZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727673954; c=relaxed/simple;
	bh=FJa0fYxtKT7MeRKYrIc/n4fETluGKHCZ0UQe5tuRg84=;
	h=To:Subject:From:Message-Id:Date; b=m6dbPrQuq2aoC6mf39KX81rME0Wt3gyb84VsCRazy4fMOOktOwi94V+uiC6Kl2rHBtQOjyOs/2hr1gWVzjP1XP2s7PupOAgFbVzxkSjCEfYW05ESPMky+YuYe/ViTHh0zgdyNxEZoJIQulPLTBJGDyKm9iRvRlFOW591AnZ3/Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDujXIBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDujXIBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98FEC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727673953;
	bh=FJa0fYxtKT7MeRKYrIc/n4fETluGKHCZ0UQe5tuRg84=;
	h=To:Subject:From:Date:From;
	b=LDujXIBOXPybeyXZcGQYf84m5oqclqdRxX9GahCwrQor0fHuEvhBp8zGiqCkABIja
	 7l9Vn5gjmiTxBCjuP+Xt0cEOKqr9mVUU+aFORTg+4iaKuELuFXqQysyhomVWzlSlIK
	 N4tigB9zWiKcGgD/7cp5RDTgjS1bvqFUeS3r0apB6Pc6uzoYcxNm2ZXUHLZRSGdA0e
	 3kejZyWNH2ZaCfqz1fWuxBjug9Yy31Wx3cQnD0CCl3wZI9afGt9GQYVaZWJ+xZgbix
	 7hk04QHHu7RdZJkusGPHdgRKZc4BMHpGyrjeCB2s2tQGlqgJeUjWLbTISK/TnKn3Wj
	 tjpgQXO9Z53rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADC8CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767395359.24603.14653498164945507044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2c4413830075302e1f0ec99fc68ce436860467ffe17443a535dfa7f558a0bb
Date: Mon, 30 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727673953
