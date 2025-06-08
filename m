Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2715D13C8FF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749421194; cv=none; b=lBlvO0WjM3aEZdT7pz52o3GhEa0MEGjD7N26un0tJZpW1quO95JWoGKqqu+CpVrtNNLVLo9WoCtZpTSSvpAL25RBCWl9kN1haHRW16RGnyAGckoeIKcr7ncRkwNco+ZZUQva3ZnHZLXPYP/mV/cq/yuGm/lM1zrDRL7xb1W5zHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749421194; c=relaxed/simple;
	bh=MieB1HAPT0v1YtWNe1x/5d6WDXjCYrR680YCRSy6D9s=;
	h=To:Subject:From:Message-Id:Date; b=B3rMAStHdXv+omHVoOZ/bVlR+UttF60dGyhPxjfQs8e0k7ruTadopWIO3d+EZifBtrxNZ3DAEiDv90Ny4J11rf6ELeSAwah1Ozujimb9dB424+AF1+q4lrJ1Qn31aeP/V2OW6/9iu5LKMtXsaWlXE22gdyL/NQwMdHbM2XXcZNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ87cuWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ87cuWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8288C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749421193;
	bh=MieB1HAPT0v1YtWNe1x/5d6WDXjCYrR680YCRSy6D9s=;
	h=To:Subject:From:Date:From;
	b=LQ87cuWovOr9mMLEWMl/AtYaYOlqdOjfae4r38FzEnt2MskMlfwoAcEvW7f5i6fAC
	 hM4ahGMoV3oYdMzIOIlj0LNXaF8MA0eByhCHeXESXuD/rM9tbwOBCPbojuryzurURy
	 WuojKouwrbHjnoMGrMPRrvYSGL6v3cYgU95mcMpj2S1Q3r9mxiHrNmc+ZqQsls1YHo
	 FIbcdP+w1KJx4Fh3garR5aLpcRiLcff7nCUHq5uTzOT2tSQV/EXByv5MGwcVqoP9fD
	 n2VTzm+d86YZikofFV754Ld8FDgdS7AGz8NXNhQwCzBV32gKtshmr//2syezcIHJBd
	 VUuNg7p8ILPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BDC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942119358.16003.10540776461010484997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548cced5fe128601a9c70ba8f18b5084e84020adf64d66b00f3b483de9efcfc1
Date: Sun, 08 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749421193
