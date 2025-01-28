Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E786D1D61B1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738092354; cv=none; b=mTD9StQAVjXEsGmPqXwPNJdQRD44XgJwMXdmUvzzOtgRJ6bKAtJS64R7sP5FNr9pZO5KV1IsHWkJqE0udQmz6nHOQW50Dkym08bijNjd0cJtZjH9moHNxpO313a7yI9tbQ7qjsjebCly04tl2CDlp0d0Q5jHwWDDdpVDn8Io1uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738092354; c=relaxed/simple;
	bh=shsthdhDl+/nMx7M08WrDUVfLZ+OyTJN7a4gmYfo4+M=;
	h=To:Subject:From:Message-Id:Date; b=DTrvrRbGUm1m3PBbWqEouNwsw0r7M8SMU0+5exj3bJ4NQVoUMTcg15aUKMzUoGlCaM0TlFFWXrqEP9IHQMWcXPwox8OSXQy3UnWQEg317RYmlZskZtlVwGfS+5JbS+94jVcf3/qKBScGN4+1Kc1n63UVDPzKD94ZhiWk1E9xz0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1YHKjLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1YHKjLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA30C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738092353;
	bh=shsthdhDl+/nMx7M08WrDUVfLZ+OyTJN7a4gmYfo4+M=;
	h=To:Subject:From:Date:From;
	b=X1YHKjLE62/x2EzqpH5KdiJCdmwZSws4z1sJPSJOtM6o4/kN8lhU4WmaG0UTgSPAe
	 ExUNGNnkVmmSpSksN7fQGV9ATzZDN+JbLOXzDCxMCmnhpSUkpZiHSVFUmGZy7AIISJ
	 ccE3f9fTTm1IPq+AzXVSYwkC4SKDnBlEvvvxm9cwZIJN37d3gS6M+6URsFc3TwRXGC
	 hdyItSgvSqXZDLi2GnwY6cw/qhQoHUbj8NBTgXGolpyG94RrLA1+YOx3Leav8ZJ4DM
	 GFrdOk2ZQ2O9uHB7M7Fetsnou6SBZdl7U8FqM+/P34kUQWVx6t8AP8JOAP+JyAf6Ey
	 D0c63wWr/IImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CF0C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809235368.5770.5101493847557605056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4060c4d8f2a3b90980d432e58573fb8520f527bb61833b1f5533981ac6381bba
Date: Tue, 28 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738092353
