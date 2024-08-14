Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF61B32D3
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723646754; cv=none; b=FHowHSZnDhAsN7nPEX29/2CHS3iY7741JxpWTKyNYA710xtpoEzlIavNFndwiEOH6Ma7mefEBlikC2Yc24sPhEVkaJuekLBJsUP9Nb5GQjWz4Yjm2Sw5l9cNRT40CWFqtEXhOV7J6gbIMy06IKaLC24NC7lzEwFqzfbMV9ECNeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723646754; c=relaxed/simple;
	bh=BmONwSSyJT0JG7GBlblozywB6EI6RDipzjY2zF7bdtc=;
	h=To:Subject:From:Message-Id:Date; b=K6+fEQazy9sxm7lNgb381tXmrBmibQxE8NYRnSEc5FOJD553SpwRKr8uYU0I5jGWDrkv89TqIK2NBrCzsXTbejpl+amDOh1dKmq/Fi2IYctpY15dRlZeYYPMmZmJ93K3fcSoWOhT2HS6x38K8LPe8I3m8Mw8FUvU9Blt/kQZzkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSqxkRh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSqxkRh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F60C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723646753;
	bh=BmONwSSyJT0JG7GBlblozywB6EI6RDipzjY2zF7bdtc=;
	h=To:Subject:From:Date:From;
	b=PSqxkRh/qVUeZVcvrpBigPZzSmXb3QvRRdWgXQtCAQqm8QVVNQtqoSL6ajoyg3rZ8
	 4W/ZHiR1qF1h0SDgHrtko+5YgxoXgqU/1t7ZHkQZOIWQuhF3QQ8vEFvTqQhK8yvsnJ
	 ZkP/xrmv8FAfNkTRokc0im1r18uKZSlr28hXIf0mbR3X4btXS1hoxLboJShNMjWx6S
	 YEA/OQBY0G/rupLRtYlTq6yOOL6k50OPdINNF+Tke/IS4tDkL8C7uy1yQjFyECLrSZ
	 NiVa8peJsMDaZKhfXQTLW9M9AH8x6a2caV1eppzR4MJVphs/xu4uz0Yh1w7+UJ942Q
	 dZLpLtRcCANsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34B2C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172364675366.3235.3142498134245174853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6cfdf27af53dea62eb64fecdaa9657107c1f1fdf99fbc14c04eecefa301ae4
Date: Wed, 14 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723646753
