Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FED35DA7B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787141434; cv=none; b=VmA3RwawtPPmL1Q4faSDAwF6IENlbuH01KBjBfu/E1VC8WBEH+8TV+bhE3mo9r18p/h0pJNNVyNl47Vj0TrVBCZMCN2MguFdMKfn1MYiGmfB2iVqIE7LOPqunrjjk12BrUoEGQhE6aj8aE2wLyEJVI99b4KafNHu1PbaD1jTECI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787141434; c=relaxed/simple;
	bh=9Tbzc6747CTqNKB98DDI4QAYd/pnY7p8oCvrbEtlpYA=;
	h=To:Subject:From:Message-Id:Date; b=Im1HM7ydm/qsarxhG07+SJIEA3kKHacW+PjLF0NWha0A9+P0L9u0ItByOd7RwTfOmvIf4QLa4hNQzzfnAcb8L1Gh1lFy+ci9JODztB1wIUnwuZqLJVBh/9njoo6Qx+dH4G/RfpI5QnNK0P+zewGLUF+NQN6A+0HhxMvatcmzK7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT9ajA6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT9ajA6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA8FC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787141433;
	bh=9Tbzc6747CTqNKB98DDI4QAYd/pnY7p8oCvrbEtlpYA=;
	h=To:Subject:From:Date:From;
	b=OT9ajA6Eed68PP2Mt/kona6Nqr6ECpiMnfHH6DTpTuQ1V/lep/YSznj+y6751UQoU
	 JvUwiE9S8Ow1XEN+4huSlyyyH+m+rA0Uecs94JcURCZySUlm+x79tx8OYkOtw8TXSU
	 OKYNXEQPXEtnBQQUDu1qHQzEc5AitzWwQMbDME1x5tDhchtI6FDx3veRPtFjQM88tc
	 Dsv53lVNjMmodyvkeIa8IsSADIhqx17+BooV3gY9Dt9mZ5NzNoF8eF3lq/NT1A7TP6
	 Q/JFUpSgEw1ofQWWEMWOxhvP/lekqF6Oyk61RYZFE0yyjRfxTD/oXpHIH9c/i2jmQb
	 Z57cJsw2CqhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEACC5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714143369.19425.12304601667272597192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777b6b85be763e29294967362c9440d2dc3306c5fbfa3a21ca7d2a74a64a2718
Date: Wed, 19 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787141433
