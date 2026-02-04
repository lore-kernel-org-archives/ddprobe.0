Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149E3243954
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770172434; cv=none; b=hhXizBTjn1tGmft82Cz7rVVHXzJV1Z5OXZDOIfR2ACy9L/R53piUZKI6zfbobrv3+Muaodt1UYUXxRXaxuS/kyPpK4omdG4xPZnqu/4zfZipHxQqlFN1fnK0GJ13PG6mLJMWkyp+2gV5PhzkgmmZxht5xV688DEzr2jCu2t/0yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770172434; c=relaxed/simple;
	bh=lFUv1CzqGepqIdtgFmCdAbEO3tUhJIRlwVLpU0CgsCA=;
	h=To:Subject:From:Message-Id:Date; b=JRGBVZPVCvkNm5rLVVbXNMNPJOyH144z8iLLANf6SaYRCPaaVAzqO0ihVhRQC/e08FoSb62gf8Pl8nIeBUR2mwKwl7u7mckXfwM41On8U4a9p2UrhX5eNxnfw4QVgVqNgX/cJjATWtQbQcxfedJqP3cCqPRViIQoQwgsymQVvzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ6dzyNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ6dzyNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1170C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770172433;
	bh=lFUv1CzqGepqIdtgFmCdAbEO3tUhJIRlwVLpU0CgsCA=;
	h=To:Subject:From:Date:From;
	b=KQ6dzyNea5sSQZnF098sNPnM4hLDGgNcdelkO8kzjmaqyPv2hjO549/GxF5j0zA6+
	 9ZdYcyfR74U4Iag4um+IkC7sbXiNTfw557AWDKhAq4dygLY0YIHbKcv1gmNYdNnKSn
	 pdD9Dk+ueN2maEAKgPfGGDo7Z7h4aU+ft6CO0uJNG/G5GRuSqAk8LlWKfjExtoMQep
	 7M3GDvw/XCKIcI45IjS29LuZFJ/jeLLnZ0jIPxafbX06y6BItuwQFb5/osd7CGJWIk
	 57JoSibFpwq9JfSiL+wxEqxzK5nUNScRM134HRHX2W+Z7diVIj6c/qXs3dQwgTaQNp
	 83K9CduKmtSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90666E8B38A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017243358.21314.7786382803532118779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452731e4eb01b5fa892356d1f588d1c73a0c1036dd6c6cc59c43a0c5d45682eb
Date: Wed, 04 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770172433
