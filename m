Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6711515A85A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717746443; cv=none; b=U2U+NpTYZIZlsRnamjlWlBkrNtRn3t2b0DU1BcqgHa2cP0l9g5iJzFDaL1ITZfS7OAR8Qe5gus0yjOUFOQqpd90fTnDdj7rtMUqoOvruAgjwtQrct5DRWTt1paMMKBDt98VFbkjhvmDuRcGIJ1GpRBSlPPThiBs0VvP4/HJ5E/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717746443; c=relaxed/simple;
	bh=Sk9fM6zuzczmegJpMucDIdnwdhSRyd2KuwVrQwD7wDM=;
	h=To:Subject:From:Message-Id:Date; b=bciXo/v0h1jdRf4UaW3R3idTGsE9Q5Eqx2KDxoYWU2+98OMHxHFeE2fvdC/QKvy14csAu+ZHgm3HGtRRddhILKd4EA/mjRPh6KpDjlH6na/62NoTMkzi4boN3viO+4oi0IHrKD074XfWKyNa8iJIcQbbW/R3Kxaf89uhihTVayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdbdeMsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdbdeMsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ABBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717746442;
	bh=Sk9fM6zuzczmegJpMucDIdnwdhSRyd2KuwVrQwD7wDM=;
	h=To:Subject:From:Date:From;
	b=gdbdeMsjZlH0Ek7CrEAWFFsbFUT3wH0cnBnYL3WIjFlr2IrU48acxNFdwbiU1EqSX
	 uAy4657JIRln/qmTQBMx69iYXh1t6ExWpRUUFaGzo7iWscZ/haZCFYfQ64SBVMtWkp
	 FxWaMc6teky69YQ2+w8lYHRQEZ/bq2+B41uLzF7dvIZSXSrAh9OV/T7KZFl4u3pAEc
	 EgYufig3Jef9Dpncjcg6SGIixdqECAQ2AyVbh5Nbeq0G4AUlHxtGyY4kIxgBuJADFY
	 a7akk5V6P1OYvgl1PkeIu8PWg2ifUpLA+ANB56Qhyim8CrAxTHIXZ8HeYga62Fjvjj
	 Ag8klIQ5UqYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82D7C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774644280.2473.5940004931605788385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5543eace546de0696fbac365f9fedb0cb926b05070002c373dcf32415ea9f770
Date: Fri, 07 Jun 2024 07:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717746442
