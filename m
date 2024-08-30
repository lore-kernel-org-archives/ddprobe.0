Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D65E14B979
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724992554; cv=none; b=X4bOdt+LbuDOQifgD1MptJNTHdTAAJ9KcdiQDrhvUwSeQ5q5c/APOpnsAUnU1IvbmwBZZtx+Wk46Q9t1sNBgPgof9lsP+/MccOEWFkPd9WGFwNVtj6Fznf/AQ86Ny3WqQD0zxrUl1e1+L2h+dPFWVJbfZsI5qLHZ1ld1Wxk59y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724992554; c=relaxed/simple;
	bh=jkW0BmDoKGLGdf/j2b5/6vKTHzHVjkez3vAA4vY1AFQ=;
	h=To:Subject:From:Message-Id:Date; b=hYyu6/UQNcAxF6+Nz4PMkeCJ0KAdxBCHdrodhNsR43hgbRhb2MUHcLz3zLT4UT1aoJh3ZeRhatJUHai7+0w8qB1qG4sXotlxtioDMtJETrH6Jv1re6H/fp65kE1g0T+LuBH5Ao7UOzAdLGCk+p++iTBoDb3HJhfnBF3hx6qla78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/t+qwQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/t+qwQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAA7C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724992553;
	bh=jkW0BmDoKGLGdf/j2b5/6vKTHzHVjkez3vAA4vY1AFQ=;
	h=To:Subject:From:Date:From;
	b=n/t+qwQr61X9hdeBuZB9a5tYGQq1cwsXPmkH4/aAZMpSKPVdsD6tSpbmVugC57QEb
	 RtTLXkRb5IusCka3yGuutATV79AhuQ68F6tKVMKXdSp/SLA8TBFn+bhTZiVvgl2jw5
	 WygWN3PinIQEbGLO4xoemD4iI+ePO9iUFCrspiOEGsVZITR5ZRmC3bH7ni/UUkrkzX
	 +a4wDVqKz/fAJxrsOfTHq0iJEBpugRMzYhgK6OiPM/Bq+VQOrJbnztNbX5G5DPumgd
	 /GlNss/yLJO9PH9O6RJXUo3oP6tdD8tVKSelqkFGwTKu2tvoa0JZ6wYpc8v1XcMpOg
	 KXR5mg9u6mpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745ACA0EDB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499255361.28937.11657075064862521360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ab354a812c72852dbde5a3c8d9d614ff8629886c2b73ede89e1d00e5cdf4ef
Date: Fri, 30 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724992553
