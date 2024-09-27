Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C23136352
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727471154; cv=none; b=K7xM43yKhp3AN/oHICpn0B9+fmXDagftu1+FmsfgqWiZ/omoXbyhrVPwX6t1EKcgYOcdOFqSMBveMuDTKpMV1lZ0UOf+AEBSDf2xzCJHyoce+0auVp+fsHJNWhCTUgmbXf82/CRJAU0vjC/LHKycs+2NsJAwC3DLRUI4f7poj6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727471154; c=relaxed/simple;
	bh=MiKIUHuDYXkxs5nNJ3iEZ2/0OSepyC9sMVtXHOCIn2o=;
	h=To:Subject:From:Message-Id:Date; b=Vr5lFH5VAEl18Z8ZWskJn8LO+HSXjzrqfCrMra856Mxchzm4eE81MSQX4sJYssz54XuCUWGNiNLrTI+0cl8Wg0tH49NakSDtHiM1x1x5/2WJCbENH9IM3fs1NJYDWlbGafBlIYMimJAeLOOF++KWn7ODutwc4/cxqDueYWTtG48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pydXf8Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pydXf8Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE1C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727471153;
	bh=MiKIUHuDYXkxs5nNJ3iEZ2/0OSepyC9sMVtXHOCIn2o=;
	h=To:Subject:From:Date:From;
	b=pydXf8Lw3w/kvGBykieWaLEIuOhPG13ZfYabuIGqVb+s/tKxDEEO3cHmsl+wtq4qZ
	 54lKs9kfvQ0rUW1wZSpYEB/vAQbNZLq22V7VlHByHdT6UdZh83FKJmc/DXlLXrH1WX
	 fsR1k9jPw4w7/JIEgK7nEpYdZNvWqJNkJIkpN+H2LCgR8ius4Cq3zb+/ciHwG4Suyf
	 WDmy3HRAGodasWDE/YoxtWuFTv0Ngfu0AGEvZcqW61uU10YTGr4XODX7LqpbHGf7Xr
	 0SsSrNEsd7YKkqxdgwCjhiPI+2b/+Cg+qNBGc8JzG5wWWoQIslUKDmo4G/Qg+0SL5N
	 5KnBvW9R2f4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E726CEBF82
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747115361.19188.17871256465886884575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324096e648797630e32b35bd2968d3653e4dd76e2e44958c1b77adb870f19fdb
Date: Fri, 27 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727471153
