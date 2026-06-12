Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59912388885
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781275594; cv=none; b=vBkpaFK0BpLYRYfDOYi3oijLabElMdd4XRle211xDeYSXSFan7qnbTbvuDxSfdg4+LZAU2SffHlZV29LbA651IgOEuRRDMorYqOT3YTU3V//QVy09025HQbZ/JTNiBjXDrLUPhbXcpqweXhMSAI3b1GiKKwkTUQQ7WfIR12E54Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781275594; c=relaxed/simple;
	bh=jnF7IaE5yufB7y3P6Asv4+3Rktha/s2FjhXlrKmOnuY=;
	h=To:Subject:From:Message-Id:Date; b=lIMHt3UDpwzNZHik/BRBUlnMKA9RBBAx6a+2KQBUIukvHC9t4AshHl6HDaGyb8ggeBD3lfMplWdZlpdG4HIh1QDos2mX7tUi21MM3S/VOqibrmkSxffgT1hU3uahuzZll9izCPF5Y6pk+j6DZopz34HvBfoskCATvFUPbG5giLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQWG7NpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQWG7NpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B06C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781275593;
	bh=jnF7IaE5yufB7y3P6Asv4+3Rktha/s2FjhXlrKmOnuY=;
	h=To:Subject:From:Date:From;
	b=dQWG7NpDprGMXWrDwq7Eb48pCRVQKfA+04xc/ATxw5bTyNV7sAqKtfkW/5jUQCJWY
	 MZ/ZEP2DApGqZSuEuOQma9wXNZUNSCoGJOfgrXZk0OcRX2NhUy10jDsd1kb7IanuTh
	 vJNCta0HSS8G+gAfLjimQYILzywZZKo993tC0eDaEn0bMEHFOV1qCUMaZ/i04vq10d
	 MioDMlaILVAw7J7CaSHIsB4kranCsBlTxp5cys9CCZN+GJ5h8gt7ibhe0XizHFErLA
	 85dT0qXMFEFgCJwAYF2D0tlt2pGttENQM2NGSk0xiGyXWnXbhtWHl26X1Hx9IMg3XG
	 CNDiiGzWSBghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB6ACD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127559369.15796.16958739082267868052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369dd3609e70b3b73cbedbb2d365c0c2ec4cc37dbba88eb9c8eb3575dc9a44a7
Date: Fri, 12 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781275593
