Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3CE366DB5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774787694; cv=none; b=gz2jcbSBTzOdVL76emAVI/1YAy8Sf/miwBUoMPHENJ+boAVhv1xSPzQVcM65jJO3Y3NbcASph+rH0Xs8NDUQMBOVwYGAkIxsjcHuSGQvzxx8waJNzz+6eTBjjUGreP5sy+S+ejkCKYE6CIh/M/QBDzPzzCQZTdgR51q9Ka3TbPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774787694; c=relaxed/simple;
	bh=9tkIyJ9rYABFib8lqct/MqHnzpRxvTzACx0iyxXrqx8=;
	h=To:Subject:From:Message-Id:Date; b=E4X9JiAE9X2xmOqjUjyUofTwLs3/bJ6GknuUx88KJqcCgsGcDV0lWQe6g5Zxuugfhx2lEqDb4CUTKXhXKqMMAKG3wdOooNC23kfL88GXDNesQCa184nV5I/3Clk2r6nFYuOtycxTaBGVxPUvZHUQdUhkTtrsMdWlraNPVVmc9O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib7GUQCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib7GUQCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ECC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774787693;
	bh=9tkIyJ9rYABFib8lqct/MqHnzpRxvTzACx0iyxXrqx8=;
	h=To:Subject:From:Date:From;
	b=ib7GUQCWJlTn2wvi5NoZZf4LVnhZen1tfcPgtzKdhpIyqf3aNstqvOHl90E+lH8eq
	 Ml7B1Tt67G5J2HHv/Fxmem+65TPjNQTRxB6VtoSSwXP5GbFO4c+A4YVNlyxJ2eU4FT
	 Cwg/99YXwfs5GfqVBVe3YGhUTdYoSuMWjVL/AloOWZGd1iKtjkjqnbD2FFWEArJkmL
	 8p8RlHO4NlDm87bZJJD9jIAfULIHTa9NIjSjyi0TA0y71yrVw0tTOS/2EHqD49Gygm
	 Bb9ha7w9a+r+s1R/C0/qTCkaSMaxpuRR3Cwu16MH3FVmtVFY5ucvOhdV5h54wKd0b+
	 dSm8Ay5MVsgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075EF3D600
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478769358.25683.15844839055883005225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66baab01163e47745c94a123c65646da6fafafe7d25a543544954978f2216418
Date: Sun, 29 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774787693
