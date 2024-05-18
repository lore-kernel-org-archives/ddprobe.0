Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BACB5465B
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716058343; cv=none; b=tLlMkvauY5DsYPIEnhu/OI2EZ8BnVO4lDMemXtj6WSCnjnWT5cIehnUxY2Bc/srDBq7MxMxzgHD/ZPVUFJG4ebI16eaI1wZN0rHWl1ATilX8wEM60kNJqBL8xVjEtbWKCLvph867rPSUCrQ6aFtVv74uEdHIbGXTZyzdvAlSZ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716058343; c=relaxed/simple;
	bh=TqRVCPyOq/jX+PtH21LdAyqujQtMv2UkP1FF8L6crQg=;
	h=To:Subject:From:Message-Id:Date; b=iooe4PkqhTi2FmjiL5bM7NXVI0xoOL3ynM098Wz7pMMsBR490u6pE6kpB6XmtWmw5sEMAgoBJSGWN/xjWnVB1DN9sBCxW341zWgCGB+rWluCqaxgK81ae6GmdRWQBj1uyvnJ6wue2M6p1IGY2qxQMHshppJFngW5lPzjq51AYHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8R19tCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8R19tCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4DFC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716058343;
	bh=TqRVCPyOq/jX+PtH21LdAyqujQtMv2UkP1FF8L6crQg=;
	h=To:Subject:From:Date:From;
	b=V8R19tCmvEOlU+8S3ZW0lbKUAQfYClfqAZEQ5FY4lUOQIg4AdI6aicA03vA3mdcU3
	 iIN7SIA/2BaQsm7pqr+mLqaoKRW3T8YWHmBMsLziqa2E3QU6zhgduhMJPm0o03Ya0a
	 zEAczy8jXMEE1YgyC+s3Sw39cu0Qe8ZtGbkKhKf1jjIWDtLX+DLQCE3KjZjPO+4+ld
	 N2M4gUBrpIqpmp4op8niTB9idd/B+EzkP4ikku1QkPAZMgfTYqRsNb8Q9P8fwrKVi5
	 rpxUsmxFioUTnnbtlOQxel/5bTheNKS6HFAoTew1pd64wPX+46RGAxLt54tj/yTuKB
	 h3LtDSN7A3+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBF9C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605834282.29024.13295329945625120327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ded2e961753984837afa0d6768b1603e2b20b8b77bf1ef664ef4d2421a7329
Date: Sat, 18 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716058342
