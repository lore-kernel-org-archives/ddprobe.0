Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EAA1D63C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749103195; cv=none; b=DbYthTJ2Nvs+kj8DxPonX8ytBxc88CO2+E8U+0SFCe40pwPIRX9MYuW7+llmg6spirmK+AiapuqXh6zEVD3YIz1cOkHfKeNroT/gyUHqarlu8X8/hFWOS6Q5UWFNWjuVu2O5ai6aksGiJUBEk5epHnXgE3BZcPxVsmZdePL2xCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749103195; c=relaxed/simple;
	bh=mZ+bREZIJbNLb9gaDH+w7ZF5pXCFWdl/4rMJe/U0iHE=;
	h=To:Subject:From:Message-Id:Date; b=Gi8t2Xlt1+Qy38fhC1tRWJ2TDNX5t/WYZGwRJSKmDKoB98mIufM0VWv9kfpMDyvNlHbE1+1ng3ehpb0yp/D/NsJ4J1yyBuLxwlFZkKJ+tFFIaUNB2KWNmA3azcX9rVFL2Y69/ijfeA1PXhAx7A36Af9SqMOPBLavxrp7IUhUm/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9Wv4KdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9Wv4KdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38EEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749103194;
	bh=mZ+bREZIJbNLb9gaDH+w7ZF5pXCFWdl/4rMJe/U0iHE=;
	h=To:Subject:From:Date:From;
	b=r9Wv4KdLQsiKo64aKQYUFgG1X+MfMY/ZEclDm8xL+bFnbSnB23b/QNcy2eVcj9VBM
	 5tY+TjD8+Hey9eo/gnnKzgl91V+pGmmz3GUGR8cnkYp+bbNx4Neo92ORU8awAqWbXm
	 pJRfxnUZj33608q/Q3DEOVmZJapuBmasbG8beBMKllfvM2LsOSwVgunO2eet0Y0dyF
	 RPoBRucCzWRv06oe/RxUmimRe3VOtaXdJJSjk4OimbWXHx7rsSZySB94kCFmgPLQMK
	 fOM+XubTX/Jha8bjo/jTfICSeUf+3heZIs306uQM9mvOtMFCLgNRqKFJlhOIGYZdcS
	 H0mnqVMrAvqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F971C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910319358.22553.3609889465871566273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1832a00890b6cd240364ac2db930027b21fa8e6c4a10d6505471952317b2020f
Date: Thu, 05 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749103193
