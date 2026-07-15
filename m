Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E4B3AE1B8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784086714; cv=none; b=mz4cvjGWeGmJX2EpdauziqYzs8dnV3/kaQ10ckvJyg5X+03sr+nZxkCzg/ifQ+ie6rTagr6ST+AobiaeX7BsA1JUEMj3DTqzBWPG63NqrIgCu2Q/MTLa5GtF4jOt1FxXdP9n6CptzL3n6gO2ilECW6rr6i5qSL2VADJ5C8ZZ4Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784086714; c=relaxed/simple;
	bh=Rg/E+yeIth8cnJ0KBukfvp2A5Bw7cNg96IaUEkv/lko=;
	h=To:Subject:From:Message-Id:Date; b=JPInCMFWyTdImatA7ASBZjObDjSo3o57aSxR9hTtUcOUnxOQjEdEf3QrXX/0jHv1Xlp1q5wQ0M6k+xDxhiofg2b7rdDZIygs6yHtxbcllcLiJBcu2mwhce3SVy/vyDpDvQhNSk/qKrAtH0EKpkrj4j2psgnZKTXmbx81AQdanzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNCytwKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNCytwKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4CDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784086713;
	bh=Rg/E+yeIth8cnJ0KBukfvp2A5Bw7cNg96IaUEkv/lko=;
	h=To:Subject:From:Date:From;
	b=cNCytwKx4Wt+6U6/oPNWJvm1t9DUzlxCWwJSIh17b/v5LwPiFsNwSLNw9mVdiFgL4
	 lTta/laujj9R9B9cgHs+TxF85jl44zTwJzWOJftqK1cAJT2sB+LwbeJ41XRViNZ29w
	 L0WxTjeYaAXh9F95L9DsnG6cnrm4qeSn6awfb8aikeU/y4JNhZyVJ+KqE47L1Z/oDo
	 /V1OjwuZDbT329EP2wumRmzS0B9/qahFYgUlER9+tbP3O7CHRYX+fdK4G5d1bReM+8
	 clft1DZRC3Tsy4JRGC17J92uRfVthsNwbeQWQ9qwignAJK6wwxTfMq1nZpSkQtCVl4
	 aKIYrKDYkJzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A8C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408671368.24068.17227859391345696680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd09c869a0de32a4a68e85c0626b5f46d1d46cb6ea9934c27212d053ea4784b
Date: Wed, 15 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784086713
