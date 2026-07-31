Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BCE3EF652
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785494436; cv=none; b=i+TzEfvTonh6HNXz/SAmyHmL28q0E8HF9mxWj7AoaHGKuu6DYvgRF0pVIXSKnAWzK0NT2swX5DtI/rFBxlGjE1EitPLMhj7+rwVvLmHEgvVdB+SCRQbhEhz56+5tOVMs+sHq5r5VfrEz+2WPVBYlYIKVN1PYpvsrLZtqXfVi/ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785494436; c=relaxed/simple;
	bh=bGgSebbrSr5onLrkmBPmw5t+ZkhD5K+b2WzjLs5UQbI=;
	h=To:Subject:From:Message-Id:Date; b=oUeK4SksMRxL2e+1Gry/5kmkR+/SmtRoZlJRYbb0YyR4A8ROXAaGefOCA/pPYVmyDBtsUkZBISXNgtGgcxeFsD/SRQRh/bpe6Tvpr2f7TjC3PuFpsslpQXZ0tPCpNnSl4YHqlM2ystXBdF9peruEWVUfd2ZKPt3393nS7vr0qCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2kcFlg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2kcFlg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8549C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785494433;
	bh=bGgSebbrSr5onLrkmBPmw5t+ZkhD5K+b2WzjLs5UQbI=;
	h=To:Subject:From:Date:From;
	b=Q2kcFlg9hcqpSftZyC2szQdAFpVNvl7cmCPWaYka6Q1fgnvjmRYQWP8SmPYpCSSNC
	 VLP6mafJZRD8Jk89282UKkN+zC6ftWipOf+59z3gjRYHInZDEwUwwgJi6y7mumltd+
	 371OVsMlSiNrjUuatk31jGphxPHS8bw+MqOyU5lRsznqnsTJ2LLLclv0RSlt5uQPWo
	 CeZ2CG5Rr8CDWz8Tmce0X1wRQ7AVzO1WJ3b5nUFBj8W8LC+7pYGigB5HFOQ19CbQCG
	 2pt5BJcBdm+bXOfy8fwV/s/ds+TIHfb7zW13Yfn68Thjpu5au9eIfpA+yyQyWrRFIc
	 3PVlxJlWuuHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BEDC5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549443373.24215.2019583846666413326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4074b59064386c5558b12e7345e873d555fa01a2ba8b9483b6e0e4aae9f559a7
Date: Fri, 31 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785494433
