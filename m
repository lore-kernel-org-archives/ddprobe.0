Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1973BEEAB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757825394; cv=none; b=Ski7n6GiF6ptqUCVzKC6/pSgUcMYkr0Bp/w5+LnS34dh33tvfJbrhV9NVIwOBhhU/6b2YMcebkfPwBGFrIOrnyeUDVl+8yeDFA0Sy+6TOOK0N3yXch4g7DmgmqoZDSf1Wxg6R4h9OGWnkmMctN1/w87/wIVrTmErK/e5gGM2V8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757825394; c=relaxed/simple;
	bh=IMM0dPfXiXYpNdwrAJ3IHxp3ULqGF8Sg1ibG7FfgK/M=;
	h=To:Subject:From:Message-Id:Date; b=dgPlJPHE8tLcHt6duMn1UKi1I1PLeU02DSSkeBSCpAG+L/Y0ea4FcgxnfvLzC6zT27AI73Ahs6Jc9dTtBdEnrGxXIlIYQzr48QoSRtZQ5L5mOzcpeVh1yDhoN0Qto8xz6dMfhsgOW9snXjKB/GlmQwTSqGCC1w2MS6v3L8wj+Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzYOEveh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzYOEveh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38AEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757825393;
	bh=IMM0dPfXiXYpNdwrAJ3IHxp3ULqGF8Sg1ibG7FfgK/M=;
	h=To:Subject:From:Date:From;
	b=dzYOEvehKCYWnyWDd/21ZYg6m2g3CuvIhJ7bokFPC82XYsIQvCeN+yxsNDAGU9TNK
	 bjtX3X+Lt4+VddZBN5ZRXkwSKmkbtToFm7REMpVRHCQ5jKYk1X07z3OZ73zUJSxnTA
	 Qsbf3OXkuajLnLhUu0OUDYKsT8BQwYM9HPGEKOwwmuW46hMCPHC44C60IifuUhsGyD
	 c6ohw8z5WFctpwhBgAGbhJADodm8l0QSjhTBVw9aqzlJB/QGXosyP6QZUj5Yu7DAXa
	 HiTwcNKxFEDVPg4tOfX7HnTyiPDSjGmciVdIuYliHG5YnEUSenQrMGutLZl6073SxX
	 X7N2bXKRRFcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91803CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782539357.22316.8493862705369634034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021769fb8114edfe7dfe7d7d2032585e1b1e7010f31f9b920ab45b9f3fef5ebf
Date: Sun, 14 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757825393
