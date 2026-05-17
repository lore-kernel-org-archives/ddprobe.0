Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33677213E9C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779031834; cv=none; b=ATMBWoyd6lNTa0lU1ShBH8pHznqiZTwD8E8VeZQKth0H7iTQtxsHQMR2QeJ9X26IJ6lESAO0S6frEY5lYi6Ej0YL8F/gYB8SA2h62QgaUvUf+Mxrn0BT7tRjs8skVsoK9ozfAWDffEJQjceexUbgelwVFQN6Wm0hP8fleECHAo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779031834; c=relaxed/simple;
	bh=kOILJ6Ijx//0FLqqybh132JnIAe3siG1SNzY0EIiFBk=;
	h=To:Subject:From:Message-Id:Date; b=ZHD/DqQmorD8ao4DMvEh2V6PtOAm7ONyU4Jq5Yh5AtrCX+UjFJxNG9934AfM1zjydRuI3PIXVHbgd8EY8YqwrAQgQnMEtEyWlZuERxdSfRmzj19lRziMCgSVL8TPVibCiVL22eLUXBuOipidoLxE2ERNq5xHPc+iTsfR+46iE88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBlCUHpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBlCUHpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C833AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779031833;
	bh=kOILJ6Ijx//0FLqqybh132JnIAe3siG1SNzY0EIiFBk=;
	h=To:Subject:From:Date:From;
	b=CBlCUHpTpS3Xa6bZ/d9TKC5SPgVGi61+i/1hCU1OYyVpazmWdy1d30dz11iW9CJIT
	 /GMYPbMbsSDf2nPh72b0vNM7AsIUVyRl0xf9O3B8StdFbOnUIyvfxPTBfpwThyc2zX
	 r4axffYUefdD33Z4R39J6A7rdKy5r9jPH2cv8EBZyFhhMiJwKSntrfOe/zpJ6F7OUK
	 svnWJyxmHbSyyXQcdSw3NdyYDAVzPoPGz5riRcfloSxFn4HJimrvJu9Ex6ak6z8UdV
	 ehq2Pm99+RHzu0o/u84eRxGQ27tBzYOg+avxHdCM14tBFnX81RGzoB6YcN7C1Udy64
	 32Wb2zUxDCXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9038CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903183372.17420.17741217551700967332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303f87294f396806c700be843327035a37107c533cc83060f929e8bd3798c6e1
Date: Sun, 17 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779031833
