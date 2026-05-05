Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B752C21EE
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778020654; cv=none; b=oVggln3Qr13WYrts+6M2gHkbaYuUMtHV8ULfVj+qWqw3ES8+EGbaL7v2MK00hdKWJ3osG2Ak/4WcPf62OZ+NI9WG3LEoOcGlL4d1GzCYCZM5laIYqA/bnfVFsuRZVTiagKEAn7W8P3OEhWRUo26Yi7sQoacqOs3kNbJViDjpcIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778020654; c=relaxed/simple;
	bh=mQfm23sRHWh09gRQrzaod+kqBWKmysIZD5CgtBKFIwU=;
	h=To:Subject:From:Message-Id:Date; b=gRj+597F5fANchmULKRw1R8IXSJEZo2UyvjfMm3lqp5MVjS4WfjZKNC+ZqxciZray0DNMLiDR7BFNR8wa8Dfg8KqQpz7l9Jm+5eq0WR1vMHAxBFiqGfghrMA4m6ks5cN/HuI8mRv6iO8IH2ikgk2FG+yAsnzYVsKgukMcbFmtCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iq/yennf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iq/yennf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB48BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778020653;
	bh=mQfm23sRHWh09gRQrzaod+kqBWKmysIZD5CgtBKFIwU=;
	h=To:Subject:From:Date:From;
	b=Iq/yennfrE8sT2kB2rre8AftEXs3hm4FK/fipRpMrkfqs2AFdItSRdtOhGPkZJJis
	 f3UsNbKFY4XMRwV/CejD5LTdBXMDBMPZTn+9X7uvDthvqA8sTYIDe+lPWtROn4oZP9
	 SDMuIzlIg6kV9aEsnrrqiDTlofQQyKP+m723mE/Py9Z8L+Ro8NkAX+efZ1YB0u1Bbn
	 SZz/Zl4jSbAXP2vyLl5SlI+3JW9m3Ttb15m157rWd1c09O2zxGYxftMZczxOGmBMIS
	 Vjo2/f+se0UMoYcfg0tvHU5tfr18eB7iOAxkDsyENo1ppbxWwHmLZXxIfSsCwaZv+D
	 PHl5nbgTUJcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A6FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802065368.11101.7136412020315605205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d8b913294fa2708a86d5f46001cc6785be91939350e7a0d207caa6b172bd6f
Date: Tue, 05 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778020653
