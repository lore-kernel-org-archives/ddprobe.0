Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFE31624DD
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749051594; cv=none; b=aCYCkV1ZtsBLo23pqnZghZ15KdhO2kIc3tBzO+CmzGE7o9/4cDw8YwdmQTH+uFvvGjJlPcp+WS2d/PRMLXSo+S0UoNjmK3UJRGlQ41+B0MU6ufB/NFwrzxref4ZUqFUyY3oH86af96OjzBgZFZFo/gdSHa0ZOISYxsKM/s+X3xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749051594; c=relaxed/simple;
	bh=9ERotUWpl9CyGs3cvTpiN8YiGoHk98MdCvL0wxtEq9I=;
	h=To:Subject:From:Message-Id:Date; b=axnfI9UU1M+1s0rJemO3SfNE/IxxlT/KDv1OKrRAtrX2WmdG3hvLA1eJ68CoA7FVb/hGppofHFGkD4kvfx2Zo95kiImHukmDGLrt1BTWl7lseu8xqS2/ynYJzOvy7RIPqMPiNvfH/nRPwDE2mpY+6k5hJ5J6LQSHx0QHZ+U3FOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZW1REF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZW1REF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FE3C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749051593;
	bh=9ERotUWpl9CyGs3cvTpiN8YiGoHk98MdCvL0wxtEq9I=;
	h=To:Subject:From:Date:From;
	b=fZW1REF79E7apgFDlJO8eGlEHjl+s7w5L/h+g/Pwmz8YL2kY+F1FlTm3T54JG9R7D
	 2Iuz+n/CpWFae5Nx55La1DWtsPPrrnJs+yi3viBmvcV8VdQvr+l89GghecnkLYs1JM
	 W77dAE7lRyzV4KczaSR22pV4wSslNgz2YqhYAovTYv6/xVDN3dEQufBb8CXnNhGSlK
	 9Xr7zB9f5flalKIvM3Qr6yYDEBXyczxZ4gnQX/gV+/dTW2uW560M0ySYULUIkppmzD
	 Nn7Rc6zulGU8HrZMg3argni64ifKQLY/aLV5OgMUIhmPPjnPFy36GtC/PI0I3l03X2
	 ecrp99pfThrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC9C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905159358.5001.4305075547816098288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceadfb1a9140ac4f8ad2855d50b9cc4f82493b186da6b997c7940afaf4f435f0
Date: Wed, 04 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749051593
