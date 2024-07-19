Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6043D984
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721372154; cv=none; b=dwNL4dAYvl2YC18nMZjvwWuVTpAyyGVPMW/dL+mfyeJ0zj1xbWijoF2rLWy6ocQD0S22cvldgzsQwi/wbQEbz/VrZWu4Y1LUrBsMDqWr/ZmLNuAZ/TpGfE5yCHDx6He59N74T1/n4kuzP70xlNd6+JM4+ewJY9915r5yBrWvjck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721372154; c=relaxed/simple;
	bh=EYTNr1m/W9skPfRSjSmCSa3SKIa/exmDKOtsyIAlXfg=;
	h=To:Subject:From:Message-Id:Date; b=Yn/VzChxjMfk9evb4LNQFGXm5AtxeY8hu/Vp2bx1nLkcqnLYW6dM19YgQ7TtsZ0hAlgRpPo+L14KBHa7CznBmFCB7pnmwykEW27tWD/wYW9rud47u+ZwZi8HLuLhy3E0sQLlKWQyRrLXVQZqJs4vfR/EXtdZEUilpbe/8977Vzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlc3rUAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlc3rUAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EEAC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721372153;
	bh=EYTNr1m/W9skPfRSjSmCSa3SKIa/exmDKOtsyIAlXfg=;
	h=To:Subject:From:Date:From;
	b=qlc3rUAwGc4gVVDCOZjfR7FTrRgGpsnCYxm/ZFnb6AmzBIKTvMps27gYaZzhBo3Jd
	 TfGwdmyPQrvK8MQsY0uoEYbh+ccT1JyTr0GjB81Cf9aI7/6D6jR/MBI7+HOc0Le9nl
	 SipURRUL/SwpJ1BxghCbmsRtOSVGyA3SRsX+FjWYt5yD5zf7O3klJZJFiuyoN9oWIQ
	 8gT9C1cyAUXic0jvn5tYygO0ADUrwreg4u6pCZ5hYnwvs1dOuG8g6n9E8FnYzopXiy
	 yW0XDDfV4yabCwQbNwjhn7j+ZrrTtHwLc1Kj42HdBinA9fc1iJs8zGgPVKwvdW3FO/
	 sELyveKOLEStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1601C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137215362.29829.5557655880164482221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3fccb24507fda1cafa4b2d3019c7f43e37d02748df05ce43f50d5e4d358f53
Date: Fri, 19 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721372153
