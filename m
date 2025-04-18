Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5F1DED76
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744972194; cv=none; b=faVUI6Q+NSZmdk/jBROV8IP21Q0pxJhHwSVnks9tcbvpr+lxCr8UDo/XNC9wAtS/FGoIooJ36goV3q4L+DAKeG+dJ7p1embso3s6kJAffAKPXUEWgGa08B2YK8726Vnk4Mx/cEqb4jYIkrNBvTst/yzp6gXDi+1pcOUf24XDsOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744972194; c=relaxed/simple;
	bh=sIOl2eRlf6Z8MCazbW7JUSZewcUv6jzp37K1mgPtOAs=;
	h=To:Subject:From:Message-Id:Date; b=tCrDq/CXrRy2X0PRdl0qG0RpmwIWGSBfn1PFmw4dBQP+opzhCcTVOIYrzgAL4AQNIw8LF3cxNXhLk+C9w1HurELCmvXZrGTAOn7ZQY6Yxpz0IVDOUPCzZbAOhYoQTfwcwduvx9XMy8gIw+JFxEa9ggfq6DF8NhgFQsQsHcI2G2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbdPcSD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbdPcSD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD61FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744972193;
	bh=sIOl2eRlf6Z8MCazbW7JUSZewcUv6jzp37K1mgPtOAs=;
	h=To:Subject:From:Date:From;
	b=bbdPcSD7H6v1pagCtFKfzjdD2s5y/PCX0oAIBxOWtHY5vCrdETXpRK63+tS8TIJ30
	 Zv+ckVcFCzTlw+FFdOAyS5O/BLw7Ei4mHbjO0ymh36qKjdDSJ3D2+hqyh2Hr5COz3N
	 56DYYKzdvmIHiG4n3+rVqCLF2E8LEVt7WuVfIGhndqhsahuDowtcdnFeSpc4tI4HYi
	 99vqJb0qj46RV9eEDOobguVMZIiJpfKC/lIRrvGCr+1EAuA/SZ8NDAiqqmvtEt4juY
	 ImpU184qtZ0kKXMSJ0o0jhuiO+eaJc+gzAdxYqpOuqxPVpWQQBznFbf7cUr79W30yA
	 ganYlzeR9A53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98571C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497219361.7201.15250095025031507771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abb0c1a6323dc47a78a1dcc81139e7ff2202316a0bc08bc45fb3b8c6300f896
Date: Fri, 18 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744972193
