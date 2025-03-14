Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B769205ACB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741983535; cv=none; b=pEVxKn+o6wWsmeBBrTcW/hVaZhnXbtT5dyVaa04cVCDYidumyHUVdqp/8ujhX31YXW7Sia7DHUGs6RkSV8p20MwDfiVkzsR+VAcPaQdksfFjM9vMvASsuoJk7u4HaBcE3F/IiUqeQijP6DDg6kYrDUuIdWzdTp/SXnQa9IJqO6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741983535; c=relaxed/simple;
	bh=VsZ2RThM/YXH74Y+p0pKlLQJsQZ974WL1g7ptqqDbc8=;
	h=To:Subject:From:Message-Id:Date; b=STYdvTRiVBCrSSiADTro5T8QGFoLhjLPDc4/NwrV5KYU/d1LxefnRccd+cH26NJqnPhOpm4vF92Op8Nf1gsgAC/mZaRB/REZpKDwqjzMQqmx1h/D+n+sKjp+1fp43yPA8XpKMJozIqqBxwTa0Kyw0f7XVfbez6L+HrXW5dyzjNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha4YKhYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha4YKhYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25C1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741983533;
	bh=VsZ2RThM/YXH74Y+p0pKlLQJsQZ974WL1g7ptqqDbc8=;
	h=To:Subject:From:Date:From;
	b=ha4YKhYNZKbLXz2zVYy/k3ZXd+wVh/0Hnu2evrQfAMkeqxsTvW4qbxNGMpkAIkd8I
	 2hdQztRoJYjeYjxYci94CzwG4EuVX5t15nC/8INRe4m9ABctttWeVIp4UwCrjD7eNN
	 oE4jvRQKcjCX3UFe0O7cCm85vKopWCZz4c69IRCv6Nb8W5lf355Axuu3nPbFHvr9u7
	 tGWjD5Nmy2M+kAhRiSjq96pku4JNGN8iGWDID01OgSRIZifg1hFE7fY6Vi5uOzBIUk
	 wXME788gU4hZGaGWiWDGU1hAs6AtjH/QKEmqK6S+8GRde++NOLc+1RBsXFgDTuJJXE
	 IZQXBNZzimQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBEAC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198353360.24202.6986258569274439578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa2d1ab3f5c1f8490fdf8bd63c3e9a5e2597fefecf0cc383919eda5d394f203
Date: Fri, 14 Mar 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741983533
