Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876BF10A09
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715920343; cv=none; b=tR8T9icUg38GsmCR1fLMs2dVavcW7/jbUCg6bcU8CePiD7ccwgD6oQfMuRLrwl0UeDYbksSM7hT5g4Kl5TpVcrWB/yGstNTgzMLbwqjfC46PoA9lywBwgxa4F31Jnuxr/rx2ZajPLvCr2GKkPj99WIM1ypW8DtRd94RZDCJIxkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715920343; c=relaxed/simple;
	bh=R71ofmi8OJs5t//686ELqKHq/hDlroTunv/oUs03/e0=;
	h=To:Subject:From:Message-Id:Date; b=ZEJNYUQP+Reo5S/b6HK7mZjXUmMZis1egxJYljhlOb04/BwFYkYkwNVYeXBP4rrsxzTR5JX4SGr7nFcqOy13iKrpP0NvmdhKLKa6Wpm5Tqo1EVCEwrz9um43qKO8Ergo2kQgoz1zcCCEXLc87qiXv2NkwJbXMVBPL9OSWAZnO6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkI3CJv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkI3CJv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2293C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715920343;
	bh=R71ofmi8OJs5t//686ELqKHq/hDlroTunv/oUs03/e0=;
	h=To:Subject:From:Date:From;
	b=QkI3CJv8klh0NUZ5c8CgdD08Rl0Q5pbqaJV1RvnfAO8yXyVXwk43MJjrxiLH+bjrc
	 fWNYgioBS5sw5srz0BmlOCo77puF1SWnoExpUSPFtW44BvOpWU84e3O7z3MQ/nQZVc
	 fHXbp9LuO54ST7hJC9tRc60w+TtWqL4XGuzesJDxbbyMTjLDWYHyfn2yzKQDOft5sB
	 QA5PdxD9ufd47gN3H/kigsbMuygeUY9t/R2taedDgl+3gvG7qUWPwuf5xYr2ZeV2+2
	 s9kqmbzUpdbm2eo99l009lpUG5ntqCABxm2VgO+Ek3kj5rnCyAozEDE5uTCpXttvdd
	 OishqjjK7gLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB79EC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592034286.22925.15963661510181355668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e239f511761a9fe41c58612741f04b9c5cd183fd810fc66f6cff1dcfa4be39
Date: Fri, 17 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715920342
