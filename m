Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB0F3126DC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766853234; cv=none; b=qRGxHDS4mlC2bJpJCCZGgQ5aY9DHlygTDmS8L4TOxSAgKqg+/TY5NxMeYm0X1ZayZQYpVzqrc92WncbS31W22jHpz4KMOdG0yGEOmWzrfXAIIplLhgoRIU5+WryCxXmt9Bf02l59EDxV0CDuXXPgBgKCjSisSDBD2UJBkpsaLHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766853234; c=relaxed/simple;
	bh=E2znRvyyR4O8feTJmUyw3d5VyDgE9dTtEB8xXCiAwOQ=;
	h=To:Subject:From:Message-Id:Date; b=mPFYMz3pspOkuTjsy7cGitz164T7mUgZ7rwowIuhmqxlAQn4OWEJATxz3rlYw5JranJzw0Ge7VCMe8U786P8SH0XvHmnD/06Voif9TXhbrA3euyW+txwE1eHnBydNNeaIi1VfNulhKR1BI35Lmb4sv/i2PnyFj5BPx4JqhZZLEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orTLJbix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orTLJbix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766853233;
	bh=E2znRvyyR4O8feTJmUyw3d5VyDgE9dTtEB8xXCiAwOQ=;
	h=To:Subject:From:Date:From;
	b=orTLJbixmyHQTqRF+PWCqdSviQZSwXeIIPAFoYFEy1PY92gKr96C7sykPOyLiu9lN
	 M4BmlLuLQ8ay+LKzOufEwoRLajzC0QSMqotlqc5EmJbvjBid8sDX8CIAb0+n+0MVSz
	 E6uoLlLAHntjOa/DE1WyvcLMjIEq9KqKW6GUlw0dAV4FRj9vIqRn8qgW1N8IbEQwZS
	 bPJ+/8qQy/myqglEnzfz9ykO7CECi3b76Jmd74lxLRV3nKgJijACeC+RN0R75+rd1/
	 ST8suODe5NA7Esj2tbHCnH5Evdy4zsoWc7Hcweejpg2iRERjgVJRbLDSD8pusKL9jZ
	 oDgHxcyL9XW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A1E92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685323358.27553.7058716098037415151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6392a42e55d211c068b57b42477314ef80dc54362372cee5b1660a85a1f18d
Date: Sat, 27 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766853233
