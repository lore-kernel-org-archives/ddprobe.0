Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390451C5F13
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745822994; cv=none; b=OG/zKHntwrZTKJVBRFd6GqNX/GVRI0gXPQUvsQtEgeOmxq2ZmqZDRry5I1KZs6SEsVtjymJkFrml3w73sJsPSDaToCZTZVMqxQz2/jP9lxkGRjbYnb50KIiUb30mROOyWwRGMPZ7W4YUxxs7G+3Wjmtz8tlpZWI/9Mb0PMydSo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745822994; c=relaxed/simple;
	bh=7FXDKMpy6V9dgMUbrA2SBp/4rLYLayCvpvS71d9Y9nU=;
	h=To:Subject:From:Message-Id:Date; b=G0F9Kih8t2NobmqMjT74Sue+DQeChE+ThoPTqamuPQpIRGLBgWgu9W6E0j8MA9PgWI+yiQZWc5iJnVv6zsh+73k5pPQkxLRmEh5cY1s2cYdsDQyePY0tmAxxq/mTRQm9ijonBljSSYp495Xm/gj6eS/hpbQBnZGdwe0uv06DyS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX4ykQtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX4ykQtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745822993;
	bh=7FXDKMpy6V9dgMUbrA2SBp/4rLYLayCvpvS71d9Y9nU=;
	h=To:Subject:From:Date:From;
	b=KX4ykQtttNlT56BHHoQJDkIF/4BH8+8xOq2IA4Ysr2IsnQfXq5lE/KPc5vZvUWwXz
	 /WVyyU88T5Xzl9LB8CFOYn4HytMwlrTM1bYUqz08eBX6McdaWzo7lbRM4MCg5dFvZe
	 ceesw+Al0wnqMFxNviFol6+ewTKGkvFkQWxT5BDYND66asruTaunJgIGZBl44wNxke
	 RrZvaWcZ+bqMOL9NIz4mb2TwCfVge4SBMvEjhngTN2LN9V++fE9fZmBrz9zDzgUEpU
	 +PirKf31Kq3Mi7mXpSh5KzNNFeKSjQW5YOJwlnibMQEWOQ0KA2j4CWVYSh/ne2W0JM
	 DdqyUUsys+60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40FC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582299357.22284.14432369958656953199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f49016b604af736328d9d41130a052f8dd203bfa13bd638609f9094fee5d7a8
Date: Mon, 28 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745822993
