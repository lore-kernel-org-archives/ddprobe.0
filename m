Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659A81E492
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717937244; cv=none; b=UT8UxlDt1EkP1wJJBgD/VdjR6MTWEJOuZE7WN6GH8cABrL6U6V2YqgbDtwXmb/3BM/XmFKnzZ4WeR00Pk/9BHRgwJzvmNpHNuI7qYjpi8OKTAtmRGIzDnbkpD/FcQhzOxEibJQhsNKZKjFe+aQyf8d5bgWQpM9meheyLeE0F3Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717937244; c=relaxed/simple;
	bh=aj+EzUsM0Qv2IYNrIXWSUKlb0LjxWFazYinul2fm0cc=;
	h=To:Subject:From:Message-Id:Date; b=ewnjlbvN5Pr0MWnnFPAFtHHbJGmC09Wf8guiDGh7V4W6dSpMJofvvqCYgaZoNsNATBR8i15O39PTivNLH/aWENxEmMz5dUTerP4t55GM9edwExVJQ7amSo8yUCm0TK3BMqRwbASLgLbzyHb9JrYIb4YapjQs67+/K39U1AgLhWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6WZtx21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6WZtx21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8849C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717937242;
	bh=aj+EzUsM0Qv2IYNrIXWSUKlb0LjxWFazYinul2fm0cc=;
	h=To:Subject:From:Date:From;
	b=d6WZtx21wynenRqzgOwJO4XeBFy2/XKE/FaA18B0ODHqDx5gTSRyhPf/sHHDSPRfu
	 rjR7kL5AzVpUjahslHfAq0uSD9YIKf1Mw8LUyXWNiFrrlCSATr0z6pYqQPEqpzQKOu
	 rgqcRotYch+U+aWkv1NRLmjaStlx4yxfoDdwQVt2arKB61TSVmBtTbfmKC9aSkAt2c
	 FA9Fa0ZKG9T1iLC95gPxbNz9hjE0cBjBFHwo5cz7mJVTjFr9Qr5G36UAc9yu5m6lZp
	 2DWRAOJOOyUKTlKMC0rJhA1qw28jkBqOhFgxegJhXtcdObSXKqsQnGCleCg3mZlqpU
	 FxfUVW+bbi7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C0BC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793724275.16435.11741986761492008229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c720cdde4a6f6137f8223c12d975ecc75a5f4a31445d14de37631d1b6ce253
Date: Sun, 09 Jun 2024 12:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717937242
