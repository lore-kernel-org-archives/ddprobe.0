Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0671F03EF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755386994; cv=none; b=KsD7+d2xR4ezTaHRRwTAVOCJH8ULNxp51mdAgRIs7wPQ3f0hGBUWnUEldZ8zlSVyBvD7XhQql0fyTszaiU41B9Z835UfWv7+U0roAwXi3IGVIElCDEV8nMN5NsQPtcfOnQKR5mKjL1i36KUsrzP2MCoe0QX8TXWoH0MYeEGUg50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755386994; c=relaxed/simple;
	bh=7WW6tkFAJ09my0BHgJWwQDrp6Ix+hDyqi3TV+KLvECM=;
	h=To:Subject:From:Message-Id:Date; b=SYhoXykaXzw6F2CIi3EHooWRgiHfVqC9q0nPinwMMgR3pylXCMGmVuu82Rc22C82vl7iSmRkylIoLqKHxRTfDtDJqg4LE8iiYFb8ssxQ2ojTtbtq0aBFlVneRs1o161Bq3S7/znznsFZRbTo9XekYIPbDAzLXBafoJMFcmULB9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGD8/csF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGD8/csF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755386993;
	bh=7WW6tkFAJ09my0BHgJWwQDrp6Ix+hDyqi3TV+KLvECM=;
	h=To:Subject:From:Date:From;
	b=eGD8/csF+11ND5yKLwdGajanSM+DlUhMQ6lMSTb30hO+DZ+LeZZTBZ65HWiYD7zld
	 L/R6OMaIhA7MyPj34aGW1T499GMrnYM6ByGBTJx/ONWiKehoE07LK5nBbRPe2NwNuB
	 R//kQ7W7X1bu7Biy0Upr8tPEWnL9jk5o5XBtpGzreLEFhbhDuv553fC82TiWlhcK3w
	 DHlTcwDdkqY6xwSJz55R1cbzIPYN7opgMSmQey4uCS1bUb+lOqxsjT2JrLcINZq2hW
	 ZDdtglFg68m6A2m4HTsaieQnaUsIVFQugtNyTdnv0srs5F9txqpMapOGQDYX7BYa9g
	 6trITyOck2pcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538699357.1951.5739358363442579902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9382d028740a0342da9f0f6abfa90358e33017501750cd6bb1f73f58db2635c4
Date: Sat, 16 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755386993
