Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648081DDA18
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780973074; cv=none; b=iwAZe29Zf5rM7NF5yEVMI07HgWuESGreGD/rTUTwbN2zNuCDFOxSRwMsGixeb+Z2ajRTUjDwkZusTm8D6aSvwrtPfLhuSv4+ZctAZP03WeLFSyAPpdVwcEVT6tdKwX5fxTrzvFQBEZZL2Iul0z/ce1t0hQufgB8/soI82Qh2kD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780973074; c=relaxed/simple;
	bh=AxyffhIuxQ5HJ2RQOQwL7JWv6k3EuN91EVPqjbvOEeA=;
	h=To:Subject:From:Message-Id:Date; b=K5xeKr9c1XNynfdMOnvP/AGvKUPTpK7CLsxN9yfiYt9R2ehRY5TVaLaa8X6RaG9rXUQa92QWwwqtGNDHju6A400K2h9IOfF55uZ+EaU9B+zNkSPFYpgxiDM5z35pPrxqI3O1A8KGWDq+Gsw4n3TSdOwvhz5ERS5NmtP9uqAVzfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu4WahkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu4WahkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB90C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780973073;
	bh=AxyffhIuxQ5HJ2RQOQwL7JWv6k3EuN91EVPqjbvOEeA=;
	h=To:Subject:From:Date:From;
	b=nu4WahkNXVnX74U3ykRUIZFBmmIUOgKYMUy7IZX+UWAAvLzKTiq32YbSHoDUb2VcV
	 gVBJsaumiZ/44o4eZq5AMUSfJ5tDKKT5IabU/QyYOWNQo2BB/bXKmUcvOB8efhNajp
	 K3zZcDA9NHVCVLOXwm0e12p7C4TVQLwUglj18ie4PnivuUYQr0Lp8ORdaZ4gGuDU7u
	 vZzIi168tBrsd0nlqcYl7UlsPxO7rpfD67E0tI93dhLMYpJKyuuqkbj+Zqv8PkbA4I
	 Gqk/hr1cNmQXcXJAsWgnghGAmoirh4jjbvXOGvAHNcrWYmkvnX5T99MJc95h0BygZT
	 2mOpUA0vbNWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA48ECD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097307374.24367.16163717170789762034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9dda066a5d0c0e6a57f645b1634dbd10751e2bc5764a4743e6c82ed6c8fd93
Date: Tue, 09 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780973073
