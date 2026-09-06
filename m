Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20337221FB6
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788670234; cv=none; b=h6ejYdCqErMro7faz8I8jf/t+MG5fth9QmuAc+/tBBa1a4iGNs4T752zQlzVDiVJf4b1DCE10SfZIc3uQdl+L6aFL+p9k0e0Jl1dDI2s2ZHpYCJVl9O62xHZsk2jOssCds8cTKRgNGx6CDG2GJXKNTtLvzB+m1N8SaafE0oi7qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788670234; c=relaxed/simple;
	bh=v4pKG9dDDQkv6lzjQttYvq+Rz3KQ+vE+xRblTBiUb+g=;
	h=To:Subject:From:Message-Id:Date; b=X3JbFnlghmSMbnddjgWVrftPUlmO35Co2HH8NEohPGtiPiOAt8SxRiTz3NseHzlS/4xYULv6DSkNnhlBleJTk+f1JAnYOd0C+zUJLvK+TExcNXMZBH7sUzrNuAD6WoxzKBPh9HUQwLq4+kXaEZBfSBZ8nOpQYPWqRi4a03TBuh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrEipCxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrEipCxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3777C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788670233;
	bh=v4pKG9dDDQkv6lzjQttYvq+Rz3KQ+vE+xRblTBiUb+g=;
	h=To:Subject:From:Date:From;
	b=HrEipCxsr87BsKxcfkayC+oLujiNNm9XHYenHbJDA+z2KCT0ox0wCztQ/dSAHKBMp
	 /G+ZFOBgsDkiF26ER3nFDF9okkVY2klBePKe7G9p2Boa1rDvvtY7vWlJDUGMwXqpkz
	 Mch1BzjHMk33cVmc2RGHHxL0/FDjMC0oGDLIRLX7Z8HAbYIBCNHYR0gVms39ydsQQB
	 wKAIlxURrhV0EPHeKs37E8yExUxkwe0WzZQzF3uIDuPzEysmcOAhWuWbKlaZsBIdhx
	 iF9WUvxzjeEN3t5/0PjCMeDlrH85RSuJOBC1rvUniWYqR/UssdrsuXVA4YIaI5RygD
	 XL9dX1OFaTttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE81AC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867023369.1564.1454528583476563401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7decfb0f0f43273461c7366f01962e20138a3cf11ff24c56ac2c33cf3eaa2773
Date: Sun, 06 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788670233
