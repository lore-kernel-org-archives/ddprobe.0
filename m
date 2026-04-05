Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52789345724
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775394334; cv=none; b=WzJMLcsE3qviqGxHG+ntIDurOtVa01PXmFZ6rehzMr4ytZmbcWwr1chxLsFQ4V17o77gukuglC/E4Z4wHywmZG6ySA3Lob0rK2PNbd6521eFpXXKr4FHd9sqCnzaDFpAbmJq5rtg+ibmriSZQY+6GNd9Gs7kPhxVK+rejq1vsYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775394334; c=relaxed/simple;
	bh=8A7gskcffI0u0BSQFPmZiC0Us/Wwq5C943zEGzRCrSM=;
	h=To:Subject:From:Message-Id:Date; b=cpRr43g+V/vQ/yatJQj5inXLdGxWwwwLzW3phfW6+V+1dIvXvAWBKvYgLD8kknP5u7b3nxsNAkZBAUR2KuI+mKD+Wj+GMgBND7dZDRJ/wCif8z0X7wq6skMpphBxt4hEx9Put5yd7RCpf2j3oT3tNW/jrTQ2Oh6Wt7lLCXuZ2dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBB3Fquv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBB3Fquv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4720C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775394333;
	bh=8A7gskcffI0u0BSQFPmZiC0Us/Wwq5C943zEGzRCrSM=;
	h=To:Subject:From:Date:From;
	b=gBB3Fquvg8UuRBGn0hOuhDI4JSo8l159lrJJsmSXkJ6kWfK2KtQqljKDvG05QRJai
	 ei/oLz6bpYdMSnRB7nX2nJFQoNJW33HqvNQVobj3cSDkPFoZ3EiN8ui0zWZQ3zqCr6
	 8p4SNNkCKDS5Bq3RFl0oxFwsMWB3M7Xa5Cmfdo4Wo86DtpMXX3JVkrgy3G9tJBi5A7
	 VMt+gjBJuijl1mCwgXvdFaLlZPzcBmxHhrWy6F1sUS219LSV8DVFaq8yGNk/0kN9Y/
	 daRPuLF+Ko38Su84bFKfhzNgyaAWpvphaptXq042NHx6oBOzjVkflCamjbqhsA95Bx
	 L+Bh8eK50OmNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B292EEEB577
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539433368.21833.10672075743410628728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff98e76b016fc52e5c6d69de208a1f81b89e1425b23092c8dc31a12b594a0a6e
Date: Sun, 05 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775394333
