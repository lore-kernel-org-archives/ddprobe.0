Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B491F91F6
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787148635; cv=none; b=ppgBgu7PXXM3HWZXeYMySM+HR7V7dqNYvJEtVTHmfRbjJz9Agro8jL76L6HTpi4LKn2vTZMENRmLNl1mNboyIUot1ZfbtjPltr59LCmW3GDNlxwE1VwAXjgo4rj5E/Mv/CWvg1w7SFcb4bV886uq+MOTzGDCk05I0fR+oXLD0Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787148635; c=relaxed/simple;
	bh=h3R83hmtYkK9jho55V+oqlHdef4yt3FmLxxtpraZHZs=;
	h=To:Subject:From:Message-Id:Date; b=pHKzVkyJn5uNf1mVLX0er2IqkSQOdxMyeZjnSvO2q00SQpoxEr5CYh9LH9XzhSDpj1M06F/+NOFEO/L7UjfwcKMIFkVSzIHbzZAqLmBKJZVwmEDr6DuVn0yjfqi63eqBLeugJA7roQO/5hNlO73zXGVit5dvIA6ooW0PfLBcsd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+yaR+9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+yaR+9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74D3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787148633;
	bh=h3R83hmtYkK9jho55V+oqlHdef4yt3FmLxxtpraZHZs=;
	h=To:Subject:From:Date:From;
	b=e+yaR+9/ho1OJYC3hKCQNLoxtfE/W6AG1jDGHRiB4e1wp1UQA/yr2WLgHq0NN2kV8
	 lG0BVPgKmGlQ7fd89UKqpAgNky2eMSljy6ci2vKEEiwTHy65BhTiC5snaVFbQZlmyj
	 cjXRg5SK+RHwT+q8yY0K3Zifpghk904VqFqxr4yuIAHVoqXhYd5Qzmw2L5hgYQelH0
	 o4nF2QeZxOouFHzUeenX1224D6FevkNscmar9c6ZWTpkiN0EUzbOYs6ToiKF75xuoI
	 8eBX7kbNx98cT7u6pCGQ8BLDzYR281HQr0oOmSRybqcZZXQHW0kzZV8dU2Hl5T4AmC
	 UuEma0OCMLk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD249C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714863369.27389.2563577381407982702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9cf9e6cc1624d3c6642434103dc8ec1edcded62b0fa97a4b1ccd093aa3b9c8
Date: Wed, 19 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787148633
