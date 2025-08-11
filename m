Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A982E403
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754900394; cv=none; b=G3XdaN9txWFH3xoGi+QUj3eyZF8wVRy2hr0NYXBim/EFjaKMd9j6EPELyrI53avO1Pe84G2pOWaYhvbj0OdjhbfOUYfafU8HUQ9U30kxYNQbj5w8XaoHQ28wiocNQs+eg22E7+c2lmwRjeqZr5q1reEjUaFIUUSx9yrTHP20Ut8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754900394; c=relaxed/simple;
	bh=MruLHClC+5u5wfs5CwjIWVRz6Q2D+2SI6Ph+pEPiFwY=;
	h=To:Subject:From:Message-Id:Date; b=p+OoBcz7iLhjqkdCh2BCNHq2+XTBcHKfoG6XkSTNjPFiYM3gTOnD8gOYQCZxaNJpclcxooz8+fQDgdVBpFk3D+jOaVNCere3rC9tMhbzgrq6zdFxgC3k3flErTsPOEdgbjf86z+o5B8KYlp/gUmlC39kv4GiKgKPw0URVWHoIKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhvYmkhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhvYmkhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0859C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754900393;
	bh=MruLHClC+5u5wfs5CwjIWVRz6Q2D+2SI6Ph+pEPiFwY=;
	h=To:Subject:From:Date:From;
	b=dhvYmkhlfWW39KWklfXwQJc8+/rOvUNR0o72m5qNEx8Zt1sVxJZzE1klSNlktVJGq
	 NDtZ2NPx9cRAMlqf4kS9MLXxxw5Ya02QTgVx7Hsa6X8oNaduddZxVILDnJA6TJ1Wo2
	 lvob3+s7CCsHFBrc54epj0A6MUOgV75VFeiHBtCK7/vAIqk6yRqfnvP3C6bFJtPCjf
	 9Ii/O4vQGZ8ppYkVL087MBlJ4WINaATOMe9yR6ai8VHOxwtsob0NujwCyCy7xKk74i
	 MkJa7Ym6H4YhY+4lU+uvponJmST/ZS1c3+VgpnCFijXfEyuzdK1X+O00rbw20JJ5WG
	 SfG0douDFr6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FFC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490039357.21256.591964205361132866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40469aad82cfda8245c03620e2ef72d016beed95cbf11b7e2f76d4ae8fdd5365
Date: Mon, 11 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754900393
