Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468D63DDB1C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784190514; cv=none; b=poAsCVIUeCDpd9AOVF+ztHbF/a0hvor6iActNxJoy+9b7JzCbG0GWbo1N9B2PbflGygxl6hKfYCDtQnjRf9P52sPm4FBSol2ajRE8U6ERD4FXjDHg2IPn+bvK17ns/BAGo7CRdrrjaSnEGpcqskc3ZdqWrAc1JqvcewT8bgzatI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784190514; c=relaxed/simple;
	bh=IbkCWO8/dtTE1Ap/uCAFwB6/CfzyXB3D2T2rj4TO2A8=;
	h=To:Subject:From:Message-Id:Date; b=KNridDkt8sozFmFnpka28vDX7cT1Lo8buuw63JcoyuNXkIGf3356jxBczvDJ043Q+mShMn2s/h8xN+4z01CBNk7eCU4UXCKeCEuLDy06AmCvNEPUDxkdnEmn6nXW95RWZlz3g3Vx/jwQxB0VMkq7xhYd4sb1ath9xQ7PlOs+ndU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/qbuYhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/qbuYhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14B2C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784190513;
	bh=IbkCWO8/dtTE1Ap/uCAFwB6/CfzyXB3D2T2rj4TO2A8=;
	h=To:Subject:From:Date:From;
	b=g/qbuYhY2jKM4I2bvVQdCwop+SVNuJSF5Y5RrYvp0u/7/rhYRanv24HZRwn9JN1Jr
	 toEJI4BNJMJ2nG5ArH4TJHQF1F9zokOZmg3PjJXQwTIGSDC2CLzoKPsv9P7R2RfPA3
	 VqWYjBF82mzqo7cOwZkkWiCX0mMdPD37vBvpIR9BsnF9BpDwcO+F+2OsyjaGtQfVPH
	 LyoQ9tzNi2eoHkQr03SfsxA/MbdcYDt5IMceP3briGbC2WZetvwwmp06WTdVMXXz1u
	 pob831+4sqjB0pDNvlD2bjk1g8/CaXdWBmnaqXVGBVQt95NOJ4eB+HQ+diN1wMv0AJ
	 9SiAiQM82oY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC42C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419051370.28795.12419275542605836107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370fed479aa1520c5eadb5a83ab1195b57ccdab09758d9a1440a65626cc3520b
Date: Thu, 16 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784190513
