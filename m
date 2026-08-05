Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46699305687
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785888034; cv=none; b=iilQYsO6KC69XkCFCh4HiJxkXh7QIAkirDkRL5ZD1HIWaDQi49PsIvUUmRclGfxsS8sAaZRT+1FbTe32EYix/h+BBJ1qOGAK8y8Lelo34IWIin2a8dPQ09bxubu33XODOaSiTCAf1Wrkn/59Z9mTuNIvB+UXbhRjgSqozFmvWD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785888034; c=relaxed/simple;
	bh=FNGjYxGe50cpVuEOvYQUXIcQx/KOYUNga03QIcVe2FQ=;
	h=To:Subject:From:Message-Id:Date; b=q1EVayDgpROT4WP5013wFlSSo8HqT9N66gGh9pMlBFIwPV30RxHU8J3aflH7Gt9wOGzfgwkXLyyLUMDIhd6crHiktDieOxQt+/M0/WcT+X3O1JbOpbHhU725oqlg7puiE0OfTy+2iPY6UGeyIBYpZk2dMdetiWW9Rxt4ZUlbNjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av3oRt+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av3oRt+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF93DC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785888033;
	bh=FNGjYxGe50cpVuEOvYQUXIcQx/KOYUNga03QIcVe2FQ=;
	h=To:Subject:From:Date:From;
	b=Av3oRt+vV7kHZC+pUwXqk/8aQ+fbMRy50CjlsG/t9hCRuBl/wU/dqdmw9c6vZrAiR
	 WROd/8XB73MsrymG8CpXvGHEHaQdgZ0xYjiMrd2BMS3BJY3TXSklNeQUqNjwokP6fM
	 qM5WALXYpuVcja+7W8ABxsw0hDLVcaonqY187bO9RkOkeInZ4wk+Vm+jwTICer5VMh
	 9gTkzCjcarGlbYGv9Mn944TdEFOwWwq5Ks2m0JGH4lRVMT0wUqJRQ3EqFYBTni6W9s
	 4BFe305gYjakiy+yJ9thYvDt0fiaSx+qXCoiZkU0re+kNGFisilnuVg3YGAVaeQ+mj
	 G9D4RHspTJVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E2C55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588803369.21663.3263755347758489818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b5ef0fdb5ec0e9e517a7ff1fc46d5f26cdfe73b263eb75d0bd3b505ae177ea
Date: Wed, 05 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785888033
