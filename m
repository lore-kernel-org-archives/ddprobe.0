Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415892DAFB4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767054834; cv=none; b=Zc7ztdZB168K9MrAxFMcQ2pJWGyGaLooyh4oQNbmV35JfJ5Vpj1AH2UGTRywNbgJd8tYTxKCsj5+mHkp7+ihgI5BP2KgYWVClFyyIEJabmKxwWmR1DVdlZf8rf6k1uwtAI+13gJavEV1hj//9NEz3W48l5hsR9GggxKCO/O3dNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767054834; c=relaxed/simple;
	bh=j9dPACG8NwglZu7V2/+dUIe0lA8ZpojdoZwt8yh5bOE=;
	h=To:Subject:From:Message-Id:Date; b=fZ9oXLRhoOWisKesHP896pAh7cy7C6LlMQq1PiCJWRzCSq0dp1BdAej7UC96X14yum89DK0jXSM53rysGcgU18p5YNTgdfQW02IgALdtQCQaluF2c5EXgh+fC9gnlaOHKpkC/WTuqSdeGR/oCd1gc+HfzJBsYks6NbWzaQY3tZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTYK/Bvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTYK/Bvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5592C19423
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767054833;
	bh=j9dPACG8NwglZu7V2/+dUIe0lA8ZpojdoZwt8yh5bOE=;
	h=To:Subject:From:Date:From;
	b=TTYK/BvzrKVFVvpG3jLfpsnPE+cPhVJQ6eoprM8rp/jSINqVLXKXDlxvSHquVRaEe
	 ppWREuvXr/y/4UQp3Q4FyH9LZ0Uvv8GqZ4iZWurUnFROo9BzQ/u9qfl06HMCL2TKkv
	 MX+PBFWE+L2ksDl6P4lI1dbMXuBpqKNAbiuC6nano4zG7L8cdTFG2SWv38Lt0qZL4d
	 T7xqwosd8hYKKl33W00o+JUNI9HMX01ihVtnx2cOGKqUnX5DMuldde2MHE7x52uImT
	 fcufI16TD3phQuBrc0RuTqN+JMbgDWhExeDtzUfJXswlaiCC57jwIA6ZgLW7ymtir1
	 J8k70OIQLWTyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2DE94107
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705483357.3321.10776959347791151463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ceed3c1d7333d1a005f803df2a4a48a818bf14aa2a1f0c0a13b19731a128a2
Date: Tue, 30 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767054833
