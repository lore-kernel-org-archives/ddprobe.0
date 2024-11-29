Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C115530F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732923954; cv=none; b=C0Vx2M3J5HsKJVP9ryKzA8iK5ypnrWY8KqENpLrmQdJiZgFf+ZV4erdPsWXO/GU5RJEVyNahrNn02CruHThgToVPG/erYOHcxyG1PP8xk1ApmVJcVuV9bn5jo7pL77L3txeExIa+0RD7eiimPh0+WItqz3MQrkSyy4+hH9DoZBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732923954; c=relaxed/simple;
	bh=R6tQfTVmUHlhjqKK2xKrL9oXDOzADOcHYi6grmy9Qz4=;
	h=To:Subject:From:Message-Id:Date; b=i8J4A1JOOIAE2ixCUmHd1DV3coUOFooXhYRwF5Z4SOgalQiEaGWj6UOwUecT0r4068FeL64RbNQXAugl9rCTAnOT8OzJHVSai2m1avn6YEZevEEItFhvr2nD+lXSD/q2BehQHjL+AQ3OCcKHQyNlceLPwA8VT8xj1dIO6DGM/Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL6Q4aCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL6Q4aCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC4C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732923953;
	bh=R6tQfTVmUHlhjqKK2xKrL9oXDOzADOcHYi6grmy9Qz4=;
	h=To:Subject:From:Date:From;
	b=WL6Q4aCZ1iiL9JdhtQSj83/kgFDnSbad0B0XGxvw6qRantQo+VYt6St1xu7a5gJ75
	 8gnp8SukhPRNsD+c0Tba8NaYbOCO/m1fZmHKDomBdB08qjTsBu5ZHX/5BhWDSz7EDX
	 ncFlZZlHKxaII+LS68ZufJ+zNtKENixiRHNfM0XcvFSPEXPB60NKg01ycJ1NGJqxQO
	 mH5vOhJZ/xFNOJmkpST47Ii0zJQfXz1nPMYGzOZGC9pHEMRBMbg8cp6EICrmbRVrZR
	 VfO0Ax8wVdU74CFH/+cI/L8D4KCi9s2M4aWt/t+k3kV/u7GjIXZjs11IJbD/mUBtFF
	 jGh7yCJFk00sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A7D735E6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292395358.3824.13287091684425317112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6998e731b51419fa9656520b5cf620d42f10d9591d8139d0d74b39ad5e3345
Date: Fri, 29 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732923953
