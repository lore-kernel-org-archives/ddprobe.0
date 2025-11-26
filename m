Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4537945BE3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764191574; cv=none; b=mbDcsA1bfOk+tTYhWAo8tCydZSEfjCNxhaTg7X/trnxfQOiEH6+tz/3mbxlKH/LHDtD3g0LTJcLR5RkFmJ2ScTUuLDmI7DXcDCR5aBvh+nf1pdBGkSoIBvKfQZNUKGTTRXRH1ZNV1jpWtAT/7FWxArwRhM+vj8pu3vAKmQBNMdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764191574; c=relaxed/simple;
	bh=YtIBgMM6ZGrpMjUnyQFg4Q7VOiua31RkuuIg5OQhOPs=;
	h=To:Subject:From:Message-Id:Date; b=J0PtKDBcCLpvsqCu8vWlFLc9bt0CfMqIwK9mGaSeLKUrIBZsbtONphJXAF3Lzy1YP6iXDXlWTg63cmSlaBXx8ZE+KTJZiM42AI6widbdVl/5bap8EyXXQzsfY6anMspZMLPUKeNG27NJ6GCkH4PgH5asLqkiN5grVZbaMqOnoew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBtRG/46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBtRG/46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5ADC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764191573;
	bh=YtIBgMM6ZGrpMjUnyQFg4Q7VOiua31RkuuIg5OQhOPs=;
	h=To:Subject:From:Date:From;
	b=mBtRG/46mPY8X7iqih/ksjJ2doMvgtK+QAJEn4689719jdrF8kktk3hUKTLgHPX0O
	 vJ9VBW9XqcB/3bH+mwCJahiuYlR+eVH9uJl/FT/a/SZR8LaCrCnSH5/9dWKVfUpN/t
	 ec3AaFbFSVvSU5/hRJ8YkjT6zA8eg+BOgndhrdRSExb7luiclNqyqbrJOWlmfqqzw/
	 v/B6h/nJ+jbSR7MLHc9aJvh+eQ6v3vWQy72J6fcgc9glCEw5qsSBRpa/sNRQZUdBKv
	 ZyxjcL0w66tx4js9Jsmv9v6RXrhkth6wAxh9J7kPdp3pkIpDAbC+uVZUdORFxNcY2B
	 d0/7jZAeAGOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BA6D1119B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419157362.21193.13244479962143467765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a68d6a8d5e4fc36c64df4ad71c7485ff189fdc09b80371c97c15e214573042
Date: Wed, 26 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764191573
