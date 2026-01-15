Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2011D61BC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768508033; cv=none; b=Bo+kuQeuPGh22KTn1YR+68DGfyyVMTm8yLOhdXkyky0UF3EQGaic+7/mmuk+PSFdyCLPuxz/s2m2mj4gep+/iQu//0m5s4Px4NiuuFBvVdwCrsHPXocJs+mnhEMZOLHRNWd6XlwNL6zcu4twbEZgILA4V1ndLM9U7j5YLhiUdTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768508033; c=relaxed/simple;
	bh=xuQpo8Td6Uh9DwSfD0tYOIdufPlBa1FCJ6S64lZIDSw=;
	h=To:Subject:From:Message-Id:Date; b=bXlTQXXG0NbOHg7B9Ogbh7lFhY73l4HxQEGLcEwlS7uitoDgCkuT5Ao+vO5fawQ7HrCrRekajr9BPNTEkN1h1vJ3lIMQ3uVMFnr+pEPvujtn7jEVenaockg7xlJzB5A7qdZL21UBvAW/geA+8rRqSfvAgVlTR0CHmUTEnnIhzzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9QBlgcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9QBlgcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768508033;
	bh=xuQpo8Td6Uh9DwSfD0tYOIdufPlBa1FCJ6S64lZIDSw=;
	h=To:Subject:From:Date:From;
	b=a9QBlgcRmVn/tYfkSFas4OtE1ouwD3f8k2cRE6EzqA2iefdQwCFVuz/Pi79vnOzwz
	 7V9MXonTx0Rnq6q9iYCe2SXu72cWbtlZH2B1PEqw8PS7np8wzyq8u2D6CVxnLMvItV
	 Rxk7TSYO/IhhbIvjiYIqlOjfKWJQEUD0LkZc6qJPYjW9T1kY6T6d4qaRfXSbMGGOOE
	 VH1fmhV9xB+o9Zb3LCiQgXVWnSzXdgvRDNlBqz6t1h7GTm5tW0m94TewRPqeQ9EbMT
	 GclsyDyopNftZ/UCjqdZ2+2H1HPx/V/OklPXdk7qZhyhmKCJAy2VtqQ1UW0Go7z9A6
	 5NBcVlKVcRkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079FD46617
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850803358.15647.2533567186321687849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ed12b33000c50c08e7ed3d3737c54a9d791fb9df22a4be89dbc6324e055909
Date: Thu, 15 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768508033
