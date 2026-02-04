Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3655C199E89
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770174234; cv=none; b=shTJICMhmTWPotzJwUHXviqbEqb2DveC9guPsD8BR/v8ZYVgXqrILS+Jocz6ILOl6lG0MOdBd7wb9G9bpAUI/R5mZ9gu0Oe7hPmu07JFi6aKsEUEqcPhrb7qjHtkza1OhCV0DolR1xLozhvU9jvI52NSF97LV17oPcF2ykKtF9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770174234; c=relaxed/simple;
	bh=l7Cd9KOIS5Rj6h4UouxgJ6I+94fshj0/0vzvTU423Eg=;
	h=To:Subject:From:Message-Id:Date; b=tjHMS59RUoUFJbdTs13Qx1uDUsrgsx85h80E6iQjcCEPurJtzNzjjkYhIqMlOMRT15P8nUa23Ik9V0zDILA6alyNkaviU07z/fNa3JC1/t5XUffSHI/Sxt2TLOU4zJBsX2NjIKkVhZxtk/WZQ2WierxN7+nGYVOQIwfXcPLNW2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvlRDSSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvlRDSSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5590C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770174233;
	bh=l7Cd9KOIS5Rj6h4UouxgJ6I+94fshj0/0vzvTU423Eg=;
	h=To:Subject:From:Date:From;
	b=WvlRDSSdpwIPIYRjt9vgN1dwRF4mUyFvkS/It3J4YA30UrSk80BYLWWWXy82iNqE1
	 +zhd+NTKImtRIM00R0mNflj1BML0A25/rQCA4UjarI1GlVc97S7NBtdKobIV4fInVi
	 nXL9TmrMJ6NhjdrSgfirXyoEcmLpIec36w1kMMTqJMsPXx/FQzjfmi8+WnBhHlUejG
	 V7wNzC/dUxi3QFL/XYje9lVW4yhDOcdxelH8NejzF5H9+dUh72JLw19pMwU287VXRg
	 RX/MZLEIH/ujok4NZB+VGdaGdf5zjDveAv0ylCl5Go6ShVWvJ36Mg6DAu8XvydWPeZ
	 WPMZPUQ2P/kLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B5E8B38C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017423362.16381.3482763550382691742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73be239a38a98437e8abf6eea9c5a7cc521671e99f642d3de0bdfe843734924
Date: Wed, 04 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770174233
