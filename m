Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5192E92A6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772159094; cv=none; b=mBLTXA+0cQkT18FoB4uED45Ka2kkfP4izJ1PSJzIybTnDhNcoHNemB/gxbpjxn23L6Ml3zNQYIwnAyBT47bcP7pXKkCWrnbXxta6vaV4BhV2sWr+rLzzygDH2FkHBJMPvWcRBj1lKvaN8DGkkq4U9dl78JTbqtmaBSDBVck6vKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772159094; c=relaxed/simple;
	bh=uimKqEYxTl/tAho+rntQLwq/7Z0aO2eR4ggD8CsfVm8=;
	h=To:Subject:From:Message-Id:Date; b=oYGgirLXUgok+iE8joV8cS+BxNFuHfEHd+ch2X9qXXyRJMycS7YNDeSjxaueIjApT5yv7WFTMudnPgqduAfwswUt6vVU2JJV/J+frSoIXYn46gY4Jy64/+Z0JDffXvoEUIZgTx1s7aebsHhnYH3sBEnRUo0qmTObq76QbljM2z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjNT5aLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjNT5aLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7185C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772159093;
	bh=uimKqEYxTl/tAho+rntQLwq/7Z0aO2eR4ggD8CsfVm8=;
	h=To:Subject:From:Date:From;
	b=WjNT5aLzT4Fn+AVq5zsqqctAw7r3t0jSckVSXbJmX4RrQQXH6IzF1Ufle3S3Qd6rO
	 Pz6CXEzJz+F0esk+SAzmSGaGwDRsipDgKCnUFfuEQ2w8KbSM64xp2+SGo25Y0eQyGj
	 dAz2ioxTfSF/fk2rZnYZYyPGRtMzDsG1v4gTPqbq//Ibv4WzD8H/3KK/4qx3klj6iu
	 7W+XMAB+qmQVgbrm5umZKJ3H7GVmEn43CcT5svB4TgFK8bZnuk4Zt2hS94NT8ai6Io
	 F36HWmY0ztIDM1VyLAs9Gv6nXUD/0THWY3+be9igWcacL5X83CxF2TkVf34E3rMhE9
	 rS9hQutuVMdlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BDFD9E2D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215909357.32129.2060268032676737640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92d5211512204fb40f8fb22f068fb4bff9eb1a4b9105a01041b37d77d240dc7
Date: Fri, 27 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772159093
