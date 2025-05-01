Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D7913957E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746082794; cv=none; b=ux7cKezuiC4ioDLPIYV2cUqVnUHCbu1GkRxP5/TmAgAaVtAgpa8Ff8JIYs0ArZGb7vLw7dZebKc+foTqNhC8Y0ak6JxifzORJsXgygKEKN1TVAUAU36auwh1yKUxzj3aOV+XpXRHydRC3A+oivRcGqTu63axy+Slz0wwQhnoUas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746082794; c=relaxed/simple;
	bh=0RtbFsg9QG4KZrUZbbuF19+sSLrsC9amKDJNeQIpZbw=;
	h=To:Subject:From:Message-Id:Date; b=oEUKqWJCy8NIU0/JIShPutB1/dolAUrThrZrDmRqT3OoX4T5pRsqOR++baQALf2gbfypgfTvGRNax+IS7QXOnZ9Cgq87FzMMB/c27sTbNL5DGiz3UnsOTcQhmN37vOiZXIUYmD0csQyBXbKVhkVDjZB10HvRWayA4gWAUz2p8mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8aK14u4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8aK14u4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746082793;
	bh=0RtbFsg9QG4KZrUZbbuF19+sSLrsC9amKDJNeQIpZbw=;
	h=To:Subject:From:Date:From;
	b=G8aK14u40j16Dgj3vOc9kHPFRsG1UuI+or4jPwmucSNqDtjEE11yGRhLMCSIKC4m0
	 gHI5AjxB0g7O1jLC0XUiEbxQ4HcM2pbAh1HgA3sRvFY0m+3XZF3lu+XuptUwmAjcJJ
	 CytPPyLIFAcAqo9fkU334y0ZMYuxarmqbg4aF34DS4OBfzO7pREK7EVOYdCP58bxyk
	 VX4E8M9U4/nA5ZF05F+tz2KIK7EiwdCBqm/Ydu7Ss4N6DkOtHkc4WVTl+CMScAMCwd
	 PDIrxiUOswYuapVPzDkWimM7ZUkdiC7r0NypvIvzZKeVuBGScXJpsDX4X6WVIoLInp
	 CH4RVOZVY1rxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94848C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608279357.31242.7825754499313553507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d84a230e6ea662e3b4069e4a8fabb14296e707ea30429fb220e5cd5ccd459f
Date: Thu, 01 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746082793
