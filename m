Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADBA27CCE2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750288194; cv=none; b=YBEUOVu+tXztrIwKrFXP0xg+KnTk5cYVQKNYAdHvAxgZ4l7J8nG4YXds2jYCaZG/7THjudkdbNLL0JUyN/KSgNtRUD89xyJ7999JLMatllW/fnxSW1wfuIatEDw9/drC2JGVT6yfYVjRhoBRZl3CKCKb+95gATMq7DOUccG3cL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750288194; c=relaxed/simple;
	bh=2NPID7T9sPTLuU5KoTIgPbfkErv5fmscRf5TytWgRIs=;
	h=To:Subject:From:Message-Id:Date; b=LtXYGXsImurGzThTcVf29WuerF36rxOLUS/UTKRB6q1e4KioGm0/FcKAsFZ89jA25dc11bLCP8jyLEXtCF/NxLJcCLL/vYGjrx3EtzPaNitcZ3LrdFnefIcV8rORrSBEojlxPT/SEivIj44UYXd3O2fnNbgwZSDtgbS4Qufgv2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjZd7Lkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjZd7Lkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12B6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750288193;
	bh=2NPID7T9sPTLuU5KoTIgPbfkErv5fmscRf5TytWgRIs=;
	h=To:Subject:From:Date:From;
	b=jjZd7LkxkoyozPmkRBGRHXpSn3m2zhAMTMZHbRR6qEsek1WN7URGWoiny6HaLIgU/
	 1J3jlKd+AKRU5KVxRRHSbGsBLkP8Z615aZT/eVmeg73bpXw0Fjbg1y63fhqBQdoMJb
	 luYkXM2SFFfWD+9GSIVJJ8wfBbESal4j9M6zcZuHZ7JGcoXk8g8MyNBheil09KyTbU
	 gEP2GN/R20YKR1ACbgKc6N4zOUm6ejq8nTVXXngIHlE/WEUYEvUfC6A/tTm5jDUwgA
	 e29ddSyrbvoEDFgOulMbNkTAHIjyqhTnAaHO3Vpi8nCgcIcT/cao9kgZWrD4kamkHz
	 CFyGqJdS1ttdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96765C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028819358.30275.1197602635729914188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed1d1624890af2b2aebdd55fd7e896cebf44a36083d8c9808a047da8a34d389
Date: Wed, 18 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750288193
