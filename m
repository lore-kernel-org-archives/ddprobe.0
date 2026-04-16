Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2E63909B0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776338254; cv=none; b=e3Z9F01wtjKzO00XNhRBUZL+9YJ7j/AQbtKcwGEBJ9s939qhpcyCwd9x2JOSidW19r2KVYt7BNLXSvSnIg3+g5KZLaQFJAPqjWFd42HpUPfmUT8PPfYkuU97F8qgDlzUmDWQPTwam+oPJw35y3Hzp5cR4c4Y/XbInMPlsa1lXck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776338254; c=relaxed/simple;
	bh=ziSLZMe8J0zxo6NKsBNdyYpK2Rf8L8MeHXC92zYMOVE=;
	h=To:Subject:From:Message-Id:Date; b=NY2n9UPyGOPtes2gi2m0puKyylIymfjijpc6cRCycx1D+PiWlLDo2nQVpK7hvwrb960WM7uTFLmbMJ+U35nHqcYcHOMN86zsN9KH+tho76b2RmPwCScIzEHAezaWWwL2/I0qzTX9JBMmIE33T1f1gT7mOSggOQ5BUwsi9l2WEeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2/lSzS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2/lSzS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E16C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776338253;
	bh=ziSLZMe8J0zxo6NKsBNdyYpK2Rf8L8MeHXC92zYMOVE=;
	h=To:Subject:From:Date:From;
	b=Z2/lSzS6WlqKZ2+jvo++ecQ6ec3IU+Ua71v/py9K/PvnqTus6gSG3iobZhL8S7yYK
	 Zr9fPo5NjJwmo8kFxDzYqgLIGZ5ztLGMFD+FSL6h5A7bRFsy23sp8DEms4dzRbJSTF
	 PzCwlwtja6OCA/me/1FYVRg4WMsvH3XnwQ63opwJLEBPb7gY9Oj+y/UJG0lY5Wrxup
	 8YU0TKd8OTs1UDC0hpEOSbc8Z6Z4D2Br3+VT22vfCvJrXG0r2aIyfBmPU/Kg3Bt6JS
	 eNSwFrvPM27hVrWgGH9dYzq7rn147g0pD8NMsl0iMiusQGv4LuRkFMQ0Yl6ve5DlnD
	 2GKmP2XAhKJjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A14F8A160
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633825368.14249.835315042726452956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe6c308e3517edf135dbe4c5af554d561d0783e9f3cd1a2ac8c8ea07323e12e
Date: Thu, 16 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776338253
