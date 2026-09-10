Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C07124501D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789012834; cv=none; b=eDnUqHZfNtifHEB9ngGZqKphGWe1XFgZYWhTRUMX5cuYQ4yaZ+ilFxQKHzklBH6aAUDmnuZIjTexaSncplNsUh6e8N3MXKXOCRcz6hlsrijXzflP1C0+ldGTPShWw3cCVcx43YGiEN7Dyn307dWB5TjFKjYUWxIpfm6JKw2BnnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789012834; c=relaxed/simple;
	bh=6LDguqoxNZkB680LLk09D61khoAR815bndgozXhKOvs=;
	h=To:Subject:From:Message-Id:Date; b=DNsVqVDjbIa7Q9qPVjAqmMGmEpotEXoINHPsuar+lelKYDBTSKl4KzHJLIH2DjiS9Dc2SEkNocQkQIq1rrVEn4+waF5aiTwIWYlu9cUUEVn7pLITY3yz7TCW3pygPwoy8ELve3+Ue5y3FtJhivjz1f3iy1awJfg3C35FgDbSTHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0JKcK2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0JKcK2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68FDC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789012833;
	bh=6LDguqoxNZkB680LLk09D61khoAR815bndgozXhKOvs=;
	h=To:Subject:From:Date:From;
	b=G0JKcK2JGt4d/VWBgrZIe+cVJhjxWGqUJhxAxSOafP1ar02RhwzLVksKmAbjUzH8i
	 L4hZhpdzIMphagGG23Boe59u/FXFA4fzGyS/G++UmKXzM/6gJm1wA84eLEOlBSTzZS
	 87xYF2d4njWLDSnGj8q49yM2/oeJNeO2gAAWGH5H+aps2w6D8xQoK5gLi99tI0lylH
	 62Xm+OS0+H2SMF0fekLFDpmvFwihKGEc4/F1fGwvdaOTfjjkyDxqT6J4Dr4uKoKrm8
	 BI5Qp1mM++03xhf9mMYqAoezfbHHviqqCt+JgY9atl3b/N4bWWle30jfPj/5sE1NIU
	 Oh6dsgF/u5t1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F55C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901283369.25419.12348423552713368935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9191c95c6c4800ae19bddabfbd328833366c84dedc8e76886ab42c39b6ce68
Date: Thu, 10 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789012833
