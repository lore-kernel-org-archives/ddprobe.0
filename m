Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5592A156F45
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772054094; cv=none; b=Q5ktOJljdqf8++uRGkoGQwI6UwFwZdSR+Qit7bDQkrkLC1JAGOsx/RZlbKUx9EifRC502cFNHEyR7BL3wHp/dkP83YoQgyI62lmtkZCDe4OisKqm+3JqZq6IvUXuovp824QCvYxKOjPpYQz1yvoU1ZnJ9DOriZua5NcR2wN+Bws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772054094; c=relaxed/simple;
	bh=0PYD1TFNI2vIk5JLftHXXh9qYVvWykxCS/sVJ0h3zhA=;
	h=To:Subject:From:Message-Id:Date; b=uj1NiSjjv9H6Yg8LfD+33oRH9BX0XtWCBKdvKGL8i/g1XoouJwp9jVqPFZz7ddXF7nXm013+ESkj+34gvAdBRCVSxlFyIfb/HW+jKJK17FxqFkcFiVsFL/C9M7cJtuEgTWoCVbWZxxD1RQDC6OWxjjndVcm2GR49k5XkREJuAnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmndPog5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmndPog5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1A2C19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772054094;
	bh=0PYD1TFNI2vIk5JLftHXXh9qYVvWykxCS/sVJ0h3zhA=;
	h=To:Subject:From:Date:From;
	b=PmndPog5EBVxH/WZu/ACHYw8DDDyTVxnpW902SqnBK35WvOuskln1vIhI4pNQct2p
	 gCgrdIaoQu9xkakhmvT4l3iv4vQzYItAyvN5poFsUhsQYiGxiDmedo7egQLcnnz4+B
	 Bnjvf7ehqGXTs+iW0goXhLuoyjHo0BoWGq98QAoHIuk0UhFjgP662XlQpe53boJykd
	 OvAYAwluuMu1UoIGX0krhBKzFQeSKrQFSB58R7t3k+W39xyHH56cbJRKXvk3nfX3R4
	 8iEgiiN8GAvQYYqUNv3qG5Ir8qbBHRvQGtC0WB/3+jTCPfQdn6jy7IzRVGd1ikG1Y2
	 KvPAex+cojmsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C962BFD45F1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205409380.32721.841291218182423021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27af6bf85143b6643887820e80de46a1d8fcc091e6082d10cb474a08219a4b0
Date: Wed, 25 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772054093
