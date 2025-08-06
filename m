Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384762E370A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754472594; cv=none; b=iBZ58dwLV+OKo/v/RyIQjvjsnorIWHQiun2bX1kEr+oefWdaWyOq2h5/VZBeyIQcSwW6izlerUxvQnRbghXbZwR71ZyIAie7UVl3KZiST1EXjhGqH+LYMoW16QQUwB1papBCAegD7SsqHt7+COnY/eLSg8qNSPr6cKrh+Z8hjnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754472594; c=relaxed/simple;
	bh=p96w58MRduZDaBE4hDKfZknL5Ym/UsPNUp7u0ddsTp8=;
	h=To:Subject:From:Message-Id:Date; b=QP9cFHv98d166ZN108lczEB+W8Z7b6qOuzcIJgjuOG/MIf9Z+kZN5akDUWLC4UUzDp75BRAlBT/l0Ik2XCG9ng1gefH2KtmSGmAAf/9z4k6k6vkkwij8XtrVBH6Z7xfZBJL96SvprU4I0jiOlN2VkeyYaHwwD3Gf0iR5VEHKW5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOptqYkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOptqYkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8B1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754472593;
	bh=p96w58MRduZDaBE4hDKfZknL5Ym/UsPNUp7u0ddsTp8=;
	h=To:Subject:From:Date:From;
	b=jOptqYkvkrMCH4J60OU6naAuXjRpK08FC3XXrj/ctd1zePKrAwMJJVGFrmQk/nb/a
	 GNOjkyUs/x2sNKOXJeREUp4LsEKA1iemstbZqnzQ76GoEcfmElwDDTJEZ1mm4Kdn5A
	 WHDlkP6D/Onevh2QK/Oa4qfqfcLEaJWmhyqA8qH/iRpINCaKpn6SjPZzADPd25x1VF
	 dW/OrFvdlLU6wU8GkMOpOUhKR8jqJNRmT7sBkTcziNf8QcsDs6ohlp1S0xSl1LG3lv
	 cAxTKGVlIdeWy3k5pqvL2nY2SzTkaEbz+1AtQymtsoZvYvO6TIrXz3gZr8NhRE7/UC
	 fnGnQZzTOinEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4AC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447259360.27368.1920214460162987612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7208379f7fa644df6e5d7bb414ab24d9b418a6c60c040c004e720f097ecbdb
Date: Wed, 06 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754472593
