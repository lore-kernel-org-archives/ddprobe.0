Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FDC3630B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786725034; cv=none; b=cBNbbNLOy0rKY0scrPyJq+BHyIxdAJO3aZJsUSRZXyZBSzPCcPeb4kMhFLPWRWPIfiNUiwPZfkx28AFMxbeFQZrWIdDnqhNGy9+8eeAmM4w0R5ie2pARsqQbpPXRxF/1TWqyb75Z3N4270pNJdAOH3MM3dw3Rqie3x3HIZgzqRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786725034; c=relaxed/simple;
	bh=QglE7Gz6mb5lEa310JIW7VjFx0AzS8z2ntxtyWYeVdw=;
	h=To:Subject:From:Message-Id:Date; b=QvDdGK9AYQlQlDBG0Ln5+26stSlZ4AEuKaHR/shvPmGUFY4InWSB8ty9wQblX7TbAULR5roAIGgYRriNXw3t925hQ6BwSnlYWv3zWiOI20Wul77ini5icPcjAKHxSUw5p0OW5Wm24NjDDq1x7vMpsSxgK2Y00ZAuNGbWM+3aQ9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAjwG7Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAjwG7Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF65C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786725033;
	bh=QglE7Gz6mb5lEa310JIW7VjFx0AzS8z2ntxtyWYeVdw=;
	h=To:Subject:From:Date:From;
	b=PAjwG7RcczZmT5f07vHQnlw7IszloxhpTrQSk96HcDDt9YLahTFAvoZpm67wetyqL
	 l1pZrf49CJ7S09Wb5/1S1tbbPyLyEWGvjg3+BLfQCAVJQc0TG0nTOlnOiOOedPo4za
	 pPdvOTbsn+zTids6IKV9rLe7uLV+ElCgZuYi5WkvvF6oLEA+3zSvx9lo4vrGD3Q6SV
	 9JE7WYUhXS4pbBNPw4DZ/P/oQlEJeb7SPqtD7d1vy80tJpfUy0jrP36GDpglg1RgCJ
	 zMaXxj6makabyzoFtk/h9Sn2rDxriHAPemlBEAjuCqry9mTqQbE7pTy/6ime6Vo3yR
	 rsTjBm7FH7R7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CCDC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672503367.18875.15663997295122496301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81996f9164f8c99502ce97661b97e394edda3f28bb35db37b9c28d3e2c2c3c02
Date: Fri, 14 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786725033
