Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2065D2F5485
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780380274; cv=none; b=LqbMxR6rMwfLlQ7kKWYmIffrzZ9Vyd+oKLwaJxreIMOeswXJiI0fNTYy+oPQe3M9ZJPXziJEUGPXezfsx72YUaMfN89SmwDQ3E4c5GW52y/TsY5qtWjfJVjf882+vId3HUdw7Qr5F2Es/OPh+DzyobHbmWuCo/oITo69c94qOP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780380274; c=relaxed/simple;
	bh=sNpCFSoFiUsdOoExQiNBeYdXmWPk8f5MQ6Z7CBlC6CY=;
	h=To:Subject:From:Message-Id:Date; b=VHvTEQwvGn1AWhmWbN0oH9zrGEn/L5QE2WsSIuVR9Avb/W6kG99Ux7gQLYR+pgt16EdwFkLoArkWwIeUkeMETK78crJ44aAIwjJUDLZQjLLcSpzZFe68kDtanZMZdWe4PDqr8qZ3EWCg9lufJjNeIEuYngCvMrv/AeINlIw4XaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXt/J8/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXt/J8/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17EDC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780380273;
	bh=sNpCFSoFiUsdOoExQiNBeYdXmWPk8f5MQ6Z7CBlC6CY=;
	h=To:Subject:From:Date:From;
	b=PXt/J8/PMDkWCJcv+/Rfya/hH+nzrHXWFQn7Y4YhXEG57XJp6/HLUL5vu3BjP6AKR
	 qgKMFvTtJWOj9dFKXmteQ4sYqd2IA8MewcnMTzUzBcXdSeF0nim0dRLgYQQZr7P7ks
	 nqOXPnAptKS6BCcUpSjegp8FvJ5i+QSiS2ZCPIYHg3a6BaVcHfuPUE/kpfENbSgleT
	 lqWk+WdyL7LLyKcrrSexndVhIFFwo+OT5KZSSuQFH9dCYjlhJiIH7z0jIivAlXfYgI
	 OEuYk5nnp6X8rNwSY+wDGB49kHYBNwYi3TYp3kMPzOWSuVCkqrAa8m3xUuSCyErzo9
	 e+VAiRBRCF42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9124C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038027368.27674.12124025866353894858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61195a0821303f4601220fc9ab95a1540276e1ba289c960392b289c6a23631cc
Date: Tue, 02 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780380273
