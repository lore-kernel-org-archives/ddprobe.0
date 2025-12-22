Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16929B793
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410434; cv=none; b=CNUmHZSzfplUjRZGiFGy4d9RFr5JN1qELisJUaLeADEIxfpTbAuVIU5KcbrRCGj5Z6UftOmXT9quvvC0Tjxa75qAI1Y0wthujVmPTq7iRdLa2D57VizviKq/3udwKtfwivpvLj2zUy6frGQYJfopO6Ga7LylMRd6x3q9HOahz7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410434; c=relaxed/simple;
	bh=a0pbrvUKJzkf6FbSgsqccx7/5pyNW2omHGCUrX8Gp1k=;
	h=To:Subject:From:Message-Id:Date; b=apzC7DdM/3rUpooQ+qzgBbkaDhJwWVdRXc5W7dpF8cw9gcFCGLnm00uSODNPptPyZpKcbWlEgcki1H7tWiAHGIz7mZf+TB/c6mIgKp8nBBHDMy1gMhgaAOmahCHbBUhW5n+rJi9fABq8/3kIrodfcjOTlfHYRmdZasy1r8UxKcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/DIvo49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/DIvo49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6D7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766410433;
	bh=a0pbrvUKJzkf6FbSgsqccx7/5pyNW2omHGCUrX8Gp1k=;
	h=To:Subject:From:Date:From;
	b=J/DIvo49bs7A3TWmxlEcwacVcFI91ztCtjWtjRoVIfMULm9yF1Hfmx7lMBvwJJ/DW
	 vY7GHCL5sQlVIzPAtQTmb/+auJUfCDnOj1AYBx1f40Wz1KKgt3tSLREVHpkTnxmCU9
	 eHHIzzlAz4J07hzkWsDTPP9k7dwaLdWsZvYWT1aZxVLA+ndgAk7+r0F2dqMxT0lhRa
	 84cAHopTze25q5TeSMDPzxycpo1oBejW7KhF9Ocp45a92AJhxQu48YK4CbYPtlUeaR
	 76EeQwf9BSh63ev9RtKBinJHe5tq7iSiiIylJJrzFp4hW5LON1YlIPPfxaWoSRs21J
	 opZZOatM+4Vkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B2E674B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641043358.12800.4922216688531540812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6b0b9725f97bb3bc213949fba42769580fb2fb9492773e73dbb42ec5866cce
Date: Mon, 22 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766410433
