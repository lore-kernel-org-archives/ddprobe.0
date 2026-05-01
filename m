Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF73939B4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777646854; cv=none; b=c908/YZy1VbJxilhvq4Qfa9FBnH/A/9/8esLm8AGJZo4lXysa4/A4u9JiMdKcky7oLVDuf8KQpEqEDojitzfe8Jzh+LVwrhCEunwTC1uE6vVtTc4o2PgmNqxWmzb0nH6tkd3rVHSslfpSiE9msjcX0MXKMkcvjDp3kTvj6TJDbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777646854; c=relaxed/simple;
	bh=0cZkoBSMUqyWqMPrxybGQbJ2S9Z1UKIusblrD/seJ0Y=;
	h=To:Subject:From:Message-Id:Date; b=XBo4Rnx4dAv49S1P9Zyk3cebjZObxfwZ70aObWa7HaBUOyzNNg9PH2RXyjt8D6v0YZ39LnkuX3SVHDAu9aqPq2LftFUQzzlTwEG5RwUjbt+vteImPqZgOClCmTpP8ci9i4j+WZlgZnG0g+8WWDlNpRpjeTJ3pHI2NF0S74c0ybU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YusyNVmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YusyNVmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB646C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777646853;
	bh=0cZkoBSMUqyWqMPrxybGQbJ2S9Z1UKIusblrD/seJ0Y=;
	h=To:Subject:From:Date:From;
	b=YusyNVmE1tG5CdSsITfBmo7YWvq4Im0nHm8SiD25lvdQuj9XqMcf4phmDWaG88YZb
	 61sy+v267lSNywRRQ23rSMHABYDPrH1XrXU13Necd3RsInGOL9NE/dSNznw+05aixi
	 nH9+v3uwSipombNzIyvretNC51BHsoRQIphNnVyhgsMMiqMvNmn1cqIQMYI4mxOefj
	 QQGfLhPEhb0vPxqk53pnE2qvG8YXrXk+u0noWdtjXEXyYe6ztQGaxfGn1XBdOirq9q
	 VXGDIHk0WEQEwm+i3Wgl48ZSJmC9IjjFPlg/vx/in7u8OhDLH1stRh/GbyhnRjyhfD
	 sV0RSAZkmJRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA901CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764685368.9599.8686249907200175658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1fe0971e6d647045b52482ac36ac8869b39c0c09f0f58e97569a8c556aa0cc
Date: Fri, 01 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777646853
