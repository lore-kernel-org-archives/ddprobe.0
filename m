Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1556A1EC01F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728989754; cv=none; b=QXa3MWLdRg3FXFGiaW8ceVh3GSWFiNx/lwh/P2TBQRmquEKV1WAxTA4lGYrUy2oYrBGH4inklxTGumLYkFfB5XNkdNLsPDlNAmOAozxN7p2otbG3dRFwqTQ2cY57I1pqagm/FLSgKkmwOMNqqDfKXvx/0YiGlA++eXObutrvx3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728989754; c=relaxed/simple;
	bh=BrmgylGsxI3t8ozAUE+f/PSWry8wIIiFOrZF1rB4M4Y=;
	h=To:Subject:From:Message-Id:Date; b=KmuDio+rdgRBpd/VvUc4EKuo5jiGyPEOMAMTdjfsWoPmAVsTA7IcDyIMavUrmaLRKl7kqyfu072YGJWD+mONyZnmFnS4YnCf2XDhMKOHhIVQ7B8HlvxExM0Z4QNUlL7xE04yUfQvhxqUbSfWeqjHwhNgbOuqV1QbUvUEVG0hUx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUvKgyby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUvKgyby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C5C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728989753;
	bh=BrmgylGsxI3t8ozAUE+f/PSWry8wIIiFOrZF1rB4M4Y=;
	h=To:Subject:From:Date:From;
	b=NUvKgyby2WHyrvWwsCEYiOnEkLSQxws+cfFyXfkNSON5ghSwIZ3x2mdGEPdZSQn8g
	 1kpvQ6J8o+r6WR6mE+6583FrXWVSqU4/3nP8Qc7rpIQbu0ayS4ilK+oFQGZKmIpT0Z
	 FVu4GauIXSHqrqGejyY/Go8qSi/YNF+w9XqwxYi0sgHUags7CMFw+k71J4K2QWlTfn
	 /q3RX2RxfUktMbMmeDR4wfZeFtBghPExlnmvpOgwqV+h236xK5d7jiQNKvFFFRmHQ2
	 /Unrcd+qCIDZLQG4gisAykknvSVCj4l7vZilNelY4Svufid9L2AvRaVvKQPOm2b2JF
	 yJGLtwd5ZlPuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD48CFC288
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898975362.15078.10621033224548797282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d79e5462b3d8e1cc2055c1da555725e9ee066d8881a27110af94c1ced084a9d
Date: Tue, 15 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728989753
