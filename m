Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FDE552
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733035554; cv=none; b=X/v1BJIZJ+kp53HP9XhjkPe4RhfGegBzyWWinJC5TV4RUP5YCnjtdtPb5hN4OI6gtFqIcBug5gRdIWRj9OwL7N4lXn8KH19TBiFn69+d7piJ5xpR6ETUNqAMxBzOW2JBk3MRrzXWOQg77k8okxBzL5ugHhA2594iDESOOUl2gfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733035554; c=relaxed/simple;
	bh=Z7/s49TRfZ2kC4yHu6c38LLsLdiZu4Ng/oA+20ZhlfY=;
	h=To:Subject:From:Message-Id:Date; b=nV4V8nV1cVt8fbXeJ2p/nGLawBcgeM/iD1MUXIxIjHTrSd8odPQCTEDG7TPkKwFfKm9SFGmINL4DnqL+jzECoNHMAfhxuD2X+bC2PcyBqupPZDrt2j50+8J8jmO9r2IMtvMIrYwn24g8VwksC7tyNh1X7/bfR1aiFXrlChsbU5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRCgVsLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRCgVsLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C81C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733035553;
	bh=Z7/s49TRfZ2kC4yHu6c38LLsLdiZu4Ng/oA+20ZhlfY=;
	h=To:Subject:From:Date:From;
	b=fRCgVsLj2miIfZcKmOPVHfDOkLnO2miDcVhh1ib5YUCsXeE1HEudfnjAEPpcIddRm
	 b+fD/K3EWlZqUvvdXFQdKxNkYeOzztSiyij5zhp6Zpt01mZMsjLEPFXcVaLOqvjYYW
	 HLyTleV+1qAr9nB1QjLWWKyv5xmoHEn1DszkuDzD14Vu9RWDKVJsnjklhfD9fzv4JT
	 cyGo+8vZNQY0+sZNbmkSWNgfj3Lm5lbrrdw0owbzqe5Fw5yCvc1MDu2DRUJ2Bo1Ned
	 i3KLXWaPvYnWPTQbbBvw/wvNR7sRD/pDG9VTVN4oZp50Nz4J8u5wU/KP9+rYw7P59G
	 DJf9IGV39B4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E4D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303555360.12194.13993047647556260528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf87b1cfb1d47184aab77294f1216703d82234b29aaf626f3937133e7dc4e0e
Date: Sun, 01 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733035553
