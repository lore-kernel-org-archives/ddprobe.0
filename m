Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620745B1EB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780277074; cv=none; b=R9YzZeiWsyfZDcd/M3gjhy1cU7cW6sTg6iXRlykJA0HztdsVHOx7auWvfqv7cTGbSiWMZKGWQGoSkfKP4rGWxf7BfxCyxREY+a1dthI7ZLjzedUuP4NoLlckWtussUc5ufkSqan+kD+RTrfu7fyxYOe6AitIHL4cZOAbmNvQdPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780277074; c=relaxed/simple;
	bh=TBDM4zGlOhLLEzcm3xtZiVYdf2dOXBOAgAxgq+E9lec=;
	h=To:Subject:From:Message-Id:Date; b=MgVYtlvlv2qH75FaNkeuvqV23qUrTpSEj2HGNqBYZj2nwg+XV7B2Hrkvme6J3Uy6r5vHtw863qO41OrHiUHyWlZ0tshydeX8fWJRd+rbziuXEk/4dGaY0xafVStUhNLx1BechEBHJOVJXGj+6QqmTfO7Jzdf3Fjca8hQbLgkB+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF0HQT0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF0HQT0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD51CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780277073;
	bh=TBDM4zGlOhLLEzcm3xtZiVYdf2dOXBOAgAxgq+E9lec=;
	h=To:Subject:From:Date:From;
	b=TF0HQT0vI+86XpjO73XBmWZGgBc+0CMRtfYttUheio8sMR705jzJSf6f7pB+c2kgr
	 pUGMKTyssKsF5OgfNTbRFjNzQwwRDBFfXNdkH5Kq5wwQNqk8tGVzNdbUb6AYSUZtYs
	 wXzAMqFvrGhg0W141xbK1iyGlvru7QaQiG9kXSCR6adi/3F8dqJIONbfYevz1raGew
	 3BdyyRiHJwBBkWFrtpHwSbzOWUa6elK0279ir57q6EVaWb1ZDVhMF47TGEXGdz7wJY
	 p4bVPlt+aK5p6zq+Qcv1cL7eCWZvTeaIuIOCsXXG1rht7jrxxSFmoaA8MfHsXxAHPV
	 nRjgQVoKURwAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1E7CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027707375.30424.2639102025175253955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278a7d2f977acfae6c78d84c862af28c91981295ecad2ab35e4f3c6bbb80c85b
Date: Mon, 01 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780277073
