Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD335A79B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782609514; cv=none; b=Z+05uuFhvZypYFgLYRhKnJ4mZH8y5g+gy8bgASyDkVVr+BBre/VNG0CjkMs0jvX1kihVJq04a1Jb/XHHtq2A9tsoubzCwIjGIMemTllDCG35KQjbOSM+z3P5VH1Jo1f2swkaW/d7FHcXznYeEu6u6VqWK5em8N0R1USTOakb6dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782609514; c=relaxed/simple;
	bh=QtiJa/VeGtZWZkfxZFRz/c9/KgR3PrTu/4AHdaqJzjI=;
	h=To:Subject:From:Message-Id:Date; b=D2nxy5L5szu72+9ws8ngQg7A+/Fni7tIUj0wpwonrUoIRYD9O1/F3AwQOROAIibrelLcnBoaX7xxlCRrmAanpTxCkgkRFTkMIt1zGJljXHQGeXkKtXJEgSnmjTMVroLKjIVRYWnsu4l0fu4w6FFqmT//oPT08cUwnC0Hi8TK/Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJO7kxkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJO7kxkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E32C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782609513;
	bh=QtiJa/VeGtZWZkfxZFRz/c9/KgR3PrTu/4AHdaqJzjI=;
	h=To:Subject:From:Date:From;
	b=fJO7kxkFsQUc/IMrsy+AH6RsTg/dnbih9LpF2KyET7WvUHZKb3RKqTG+TlWVxxDf7
	 RDcxR/fHhFPudzl103bpqdnXCyEpNo/lqlVxC36HVz4QD/eYitiSY5+4SWTOj4TeNZ
	 L+kZGDY2lCvw1NMaGu+hiizKT1VIpCesDcravBKpF3gaE3cm/xKY06QJqdWiZtQXcD
	 sSMVbWrmYVMiG4dSh/BNSy2SitdsvFMFmefflA4uGmIVpZSzgyB+0pwv2qaBqZCObL
	 Yc+mclZpzvJ6jr5Wzm/jf7uuoTT6ih3g2TKdwd99CTY8rIW1vWDD7BlFDLUtYz+reZ
	 E0vkjr/xFl0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B5C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260951369.23988.3169778731572049250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf64fa323c91e39ec014d73af820331880fa93d7d4f7e5d90ae09e33711eaf9
Date: Sun, 28 Jun 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782609513
