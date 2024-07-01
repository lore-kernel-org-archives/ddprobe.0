Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5990A12CDA5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719847523; cv=none; b=F//8XkvSSoK8LpTwFB3GaPsejKqTyMHqSl3OsKnsSLqb/FHXgpkxG9VvPcnrQjCYJbrQj7tH4h1VIDVXo0fEf6ghth44C2/GlXjBAMMBxfdiqI9syg0H6u3AigIuC2gN9aBW8FY/NQaK1bNuwIDFI5KpllNYhgnRectot2sU0Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719847523; c=relaxed/simple;
	bh=weP53orF/Nv29fq0vQhCG3IRtX7rNpw7L33hA8n5jy4=;
	h=To:Subject:From:Message-Id:Date; b=LOVOjP60ryy250BLJmJaXuXIK+TLAt4/lr7cAiB62LeWVVRv8KKO77V+Bi8A0ZAspIdWEIoByNm42m26cguRQz53Dxs7qnNvl4MMYOAwVdfmKzklLcbFc9Tb8E4w2OLwxVGsQw+hsgt6Wxgu3crgqMJhIGThnK2lXFYYh+dB53s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfZetkic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfZetkic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4695C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719847522;
	bh=weP53orF/Nv29fq0vQhCG3IRtX7rNpw7L33hA8n5jy4=;
	h=To:Subject:From:Date:From;
	b=WfZetkicAHhHf3qaWwKe7vh0TiEv7ZfLGrg+RI8L8HjUsrrBYvcJQQJ+b2PP0MPeY
	 TeXTy2IjtiIB0abfDKz7ZfBT43DF4jlSZsHHbzZiWXZG+9VeiwC1VdA4dfxT8VirEb
	 9YYJ5Lr4Ic37UF3GCkHScGLjSN/gUYFMNeiePdrGX5HBHzaMdWXUJ/CRA/LIvFskfm
	 jQWtyQmch3OOw+jgKGuVqei5Z0rAqDOmKybw8KLelKMlBrpucgaKFTpWSWCHVCJj2l
	 GG9/A+rdGSDWX7Z1rdz9qFdvaLukfYSMZbEbLTV5UY8w8c+YMLWOUmrrMrJ1qG83ZP
	 YPQj8j3yh0uWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF392C3065B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984752277.23234.9929174280468491552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e08682595d98918e1718010a97c12c947d43a4cf3334528265f92ce33dda4d4
Date: Mon, 01 Jul 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719847522
