Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC3D76034
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750366194; cv=none; b=lYjdzDXvYHdRi+Djp/vy541D96Q2TZTG8fDxUH7EqOqeiQXqQZ0+fssFuwyX2aRMgtAaPrhQnvEBL92WlqS1zg7J4xScKKUYQ2dzIImh8uaDptLqH4wqOKfl71sCGh3GO921ox+Vsd3GMgIlQBK0KMEjW5sYDj0+A4yfS0/R4LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750366194; c=relaxed/simple;
	bh=9QRBSxS6FClLKSGNIUrJUoGNsOySyDw1jje1bZd/CFg=;
	h=To:Subject:From:Message-Id:Date; b=rCp5L5YyfIb1zbkhmlv81zOmdsiK70iwU1KDIIJOAnmp2KWqr2GOYI44o8D9YMVe9mFEi3GWYRjxm2X3F28lLFmknLFkgVXpSobH1vVy7RqVDB90XaEN3s/reV/VXnMjt2rOsIJZGePqOYh98QD5DCsMaR105AVBTBqus+tC1VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYt+eht7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYt+eht7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750366193;
	bh=9QRBSxS6FClLKSGNIUrJUoGNsOySyDw1jje1bZd/CFg=;
	h=To:Subject:From:Date:From;
	b=CYt+eht77lZ2LBAE0oeMdGiRCm/2G7Jk27jecfS6btFVXDDxteDZooeWvyR6RjGhp
	 SN93ScqcRWb8zf5h4qkEtCkVLN3HFImdtKzOyX9Yfg3hhBmvtlBC1Lx4M8ZhGpzvTr
	 CpvLuyh2b7pCJGqBdkH1RlN7xxoil3tvMPY4nZvGm775r5FoXzyW6QiJUKo+CehE5u
	 t2YT8sYoL8uGjebL1Ii1nEaF0B4ZZ7+/dxQwz+bVIIqDWzmZIeePRuNLf3BfoY+jwn
	 Z6/aYP5F1FvTtyUAmi5dg+LCLnEs28Kzkwsdin3oolU2igtnQYbbWaZgnJenidhs5X
	 3+gKu9LXS662A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91548C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036619358.29490.3963681446731073126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dd42885ead8256d0bd100e9193f14807d2c1482c3958ad8e11410c96a0268e
Date: Thu, 19 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750366193
