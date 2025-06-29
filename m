Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F732BCFB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751214594; cv=none; b=gQEogrtIrM2eQu+QbptFfBrBQdqHqCfFV9vuUV2/HcBc7zfl6C8AgnKW4FWsyTkf69tnplpzj1XJZmqWXFsMM+VmIQj69m+hZiyTNR5fMKAvecEhg78ghcKWej6J3NblgWkZNbrICd98LvScwhUKDHhzgHLhVPgsbBNbFHJfbLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751214594; c=relaxed/simple;
	bh=hIQpXn8T+bXxx4fnaZCNjOkJ92IP6vZrfFZPD1zse1A=;
	h=To:Subject:From:Message-Id:Date; b=DThi4DR2GuC0mSZtUq3b9gTrc3DuMFt97uDVvX5IEws2hUHUBqqFiFu52WRenehwTFknPRlqPBv0rncf7dGy6jcR0x6VLbQKq3tsuG5tic9KwxgXbkfyh7QIXYWCSyQSe5DtO7iGVMmv3+8+NSU8wAbnM3omZXvksETJ/Ivu5zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO2kgfu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO2kgfu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4076C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751214593;
	bh=hIQpXn8T+bXxx4fnaZCNjOkJ92IP6vZrfFZPD1zse1A=;
	h=To:Subject:From:Date:From;
	b=SO2kgfu5L6Q87voCEy0NrLjpBR6SS5Zgjabd/0c7wIqNm9wlFp1r0f//xWKXJn1c2
	 RbdKvbaUD0n3seRvbVjaqkeYr7HQ3wDilaqjJooVVBJsxugvPIFkDu/ddblq2NR3/3
	 D6RctAid2m3RY5aUKzq8z2HjJKClRaRNSHwFPgfrSnNz+j81mXWOUt5OWkvyBFNMMq
	 Ik+Icq01qZN/GVSoDSbCaUOyjSW6NCufbqlriiI+1FCW+c+bqw1C5/Ud1DBFhwwMp4
	 u0x9LlEcRoFUaZPEWfLKpNx5YyyVLfAykW21eEbyw7SOoL0KbGTRDoA8xPmDLW187x
	 uaTyCuC71xqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B1C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121459357.25250.15222670369139128292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b455fdb6873ec7d15d259a4f6da6d7d62ee6de5bebb8ecda1cc0d8e398a5d7
Date: Sun, 29 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751214593
