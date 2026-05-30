Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4339D10F0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780153414; cv=none; b=oCETuHSSzhvRxZOKahpHpLgGoSLgTzfDSy6tbWEW/Ll5YuEPGQmdJzVDDhAPHyCvenrMiXup65hLy07ut6otpSgSvgxfLjayMVZSlkm94Sw94YnUjbuefUtCsZkgz90YoeaxKTvO7UHRmZiUS00G8GpcL8AWE4m53Qh3QSBPS3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780153414; c=relaxed/simple;
	bh=0siDFZ+q5/oitqGo7KAdE8lgDWmtjbbNyEnP5mjTeR4=;
	h=To:Subject:From:Message-Id:Date; b=l2zZbLtos8eQ0L/zFEAaft8JVMY5BYZSgOuP1Nmrg5XW6SISFjTv7d+FPLfLu570ltrIYd5r+58UzIiinv3tK2DQCl0redcEZMGuhtlLlxD7x7zSdh2raLgYBSxT3RYifzKd0vnrrn6gbInN1bOHu513uTtk7dGKmVaH2HOwLjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N30krDI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N30krDI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C285BC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780153413;
	bh=0siDFZ+q5/oitqGo7KAdE8lgDWmtjbbNyEnP5mjTeR4=;
	h=To:Subject:From:Date:From;
	b=N30krDI1eFBQofj7bapwNGkIWOpE+2QrXijqmbWSoHIb4kn+3rjXix/5hJQOtyyww
	 5f/cNwwnIKHRWsD90qXVtoG9drl+qoGPMIy+rFIcboLkPzlIybJQFk3Y2a12AvNc3Q
	 xzsF3lriTRXvtw8SGh+QbqcmigEPoq8wqIZ7ORGLP+aNxDafBf+YP4m27ZejK5V0Wm
	 rh6KCfYv+l1pSQ746n9tTqpZyOaspj2x5h7iDOEZoaclPryO2soR9e5Ms06weEuSU+
	 Tz2P62mFcOtYQYnKY76u8ZC0/Msf4v8ZwHtIHJxaWo7S8T1iotWX8fVBrYJPSS0nPF
	 87H6rbAOYFlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6947CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015341367.27558.13677747868471264297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b362542b010a8356203d7e8998901c1f4028aadd52630cc08f38172be307018
Date: Sat, 30 May 2026 15:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780153413
