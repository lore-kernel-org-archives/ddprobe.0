Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADA5283FC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787836835; cv=none; b=jhq8WGoQrDwJTILbfRplV869mzbYD03VGk1biymEFj/0gHFxcfcPJXNmVImvyngM2uXhDXDFY3oAruMSV9nBusPQ7bSrPjxZJs1FShBrNt0bdxeQV35c0xKdWzffi5XZxFypQXNJ77U3prPJLJe1gZFDmq9Nuc1CO3MqImkK1Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787836835; c=relaxed/simple;
	bh=LmFWVjfnZqLeVQfC1F60sqQ4iBJVC0NSr/4gXaw2evY=;
	h=To:Subject:From:Message-Id:Date; b=UPUU8aXTbAHxdYkin8LORB/cvk4g5D2IcipMcnIBdsiduWwS1RFBgevRA9L49pgmPaETSclht5Uv5NFOOFACh2YmUjL3UaDoU4TmJYLR1k71AB67SIvT5g6iNdDhjwayzDEHf5jS4kOOuBqpsdDh0rK9Nu4OUofqA+AU8ItqX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPQwB7IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPQwB7IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE94C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787836833;
	bh=LmFWVjfnZqLeVQfC1F60sqQ4iBJVC0NSr/4gXaw2evY=;
	h=To:Subject:From:Date:From;
	b=NPQwB7IWMkT648I4zgRs/PsBNL2eS2Gq9Z/3N/egW2mLpYsrpvk7lZ9H65gGnQMnO
	 JQ7MaBb8cPWpCDQGs6hGwY3PhdBrDcGL5tTrQAVEBukjEaQdyyfVsUNpLoK5ZCuAQV
	 j1zaiUmrMh/RBT0Cc4giBBtj31ZPsZeUivYthzz1udBGvL3HQFh1uvJpgktTiA51bM
	 0nC1IiqJQnmyyvyrFbYopfkA8aKnBfOJfOgeeEdk2ddLD5Sedv51XnUWDA/HVlya0H
	 DFpSSQMvEe+Bi/f0Rj3ekW0T6J1DcVG15sIO1tYIdtLi6SYdgVe5PVKJSCwr/TsYX0
	 I6ZJtFfxZXnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA011C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783683368.10733.12253121889124296082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510eb0d399b5ac87575584dc29587cf4e357eb56ec8cf1772b0aa9c8e2f8c863
Date: Thu, 27 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787836833
