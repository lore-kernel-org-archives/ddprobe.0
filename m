Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC9225CC42
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759403394; cv=none; b=P9Iak6amxTDmixXyCC/sIzoYTnl3CTZf+JVd2YFI8OA8WLhJ7fTxUDhEs5wAtyBKITMi3I7WU0QZytRAJJ7lnLcG65nDsoNxB+Pd8vAd9pXL5is2Jlq0upIjxaTWNAmYiF4hGLnqxvHqhK4ibkGhMKmlwPMlU6VLFzKWd4PWBkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759403394; c=relaxed/simple;
	bh=2vNyxMQG/KXEDw/OMZr8W++wpk4t7xpK2fcRCgJqWv8=;
	h=To:Subject:From:Message-Id:Date; b=lFBTr3eIeyZd6GssTZ9Omsz7SFm2rEWmK7Olf6t59XpQ+SaqNkCiBIqgDExqEyRPcKJpyMtjA+aRVcabEjIAAzt/0ASCsLb1A2Q+SK6cN8bZiObBxMnQg03roEpBhiLsCPFma9Lb2rMAcp0/UL5/81cbKB1npW75YhJcRLylrwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBE15Uie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBE15Uie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8500C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759403393;
	bh=2vNyxMQG/KXEDw/OMZr8W++wpk4t7xpK2fcRCgJqWv8=;
	h=To:Subject:From:Date:From;
	b=FBE15UieryxP6SqYQaREM22cUP2V0M+vgbTmtrz+dpSFs1+4WD3adHT3zfYl75frq
	 y7VIQt6ASWV0KERhEOmySOr6wGJ7Xlpn9sLR/tRTWeZht2CDwrUQZpkh+XBV0gha+S
	 51s/F0p1z3xWHelR2nn3WT8aHF4aN9UFShahXLv9X0W2JvMlaXBPHRVzDjkN92jr9u
	 89PC9Pd2KxjC5lCDGcZQY8XvmSn5JCaSHNWYbDQQPcDZ/wB5bI1MBGufRLgq+X3/wG
	 EdvBq7HanSyQnhT9dDEX8Uuij14bokLxVjj1wyg5qQthW2cxAKY3YdbOqZcvVg4PHs
	 bQO9AQmWDv8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97684CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940339358.5019.11359306892552670691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaeb5dc9e63dbf24ac42d3a16dc55b2b3e30b6e6e99116e91783466bdf16fb1e
Date: Thu, 02 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759403393
