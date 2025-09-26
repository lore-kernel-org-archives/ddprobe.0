Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2EB1E7C23
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758898794; cv=none; b=Pv9ZevGp8I0kH6KEsT4QGR2pZH0P63rywdgjoPAhY/7KJ+7zae7P1tWaG/mCeMzvGMgYv5NN3F2yniXF8PUni7+itU8CgnLicmk1d+gSp00Om+LC7waJ96bA8VyTgrRBgRLRTY5Uxe8AYklhbjui1zbIEi3T7taURchMoyFibuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758898794; c=relaxed/simple;
	bh=UNpHB4n7nN14maogZseRqTUieriGlArmR1rkt4im1kk=;
	h=To:Subject:From:Message-Id:Date; b=RNHr2s5wG54Zv5uGUUKe2Cia1H+mmdW9uSRICLHgKp0Dtu73iu2jhqEoHdInJcHsC8qNGFtJw+mXzrwOsqnw6SO40O80525MsmjK13x1B8HAjDVtSR+4zLr4B94vaZrKJJVVKWmLVIlzDy9/LqMbRVxml/AW/dXuEwmn6M3n+3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4MqfrWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4MqfrWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E61C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758898793;
	bh=UNpHB4n7nN14maogZseRqTUieriGlArmR1rkt4im1kk=;
	h=To:Subject:From:Date:From;
	b=d4MqfrWeMiaUEAxuCsDrp5Y3oGONVTiLyzcDEZVfAc2uMv16ROHb7Ws/sQhU9eLZd
	 I+ZzfYkEsbiPNAM7B24UzWTnVNbI7Qf7auH/NIRUsZpD/6bs8vw8UdLfkqSJ0HxTFL
	 hhzsPyV7vt5VwWjP/K8EK7yzJjiVAI46YZSv3PZmXzBw6eg/VN+DqV8iRbMzl3QqJc
	 S25uF22x+pY28BjyVzEOCpT7YYAsO8HoM3rupqRWGS/srGS/7r2WDHghkJxCDR8HhW
	 s0yZj6su3ZQsPGNF8pH7CEDzkv0vymb3tEqAxkFdnaADivVQnCOTEPxdkA+C6UlyZF
	 C6FL6rAwMlYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C2CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889879360.10555.6996579479485934013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487b09457ff5dd9bc9f2b2316457eb86af8c5a76e5836fd53183a93bf3409771
Date: Fri, 26 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758898793
