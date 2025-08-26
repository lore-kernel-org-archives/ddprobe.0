Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E12D30CDB4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756249194; cv=none; b=oWdhsFn0QkAgFA/jz1RzBE8isdhpPkGy8MTp4FUTMZ7FGM0t82eitp+RwtYr35zZtzuC9c4rxXzKDokOwoDiMA9AS+GmNXiOlFZt2s+bHopgXnrL+6CV2mZ97DDZhAgDwQgiDbO1ee36E7VQA7eS05vqfg7ItQqjz4rDxu9/NAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756249194; c=relaxed/simple;
	bh=vt9vwrkh7yvouPZe59QYriYDDL+jPcpO4VT0a0ETrjA=;
	h=To:Subject:From:Message-Id:Date; b=ips+4kTDA+ir3gvUy5n7m2rruhhrY5/+o4wYoasUzf7EP0aAmx3PsSKf3tCXYntYxLgDh7STbUlQ7Ssc28ctbUXFeRoqKSuYX8rEYghu/EUSeAaC3vqLU+MqAQzrpUaWSyipWIIgazZ5D90Rs4tCQAhnTuK2kd538aSyLsD2poM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvsBhqST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvsBhqST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B47C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756249193;
	bh=vt9vwrkh7yvouPZe59QYriYDDL+jPcpO4VT0a0ETrjA=;
	h=To:Subject:From:Date:From;
	b=JvsBhqSTlYBWKFXPwDR8bBXS8Rb6fGY9WL7ray/Y3J0MrJHgXHb7flpeN3aBUSwDU
	 Mixru9/7O91mcsLJHhr6vzuLWvWaRN3l2vnGhWBqSVN3A8twvZiqnGDAeHguo/dHMY
	 D+BRn5PacBXeX3j/MxQK1Mr2rgss58n+3GJ3LTMCS7R7m2M6E951A4DKdOcF7L3ihN
	 UCndOHwLcMGg6NxmKYQu25ZPaDN1IFFYp7KHrn7SIOdH4HP5mtTImOjn8t5lxX7gPm
	 5firR9n8D4SbPI8t+94Gkt0qQiOa3Cuz4juYzCX2EY1L0p1vtF4c2RN4hs1HLsBMyI
	 5Ub+2Wflc4yZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DFCA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624919357.3100.7329480207301432997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b724453a751ac990bd6a43092efd8505241d5dd2ba6c46e4f3a5cda407e625
Date: Tue, 26 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756249193
