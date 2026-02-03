Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6D33A4F48
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128633; cv=none; b=idhz9nmD/FiGsAY8eUYxGBq+Q7MYAPFKcdHc0lkHeyI6dXkvBz+wFUHlTJNqYPQBHCj1kYSF+UC2t8inKofyicoxO7f0VvX1/hLCN5HkMtQc64234ESYyZpMKUHEvOQKJ6a/24Pq6RXdviI61yKX45gXChLaFgZrbakIYDfBMGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128633; c=relaxed/simple;
	bh=H0jda34/fae1c0/VpwgW28BUf9UbAYvLkfSS4N5mC2k=;
	h=To:Subject:From:Message-Id:Date; b=neX2DkUmWdtByrULn+o2s/ZgC662tFwHPeWtnYxxScPBg/ckYEHmgLlArUf+OTKUJ5bF62xZWoKcRFU14ddm2BXvGJfZrD045SYuNjRhTQ3Ei3p7Y5Taqg0VaPqu8vjlm5HD8jWOjw/MhCWqZWmkdZP/8jHhsseDRYjtKuwe+fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpVoSpmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpVoSpmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A95C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770128633;
	bh=H0jda34/fae1c0/VpwgW28BUf9UbAYvLkfSS4N5mC2k=;
	h=To:Subject:From:Date:From;
	b=BpVoSpmOJd77O/HqLrb5U1iy8mEP2fh1qRnXALUDdnMRG8NvC5ob8xmvhFKVhLT/p
	 TYEojW6gRl4X/t9JFvsYnIR55n/e9rMr0YlEJxx79l3hs2VqNbceDAzMaWFjZtYlt4
	 8mO0lYLQiFwEPIanUpjGQst7Bc84o2Skf2FxsLPICioZK47Bv6eEU2Gute0RAI8LQA
	 VSuZAjwaPZ0ew1SNgn6JeUsT3pRlJF8kVMdhTm+uVuiLtTsTWcqcJXpW5zPrO4wjSO
	 RLGc2H0+wZF6ry+imjJ4Y623WWEqexa+Cx3aeutgmC+WfkKLqbbjZDpueHcpyOekTk
	 OZ/Qj+rGLI4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF0E87839
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012863360.29587.17674573305918174271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b49c1367ce449bd4e32cb1e395400f0ca1c942c201a0316e812891626a8fe93
Date: Tue, 03 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770128633
