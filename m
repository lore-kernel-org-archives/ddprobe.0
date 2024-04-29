Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1DF1836D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714425743; cv=none; b=AT7DvbWH9bRJcpWvctHxXZEd2iMPmG1sn3Mchr9FiIQIKngLbixoxuryHypad1MsSdOJav4vz7rWUhgBSVVv3f4r87k4pZnqhlTNZHRrci4x5OL9+/i0H6O3d3oI7s5u8hcE6VM4XX8mQjHYs1arPgA6i3CGksdGx92Qaa8tzfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714425743; c=relaxed/simple;
	bh=xxadIGI/0Y1WCeC7YaSIBes10GGX4Ph73jw2RQ4cCkA=;
	h=To:Subject:From:Message-Id:Date; b=nfLty0d5XP2Ev3D3Woanga0W+x1mZHSsyuFkOxn/hy0qy7IUu8ABiwyCDoYMDd6EnEmkZCp2R/MPwf+E17LI+nePFRZwEnfY4NjozGNSGLb4QX+FfoLIDq4j0Xbu5k0MJ8hhsQyOOcWEYnxQYof9XQyW7bhjL1gUsNGvkEBL4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ8YXE2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ8YXE2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AE1C4AF19
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714425742;
	bh=xxadIGI/0Y1WCeC7YaSIBes10GGX4Ph73jw2RQ4cCkA=;
	h=To:Subject:From:Date:From;
	b=LJ8YXE2VMzD3qi73ZWA75ztI+rETWgVCA3UelVvfRYvtjK3YTbEe1sdpXkZ3yGwDE
	 KctYTlt4mPSr0WCreVydVGjNQn+51idYPOKjhhMYg3XatI2uMdLxrYn47eXGWn1DEP
	 +KVWQhLhe1hdbhFWitqC0HASGnpG2kVPMmkW8BQ9TGdPA6EdKT4g56vp46Zg9T+aLr
	 k+74d+UR5zEZ13MnbCTaqHwqcEUs8CaCShGYxhoiIHeVKwFa5Bj9J/Yp6ivfsjSd4v
	 o+HBJ2Xzh6lt2/JT2dUN3r+85x2n2D6li8OQBmIQQPK89KOBuBTGhU+/44lszsyWyw
	 AJzy75NPoL8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0606C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442574276.7931.4551989736152674167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89394cce578c0c58ad5fc921a36cb5441c4b37a6b99aa96ecfd072ac7390549e
Date: Mon, 29 Apr 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714425742
