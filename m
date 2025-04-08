Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5126E255226
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102794; cv=none; b=VYl4C4hcjeOnKiZHAohv1YsD56THrWeIRJ8NMyUNYjAiQHzOu3FC8yxEbnPusJoziePV3Jb7FH04bC0mRCZ9vMDbnQ1FlLSzOh8d9zUiiTyH0+CIyWPH7ppjYmz/zIzTeUp2O2XMstIeFRTF9b477azwL2/eawGL2AhtMmQvVbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102794; c=relaxed/simple;
	bh=c1Lbcyr01uh1GC46JEaEwzBTULGBuz6nKo5EUPadyKA=;
	h=To:Subject:From:Message-Id:Date; b=J75z6YAroH695t36CqbAg8VoSFioCYQJf8ZUND2rCy5BClZ/viD7lbb7LeyOQfd+HDqPbFvACG5OHTNU/GxOHL2WfhOLoEyxj6tjmI/RkGGT2t7ksgbA7nFKhxsqNCxxPTpAv1+Lv2BWEgqDIMswdIkhVs0YACV1cmymeVEBzSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPdpdJOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPdpdJOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60D1C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744102793;
	bh=c1Lbcyr01uh1GC46JEaEwzBTULGBuz6nKo5EUPadyKA=;
	h=To:Subject:From:Date:From;
	b=pPdpdJOEiVIWEPFiJjGT7Zuxh5J2A34c+JQsh/eAm3ipeIdQ8rHaB296bXKfelcTa
	 CkNDNVceJZ+mvdVYSdBd+yhRpFYJ1xV60fctl60fSzHLs09jCBWZYB6cg8Upx5sGHk
	 RuyypLILdHyLVn3Bnr2NfQ+ZltdfHuWrawTbhLw6nhGUUQCFylWXx9id6wiKdJgJ5V
	 3MyVISQKivCjqo5GWjM1wKrc1j/Ce7eqPWebhlFTpluB/RS80F/0KgCi6qDqzzQFYt
	 EhRjsQzKQVOgmuqNGjv4+GdXupAM2rYx+nUqvzYzz2RR7WD/FyJg4a602pynGUzxrS
	 jTpY5E2EBKB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B068AC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410279371.1670.5309576746139668690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ad7a66d4a000da35fe80402deef907dcd6a1de80d9cd3dee5933331b1cd84d
Date: Tue, 08 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744102793
