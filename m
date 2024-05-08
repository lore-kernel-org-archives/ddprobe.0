Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63975883D
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715127143; cv=none; b=fTvlCOXqc97Uxhb6914FwXqLGHB7N8uLPP9+FG3wbY5JBxEcv2V1emlJf227hw6RccdPkzLT6oY0Uze/nQ92XmssVTNV0b1yeB7bJvMXZvRJx7xa9ols4kTDQe102jELQWojzrYKSIX9cNugKYtDpvweoW2rjrGzCntmulcv/k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715127143; c=relaxed/simple;
	bh=JgtGu5UUUyscQkBxU+kxj+GYyaS+JgqV0VqJcXQp5jw=;
	h=To:Subject:From:Message-Id:Date; b=dD0coqwOvzjoX5ZMeYjgXNbOsiQ/jKrGGwlX17ZoWykne01dJmHj94B71bvnW7kVPneEK806TCPVlaY1DlpJydLBfPxGJNLDkduKJjHfjLr8Wfkfi4juTlcrYNkdPQVLJs/fHcyloBLrUnGn5TP64sovkNyqgxQfpOX1Z7Tp07E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/4BhNnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/4BhNnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3AFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715127142;
	bh=JgtGu5UUUyscQkBxU+kxj+GYyaS+JgqV0VqJcXQp5jw=;
	h=To:Subject:From:Date:From;
	b=D/4BhNnELubvMHKG+zAIG+e5eMiaUkMUnSTOQsIjGvKDwZxWSugwDfEBX8EoFGMsz
	 ZwsktMvb+t8siqcz1BeuZymJumUDnI/BFan1+K4WzLBIiTnV3+rDSnmrlw7VJRLOe3
	 ZSyV0OWjXCw5Sgir1lw2a/gzw2cWri7tCZsEKSQi69gKkSYmBZ9o5YiJnhElnHde26
	 lzP2UGZv9sg+TelufJl24I1dbNlytpFDoePfXkWTaIo+KPN2re/+a0WnJ+PvYihlns
	 I7hattz3DjdK5q6vOqkbSi46OJpklalLj2E9/WMtvOm83SJ6l1KSKAgnLwxuS62yaL
	 ghfj0ETuMFQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88FCC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171512714278.18987.10846826803853093656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58a2f5b700a17e85f952a55edca341b7c54d5094a357c820836de629e34c225
Date: Wed, 08 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715127142
