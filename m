Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2793E4514
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805714; cv=none; b=io99bXOxYOLw7VO7/wFSm5qU097OoiDD3kbvNiBTs38HgmmRjIS5mfblS2jrBxJOcCUIgefCGkGrLSwy3LEW6W+5eI/fAUma/5xZHNpMmCmyIwL8xLEVnVZjm2pywbvL8Fp1baQnK8TsVxd9rU90YnATsVzhMAOmlYxd+ghddZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805714; c=relaxed/simple;
	bh=3R8QtwhUU3a6GZDEyt37Gngfo8Yutona2YC8PwqnoIg=;
	h=To:Subject:From:Message-Id:Date; b=RwvKiKrxHx5Zyn9UAn7KRMP6QA5yZmzks7+dgKjytIFKm6bEJT0ckvVHVwg940ZVaxJ/qs9sBAkrsllUKY8Xj00CxChYKYFtn5QVbhAw/0NsApsrTUN/bhtLo+yRIVVzfQVXzVcftZc6p2YPe+uxPbzvhDwFtAfldJ+WniHuSD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSAuTUfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSAuTUfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3355C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782805713;
	bh=3R8QtwhUU3a6GZDEyt37Gngfo8Yutona2YC8PwqnoIg=;
	h=To:Subject:From:Date:From;
	b=XSAuTUfWQ8hO6Urlnwj5fNXtf6NXqsEVYqd4G136J5CXJuNHky1t+UltRf5DNh0Va
	 iJdkL4tw7xA8YyJpdXl3b3tM2dvHvqLVlwqprntuAsEi8gzwESBksIHPr24S1CIBXT
	 itKMMAYKBUaJ2srxJJDdm12mxW8RX/f3XAC1XBhTBNZQeBrQIYTQwIW6wR/nsMFDMo
	 +06xRZyLleR1/eGWCmmB0erroGLnqS2ptjPf4NlBFHzIgd0hBLuodSRdMc7D+A+GIw
	 +xRpLUOkyDbTXxpH30cJIiecsStaFJs7yAJxTITSd6pTe+blsn8bSkKuCq3IXVqO6h
	 FTEAb7E+9CLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B78C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280571368.13764.14157894957638574603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff023b0a7a953e454cfb8bf54344506d875368be54912c617c4370519647733
Date: Tue, 30 Jun 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782805713
