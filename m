Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361F4AD21
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752826194; cv=none; b=oXOtOgh43Fd+C3pKbpOllum6BQ/hbGWex7ZTRaZZ3YhcxQLptL0F1o9RvoHrBBkuIEXoH31dE12Ybznk+8JLB3z6+Wh2W0LxVSsWDoDLmBwYgOx2ISVKOtTHBx1+hAfIRZeIzaLtg4TMp/9GoIbAqTXodRNC5JQAVpD/s+FwYyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752826194; c=relaxed/simple;
	bh=C5LzFUe5pjLN3ETyiAEQz+R6JVJ94BcA0jNly5X6OGY=;
	h=To:Subject:From:Message-Id:Date; b=ZuTTI656ejM/IxHvvERGChRoLTYVWgkhGCfhGIlNEFcvYA5+M1V+2UFeC834/Rbm7V5CStBnK4gsVRBCJUpNwZMDxmsVT4pCIKZZKu3b/WkgG0XHY5gRFZV7Crmh/7MW9gaNYRSZ+JySRUij8YYlXaxLjOsKlUDv7mrk75xkXik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qog6cRqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qog6cRqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752826193;
	bh=C5LzFUe5pjLN3ETyiAEQz+R6JVJ94BcA0jNly5X6OGY=;
	h=To:Subject:From:Date:From;
	b=qog6cRqIsV1wUBmHmzwgA7nUnyW6KCTnI71+GzW1GV3uO8FowhTISUZBcxRE2OySV
	 cFPWhisl+UyaZtskNxZUsPL5t/Gn246au0rbnDxjVo6AorzEzUxHmPyCXGTAlhisWy
	 dhOufVMBt5/CvmBiGVr6Ko8wH7uk+Nwe7nIwk3EeALtjWEh/9aPkHkdiGesTIE/ebA
	 iNBM2N/EP1mLhz9twmRtczjNPao6M2cZa3BPiIXTtc17KSHE0wtXxchllmBAO3jg5O
	 8YwTltZI4L+EvpjLn46kyJYI3+3KPAyS/qn+JWLLtEmjCA3tFnkCCAYL70R+DYC6/+
	 cMfrS3Zx1K48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A1C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282619357.1044.6023421512019034358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92cdecde1e903f2c821d34a185da2e237a7713f4c3de3302001778815366742a
Date: Fri, 18 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752826193
