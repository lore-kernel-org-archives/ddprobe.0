Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A883750A9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773256494; cv=none; b=Llljp2WxZDQtbmIm4D3iAQPuaOdFX6Z7Ze0cCMCP/iZVADaQDfcGt5Kae1IZ/OzMFOl6WJX36wL42OCzg+mefN6sseyAbgzG8S1nHTUppCQYiy+G7O6FclIqbuZMKA11479N829Ub2Tw+KisOOOydVcnnZsAnJtqCDD3cuW66LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773256494; c=relaxed/simple;
	bh=0NPPhr4CruYzj6zbnjttu8+8xe7B6+FLVqdijtYSpn4=;
	h=To:Subject:From:Message-Id:Date; b=RYDKzrJHtVT9VmeFQ1EAKjLmEMeoY3/OoJxV0cRZgwJkooJAhaUJLRw4wA3R1fEncdkru+F2BptxG4vqmrwfCfnv6LGbYmDhok6EqVxkhE7Pi7wt8kLRNzvCBVfi9j6huxraW/CAc6ph8yr/b549WjGJbSEaNuU/oKcsr6s1PdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTQ+CV89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTQ+CV89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BC3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773256493;
	bh=0NPPhr4CruYzj6zbnjttu8+8xe7B6+FLVqdijtYSpn4=;
	h=To:Subject:From:Date:From;
	b=YTQ+CV89YxYWW9slZ1nVpTGfMj9BSg+yTLrt3BpgkldhQC2yJN5ZDgbEBzLUqBxHL
	 Uy5UwwbopOC88pJyrFrlCPZ3UKgkUawsa56hh4y1kIsdfnjsR0Rq0nGTrWH37xcPQ/
	 5Lr5QdH8/5InmVU8QvCLb6llbl0x4RESH2QxwWZFKxKpkejrg0tKHA7a8oTvPO15O2
	 t+W1JpuSq7vEn1Ev1JAAfaaYYTjpKJfBPPZCFvOWYNNoxamaGUbO6YlCJDxo4ULQwK
	 EnL2t0Z5l80B1G5gx5pD5Y0wnqIAsdV1X3prwOyeVIiHHMQ21wZ26bhqLB83A4Z6cJ
	 FGSbK6iKSQjhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC816112586B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325649368.20430.17718018968274679658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2fea5593672fbe516fd8febce2bfbc80c2239e3a2ec8ed841ee19f424dc187
Date: Wed, 11 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773256493
