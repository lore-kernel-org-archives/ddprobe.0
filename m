Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC317A2EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776141454; cv=none; b=Pd9iKyeF+WZuQ9C8LKQqK+3AeuctMEx2xWRDeB4W9kKDszIkX4shUmWpVDFmwWuSRig0f9dhw1Ci61SciyAFKBKwho2GQ2jDt4ackiA9Os7sR35j1/GuLxiTbybOpGNxaFwI0CJUqgVgbkV7i8DLK/8nRnoGuGhQheAcfVT9cJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776141454; c=relaxed/simple;
	bh=UjYkP+KvDtyqFITF7u/+nSdxonDBsVIA8uBqexw8J+M=;
	h=To:Subject:From:Message-Id:Date; b=shBhdLol6Pwq7N63/sH1Tx7eU14zEKaCUhV6x0WTAC51eHEcTD4J8D0MtbzMBNbKJFk1NRpkEQwaFUsCRudIwAJbbKlN7UPjM+EnLr/N7DZ1oMkd/DHbDbEDwhQAcjFV9blxJaiBcUm9lzUX6ADJzxa9vSEguq+rPNBc1HKJy5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZtQmk+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZtQmk+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05B1C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776141453;
	bh=UjYkP+KvDtyqFITF7u/+nSdxonDBsVIA8uBqexw8J+M=;
	h=To:Subject:From:Date:From;
	b=mZtQmk+4+/u5SF/zMQ4fRrjTKIQvw2a9L6YboUvkhu3SS7+RHSxQ1iYgTfW+KMx/q
	 gxtqxpLWF7mxuyCw1WkKSyZwymwsMBqUYrn2Y1W+XskI8HPr2fZK9qMVc3X+iitcQE
	 JMVe1AArt1xViEsSYvVwop9MWnEi4kyfKv6VZ4mS5yTD3f7Qa1e8xV9I50q559BpQ7
	 8CnRzM8wbtmxjDAua1zv5B0Mu/IAOKQnLyglnpv1H8fUScedmLdDtdzgWmMLp98NQ9
	 4QJVm9vtcsBoq23OcuGA3TZOn6C3SqaZ0meweHOBi8jrmeAC5rWeIfsa3Ve4XIMA/O
	 kDeKUY2PLU/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC798F34C61
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614145368.19681.16479927351594330271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c3e62e2de93293ec71a8eb02ae296a517ba35cf2cdaf5ea8f2f97676845966
Date: Tue, 14 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776141453
