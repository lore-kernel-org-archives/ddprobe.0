Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99E321ABDC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753735194; cv=none; b=Ex+O4b0xSiZlhoGsoc36GDmVgHi3t6VFAlJfqmzN7DvxCQHRlK6oRgfQZa75qFEonO9ZCjwQ+WAB3lsfU6YSmIKLjGTVSkz6EfED8NVjk/vPB3CTBqluBCuT67BSiGPP2IsJL/7AEZtAFcY8sKNOU0PQJYBtpwXO1lKjUAFbMvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753735194; c=relaxed/simple;
	bh=eoRD+1Gd6xg2MOwzl5pnVGbcmg5xcKWw+AXd7xG+E4Q=;
	h=To:Subject:From:Message-Id:Date; b=jvIHokALV9JzjKoKCgf5+o5XWnCrsbAwAbqRtvA96xG+6Rw/WaeWVlFkKBNIULOWQDy/vTE59KpXDZfO4I9SpefWF5MGfui6HgOtFvPpj1+5ZOsxrbQBnpHw1w+9KzS9Vui1VfoUy35YMSH9ypPCvq92zeFSeHPSfSW5CZzxlWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZpuGZBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZpuGZBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABCAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753735193;
	bh=eoRD+1Gd6xg2MOwzl5pnVGbcmg5xcKWw+AXd7xG+E4Q=;
	h=To:Subject:From:Date:From;
	b=AZpuGZBxsnfqsccAbeyd77c7PdA0vBwAZ4A2sdBoOhbHogpnHyr59KZO3a278ge8K
	 ujYPn37EdLwqvBNPFpgVWB1ZsK9xDwHOvNp+G59zBf3svytCl02sGmY0qgMcspBJud
	 ZF3J3M9/14TngQsRr/6PU+Q6zuI1JTLN3gzesY2bihnuhJ/CLxTL7nYf2o3Bzvl8yb
	 Udov0Lz1dG+CjyqwDuqVHIBiEkKM4sIPPkcN6C+shh1mHuyp7H94XsMKB2jfROOni2
	 1hmaSbxtaC2yOP+RSmnxd8raZPqOhXP24imxvCSY5h+9ktXlpY9Pm6OSR1yb5DNitu
	 qal6kfAkdR2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CCC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373519358.22833.3771353091443549792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f51f80e780138396310f2bf9985a5e3ff62708c68fcaad4fae9d60ff77b0824
Date: Mon, 28 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753735193
