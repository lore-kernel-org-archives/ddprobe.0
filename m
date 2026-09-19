Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2C1140E5F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789783834; cv=none; b=g48M+VxpvCVdBoWyAxRTb9pi6udSxUNE9xuN6CGdrugYBxnDEa0q+Y7lP1IU9MCUfZtolrzunePRfESgEoYiopmFmUBIBSehrWoeBAqCfi6iy0YF24R6+c37iEj5Cz+dk+wZ/YUld0hX3GkNmXpIljYE3kaSlLzZK6yKKFNDjeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789783834; c=relaxed/simple;
	bh=cBo/io6x1Mp9I2/Cn7wH49XZnTy0rrTfNFNHZs2R4To=;
	h=To:Subject:From:Message-Id:Date; b=mqD4Ncvrv6FEP+uBLVOOOkYaVNUK+klBWn5crCW66kx7RkhjfGD7CT9BIjlGO9NsdKerz5FWA0OWEQ++b/fntm64vYBFaLb4p9wIagWE45YGbjJG9BqxG/kWNAYHWhlsWPZYNNNKEg3EatiFRokO4F149SsGfweKnjdPC92TFQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQspOp96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQspOp96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789783833;
	bh=cBo/io6x1Mp9I2/Cn7wH49XZnTy0rrTfNFNHZs2R4To=;
	h=To:Subject:From:Date:From;
	b=RQspOp96AoZ1quNde0A0xKH+qFTRq8ePQ7XYfsbGF3fek4qkpMVdE9A0Hu7+qTCJ/
	 Ri7fQxYvGQza5f58+sZtRzuBs7xoCq2E+G6YvqSgmvWacHRfWXk1PWal3OtXZcT7WG
	 pPHhYXci/ZFAsDNg+M5cbL5GSNwZxNRzhe/xFez2xZNHystzW+jFpi7ftTtyT7J+RL
	 rniZHV++7lZ30ly1ff1+Bst61aR45p3xzmES0AHbtO7ahAPWwvAqUMOadeouPkpRpI
	 d+VjLZ4XCvNjS3BuFa9np0g4XAlYsqnW4mFtEVYpTqY9HS8TgmwMMSiu/62mG0PRCt
	 330EF/1lneoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5DDC982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978383368.18704.14780828759446645724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe61bc5a0b00578e6affb9141377625e40a33c5fdd4e28502721881e3f56134
Date: Sat, 19 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789783833
