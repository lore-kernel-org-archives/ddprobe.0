Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F092E2594BD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776482854; cv=none; b=FPBw2TjV5H9ghHvh7rgUAwMPYTUEq58YjTx206qG7a4z6XoLKqXRwN1ozEObpD2zQxCNIOHz/vyNQE7nnDDD2uU2dmLiRvD3EnOS7NcmDlrtnJtyhkHwcH0tpR+N1U9dYaFwjIC3UEiVV9sXoP7NeXQ+jg8CIy1MerWv5zjEcyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776482854; c=relaxed/simple;
	bh=FvjW/H8wKwvS8rSKapelsmp+wMoC+EhUIYxDx1QDMhI=;
	h=To:Subject:From:Message-Id:Date; b=cdbT41FBnVEdtvxrBGR8gwJeoeXK3sRw18cCjVarGGKDrgppY8+I9kgumtOs6KAEM9okj2pGnIPxNXxEaCGfH0/kRa+uU+S1HyZWweFElkgwv8SAV6iA1kdKvZuaUmPUXeVwmPcKoJzyQ7jlqcR5ASYwvXasvoGWHJ3w5vmPboo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srZUFFgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srZUFFgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC354C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776482853;
	bh=FvjW/H8wKwvS8rSKapelsmp+wMoC+EhUIYxDx1QDMhI=;
	h=To:Subject:From:Date:From;
	b=srZUFFgHgBJJE0Z6/kHss+JGA+bU+Cqq2nXj3xhG5Tm80ga2xqrnXgXW3MHu8QTrg
	 0YXgxiV7u6nrjgSJ+Ejpp5l0A/6Tcke5YdAwRvLbTgP40ijky14r5nWnz995kHueqw
	 /fxbuW8jcCvcZFYYbJJfBa49E7FdbSpyjcqPcsAs/l3Okd+K0kYi5oitNc83dkb6BP
	 770WK0lCCFVYQVo9A2cWjt1pKDJfSL5q3MjJMi6BHiiJ2SoVOnkYh2Jrszt79BRmSA
	 /Y/WEHFNnXlXpAa7ZSgjVidzpj1SrsXbjGmunG7qBhYbv2TN3p5vTekH/rUlNIZl3z
	 p6t5ig5U9ZtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9880F99C78
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648285368.25529.14139494397204907005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97fd270191b14c6361f660c1fc3dac07e88976e8612cae65d8b8b87eedafb95
Date: Sat, 18 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776482853
