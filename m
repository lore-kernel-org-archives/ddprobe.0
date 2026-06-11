Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7FF24A06A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781142994; cv=none; b=HRgpMWtOCjMU1p2dXWj8tVh33GsfnnjN0qBKsMvIID7Jg/U+0Vi7GLU/brSMcLyxyFdrB028pcOqNFspXdsePkS4kqFm8yn1UvY6n92IvbToNcMd3pm91lLIWE4+9MZMauA8lo5A5QIbIYz1JPR7LO3HjXir0uejb9hFerWD5vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781142994; c=relaxed/simple;
	bh=HpeDbfkitwQFl05lH+eChLc0umUBUENsh4eY4CS+meQ=;
	h=To:Subject:From:Message-Id:Date; b=QHDi3MC8hMzg1UM1hXiofBIP4rJEu69qpSRg753zY+PQbFuwy1AYIpDi2GysfetS4OUE1fDbbNWDA65SUVly3q9fQaVmNy+Plxz3Fxh5+3Fy/VtNK/5beu42rR8yxhsG8LNJHp2qacoe9urxKv4hws0QjTcwB/8NFTghftcUCs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKdb04yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKdb04yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C98C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781142993;
	bh=HpeDbfkitwQFl05lH+eChLc0umUBUENsh4eY4CS+meQ=;
	h=To:Subject:From:Date:From;
	b=HKdb04yNI0lVNoO3hPxlOt0qCjmKlX1lhGY2BY8nFx52w2yJO2CqBv7VJreFmZKt9
	 4qKmp1kft1/a8VW69cij1U4oofKQN8woc/AUZ3GmYXGkzY/HqThLmDM4yItvvDcW8k
	 ivSavbSg/9NVpMA7R1wS3UkkSy+zJ8JKcjidSlZVOB2iXRWzv8FmBZXKGAauMQwrwp
	 Cyr36UOgxr59UsSKrAGtbnyyh8epdOLA1udsPb15HFJ1DBQAJs9+pRb2+niCe9jBbR
	 vlCR3KWfcJCcsrbr+2RVe9iz5r545jwazggC6LLKmBNbihBTYgOd/dqzyOcKmOtcOA
	 vdMxaaQ5i4R7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA87ACD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114299368.1892.5558151624970806135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244f5ccd986755b3837128f8d71334859c079bc137468baba4e2ff70460d9c0c
Date: Thu, 11 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781142993
