Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D01578F52
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758944994; cv=none; b=lYZrmw3+uZPIOWdd0bZQwIRnfsJOLvC1vndoX2NSiu1agOofdMdkdMAa52WzXJJC8eF3hUc19snfFH23Iwl+GfnvEIiO0KWcYEBhk3VLs5zUK3Ylgn3fiyII4WV91vjdZNoivYUJ9tzhi7NtKgVI14qoie/+8hyvQqRJ8d7kwBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758944994; c=relaxed/simple;
	bh=wogevwy7LTgp4F89KxMkJa7Hr4aWSp/2RBf6engH2oM=;
	h=To:Subject:From:Message-Id:Date; b=l/RSCO7FFiPT1eFGin+95MVuVpc+86KIytbBOKRsJUTcX7MMJzkVazG3R0qF1FJVTGve4Aed3tCIhraB38sGa4ttiuSRnowuDsPDM3mfOlmdzq8ERY+N9NvCh4SLSk2pdB5zJRCEAdYcj03Q7BSM26v54jQAUMtt4R9TxtJIT0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csJJb2V3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csJJb2V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA25EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758944993;
	bh=wogevwy7LTgp4F89KxMkJa7Hr4aWSp/2RBf6engH2oM=;
	h=To:Subject:From:Date:From;
	b=csJJb2V3SRQlwkiuSESWakKi9XkfqrxrI+jt2Ob5VoxlzJ66//PyHfdGO31su/dxD
	 X/yf6NNGn8DB2t07UXdNGeW2rFxwjAE7cBwVzjGibI7I55/U0jMauk70WFjJ7yW5UM
	 9wV/IBtpmDDF8ULPclLWm6u4iFb+nDwcJvMRnDqUoH0m8IGMt1WAaHXH1DH0RmmCpq
	 CWvPmUzbAEshPqpQI0/8/Z9TskoEN6F4V/5OxQTdlqdi9VvUj29//6ksdAlEa/IX/w
	 zaBwK+UNjLniBg56tzhznkfHN7L0ix6bnXenhk/LvjfuN9MoGn1Y9iWesZ/yDw6OpG
	 Z8yQAxv+O/mEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98992CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894499359.14111.12787464934441777950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b096261c6643082e7b8cdeb49f7b2350ed16f23fe3a6c2a22134c0a8bac1ebe2
Date: Sat, 27 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758944993
