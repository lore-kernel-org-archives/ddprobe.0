Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C9157480
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765132374; cv=none; b=iT8zA4AOZhJuVT5H+qeyOe3pZBnXb1WoAzqGIvHFeiazQhjueJ7PiXT/DqjsHFseA6TWazr6MWL3vI7Jd+5xLly4xtt0Ka99dIEWT+o5Z+lWA102ZafmX5R5LfllOlRAz+ABmml1qaaZkprSJfdXVh4FJsb+e/1m/mC0Znb46o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765132374; c=relaxed/simple;
	bh=wx3QH+D1Jw3NOXCGtz+mZU7ITvj1OilfU+h0yQCOcdA=;
	h=To:Subject:From:Message-Id:Date; b=Z4dG5ddYDITfnuoli+R4r7MUvHGl4Atz9TiNfbG6RwgSL2DxuWZXONduSSI9NiV1XWI1uyY08PBfrFyHxLy+nPJcnxL6knL8gJxIiMcsRg8/Gy8nrEXEaN1rqlIZeCf8HGvcEOPRa3o2MvtzOTc6pRxjJJn17u4rAknKlUQviJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgiMgAKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgiMgAKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEBCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765132373;
	bh=wx3QH+D1Jw3NOXCGtz+mZU7ITvj1OilfU+h0yQCOcdA=;
	h=To:Subject:From:Date:From;
	b=EgiMgAKXeENaG0vRZY7JuDO8BkJimFMRx8syKSfavfCXuCWtlsMHzuEOay9EqtgUG
	 5tJgEeN2XQHu9SBvhIpii13mWtj/Z6ft3bVQ+APJxMoJxcrx6OPMmV8QTCsMXxK/Zk
	 h71p59w7QeZzWrFJMUQMNx4ngDzWGZyjrMLnQNeRPc4HIFOmGFor6mSH8RtFkDoEPK
	 1oQcAcp47aM+1s+bJPxVKzurEoq4BE4SpajMpEsFoKUL0f2fdg46aYp+/md8oZYTNY
	 rXyczAikQ6GXLkaTRy5B3ViAJdhJt8XcUlw3kFEADo5F65c9JLYPyPUJKVGPG+HNTf
	 2kZSdC5+yB7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96577D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513237359.24955.18416531638536814483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1a8c6420519d8d87e1a4be90152d20f887e34ef2fa05534343078a56b4e8a5
Date: Sun, 07 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765132373
