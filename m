Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0542D10E0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738323354; cv=none; b=hxeDi1FCmdbkaY2iTtzu1qS0XhiOKcXcX3DLwBWlWRPaaOo8cdYAa3e8tvqpWyfP2fsVpLzicWjClJwdq0fo+8JE+DaZ0Y4+KP+xsdoeBU7bQVYZvHbJjTHYy5ANwmpZUmJkLdB3EfPVOywY/KlupuOnfwo21ndWk9tTclvnQdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738323354; c=relaxed/simple;
	bh=T2GBtVf2xS6Dzs7gUeIZV6k0rSoQG+ufwz07jwswgYM=;
	h=To:Subject:From:Message-Id:Date; b=ijWbz2FZd6rMZyzdQ33f+u4dtIOedzOnX7fEzlaAVekSwJf3iVxLZqBM9003dx3clX90gQd9910vrTG+mAuHDuAi2035eA5Ha/OokoAG8q9SnZxchN07YgiNyHcvRSz2qP9vySKK3mPUjzjgG5Iin18/h4l5R/iyJahpAj7pB3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLpnB4Qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLpnB4Qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B667BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738323353;
	bh=T2GBtVf2xS6Dzs7gUeIZV6k0rSoQG+ufwz07jwswgYM=;
	h=To:Subject:From:Date:From;
	b=KLpnB4QwIVep8TAmnSfM7lzhrHXQZneUqVlijaQPrssZLB0mE6dmflVfC02Kz7KRY
	 JcDONlhBpOd68rFX1DBjEOHr5uNSfcbIsRHKoSpuN2uJxPo1FlHtRqV3fJ1/95b9N5
	 /G/Y/7bfhL7MVV/z7iB8Lm8AAGeu4LDZhwcZVvL+8G2tjB8FqH1R9dAVAtbcx1Xr/1
	 0Smn3KQ8AnuA7ANbrUBh2AFn8BMX5NYuqgjkqPtXSxHR3kWrstay/YY/s34yjGEH/q
	 p9icST5ZiJjIWxhqDzoAs6P5/DfGqL9WWS9UOefc2YBCJxK6cg0WfJSknsmdqq1UY0
	 r2IHQsM4coPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F476C0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832335364.20406.15198268377388846932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65d69d13ceb1ddfbf009e8f16da336292aaeed6ae53d8ffc62e7149571fb6c2
Date: Fri, 31 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738323353
