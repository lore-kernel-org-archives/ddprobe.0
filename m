Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22388142E83
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776526654; cv=none; b=YOiPQ6Loy5qYxPax6B1vIFNf6E1UMKUM+Fm1ytakzpig9DbcRCuks3RUmF9FcfE8x8tQ8HDfkerIC7E7gb3aEYVvcthNSB1d5vlKPYnMzvZScTpQ774vIGrv0OUOEbxf+tzDQ4ktYziXN7n/mY49avMiqz/i4YIf+ENvfxdx18Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776526654; c=relaxed/simple;
	bh=8dAslfbF/+kJymVLrbiTr5IcKI6ULqFad6mgWKYbZYM=;
	h=To:Subject:From:Message-Id:Date; b=uPGAKFGPPTJyDiKIvEc3rio28hvImjThNOs5LktT2qfbRllbDN4RnAInoItmoF9mdfaepos/p78kTQ/kKq82tXCkIaprulTz0gsGgZlQhhFXWp3pf+HhwU+2cdpufQjpkj3jBwlARSwpdX8998at0V8IEuR4jSOop2WdpbhvGgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W34YSYnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W34YSYnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE14C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776526653;
	bh=8dAslfbF/+kJymVLrbiTr5IcKI6ULqFad6mgWKYbZYM=;
	h=To:Subject:From:Date:From;
	b=W34YSYnLxVPhkf9nBDrVBG8wubvBc3h5ksgi/UYhshHcwK9wlcbpuQM8Tc4dYNYp3
	 xKDz1Sou34T9W/7WKczhrtU5Nwv7eP/B9iN3rPjSqLuqVOaQ2jLR4aLXR4exJEkCA+
	 VlrgDfAA5UHg+9f3gIG6ygRR7XSvWhXzkPZQ5drR6uanMxhnpzOXZ6KMi3FcNxP96y
	 lNRHOo/dFRRMlqdfOMVqnbLCr9hwwDf6sE6ijy/daflD3nNE+4lxewrcP9O/WigLUc
	 v1++XmWoQ/Tt8VY2O6klbJPyWoNLlQvoTPA2zeEkxc2qFXAuuBQd8KkFjFRR4G7wZc
	 9Mp04xtZwFbrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF583F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652665368.9645.2250425237215053337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b68cdec75e722e801f1d6d1825c0aa9a687d2ac92990e282c3aec98540fc7f
Date: Sat, 18 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776526653
