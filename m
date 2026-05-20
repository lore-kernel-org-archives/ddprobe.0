Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE072FFFB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779244234; cv=none; b=ctrNEv9eK1Lkp72Q2LNtd+DxrIVOdq8Z2HXS3ANCVdo6yIROtK6WX60jE2iZAvTTRMcSdODG6JIgKUGlVCe0M0+lppAqC8iOZhnN9xVYG/H08iXxxLwW2KrZaWvW3hA+66TAOe9qvyfy0Mcx6T6SnTSDdpqH5XV52sH1eBsjS+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779244234; c=relaxed/simple;
	bh=pYS+iO/fWIbgQFFS+WL04Evss7l2GB0olZ5wyl5HlzA=;
	h=To:Subject:From:Message-Id:Date; b=R+tQdU6A2CIx36jgYmlZxKhB6ifrti49D3XHUFJ6ymTATpcUPPfVbhDIK5pl0/oBjIv5HbG8q1AoYcQ6GbNQTX1HA+jiMMC6cFSR248r1LTk3vdSsiL9HoxqV/3SxVn08oKeDbH5dho510H7rY/SjAodJrl576bi+1gRMAiHjms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9+yucgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9+yucgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EB9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779244233;
	bh=pYS+iO/fWIbgQFFS+WL04Evss7l2GB0olZ5wyl5HlzA=;
	h=To:Subject:From:Date:From;
	b=e9+yucgqyNLnmsCaaBGrHVdnsMIOaWItmhr5V4jeODKc+YgeJLM8ZO3S76RxrtDlm
	 sFFs/8550hgNGqJNvdXND3ihMklDxCDuk59LKL3KBvH+bmD89meNAIPDi6ftH2lfkj
	 nwmJOiIekP/1ZcOBF7SJ9zEne2S7Y4zhAcThPbcWZ+fF2OYD8obhkPHXQGfO0MFirz
	 WnTOOCAiymiX7pFKTNkdonDpUJ+r+R+H2I4Q6OCZ9e35bObOI5tE3XM7j/7V52r49z
	 oQdTMoPZD6TKlmFUyasQ/L/gdncrhz+SH3FjfLwPuiwwFUMaDVSolT69bB7gLdkFae
	 QrZAmi2KAYngA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB348CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924423369.7986.11386763680137962719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbac1b0109e0d371645e3d7b217d9b2c932b4e015567d9ea702eae91f340f95a
Date: Wed, 20 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779244233
