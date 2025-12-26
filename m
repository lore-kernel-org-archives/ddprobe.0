Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADAF4C6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773434; cv=none; b=fECa4O/V0nhehUqquizAPoB64rguAkebMejsO0gAtw75zEn0qXBwYxEuY3ccTuq1Yt/EreQKEg2rYilWdFoUSJBV+8FSxDeHa0Upp3Qs9rGovrsYPHuPjkcmZnoHMIzbBZ0Ga35b7usBWG45rXks3lyqfPaLUATwUuWb+FpJH/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773434; c=relaxed/simple;
	bh=bvs8+nZWa9UzYs3kb5kzAR44ahLF6DbUYlfI+UM37IQ=;
	h=To:Subject:From:Message-Id:Date; b=cAiKv62hYqV2zflpR1T6q081/FqDwyDRMmbaAh7lVPAGQVb8QVtpXITUJ0NIzr+NVNx88ECs8Vy2EdB+kcU6T+qS0wC94Mc9bKPmCxPxEfu+OPOc9mdafvqPh7nGDN74YtlTBmM68eOKY1nAB1WhIhPE7qFIxj0FhrK76xuCJz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJWsgKOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJWsgKOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766773433;
	bh=bvs8+nZWa9UzYs3kb5kzAR44ahLF6DbUYlfI+UM37IQ=;
	h=To:Subject:From:Date:From;
	b=pJWsgKOGTcK9AsnEnPnm42WQYflcRJpFj+0qHwZWZHudstni2FeIn5N0efGzzJtEJ
	 5dW2RgA4JGB87zX8gG7bVD81yPUEEbchXMHEeS/fUekrFE8Zi0fEHYO82SNT9SWCwC
	 tBLkTACmIBkyypBT9ueF2dH3x28DRzvz7LVbWI+LzltkGVlvxly6BVHSTe517F01Jb
	 pN0CDiTdEQfKbGyZqWgHCEHiyYtqS5fioux0flSfAqcq4lCBKGXFI9/34F9TZtk8ZU
	 e95qhZz4oZFKJyavOH0VoK5ss1tV8yQNhj6ceTIDlGZCMZHllS+Ngs2t12eu7taGvq
	 mRQ8+ckW7aBFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BFE8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677343359.27660.6533902695562962218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b2f471254642bb9db7ad0ca43972b8e646d4abe3850ed9ef3ed28674d9d3b8
Date: Fri, 26 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766773433
