Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B4317177
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783345114; cv=none; b=cR9dcMKdxpTx6iZpU7UzvSO4WgRkmLxJLxY7t0Rz48jdL9EsitdX/AAUU5jlKDk/KAtjqPmwz7kZ82CDW5JFYce5CQdfIKBdtH09uPvlAaPmcxol1Jj4yZjrTk1VSPaDmkfpmDhd7YP7WEd6Bk2Hyrx0qbMr0t/8AUr0QEvVGtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783345114; c=relaxed/simple;
	bh=D0vGuYtVzWmJ5WmnSr79ibH4rsxal1bjPgEUQ7GYmAE=;
	h=To:Subject:From:Message-Id:Date; b=GR1uYdmFe4YzSwH4F2KcZpbLSuOtCocQfPfcNFAkugCIE7Q3kERlA8ZSKuITOLf361iTQvDRkE9jeveQ5nWPrGns4P7C+EF33Voqrz3XGdVA9L3CSR/KRTwbRbLTDqnlCghGWPeydzIAXke3AKGi9pyAbzv8WbfbzTIm/MzYFNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWEglAkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWEglAkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE4BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783345113;
	bh=D0vGuYtVzWmJ5WmnSr79ibH4rsxal1bjPgEUQ7GYmAE=;
	h=To:Subject:From:Date:From;
	b=gWEglAkKxtUWvpFbMdCCPCqK5ou7rdMcGdC2CdNvVb1Z30YhTIbOx0ZCrXQ3LDDiN
	 q5WK0r9Y2bjUDLmh0Ni0nub94fVpTiPRV1IXXiYRuMS9lVUu9V7Uk0LsXe7FQOp4es
	 nZOML4S+bxAVbWPUk99H37OfzJv9lWXc/H5hpqFilERI0dVEXKUZj7LaQoOwP2WTLp
	 rZ+ONfRuVCEYt4UrDFnDi9eTVvHGeiBr6fkR5tm6oVJvnxEgmHC14pyxaylCgnRcs2
	 CZ7jmS2p0xw4dOTETTYgYwlZh2wtgsMmAjENIAdAaAY41/jPagnSrPkAOPaC2TH35D
	 ncJPHA5/vsyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC993C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334511369.11071.10974642305091075773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353748dea1716a6576bd816c7a95bd054edb8564ef75aa38976435ad3d8359bf
Date: Mon, 06 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783345113
