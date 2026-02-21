Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3877A244186
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771639494; cv=none; b=dc/E+3ntYdjPwoxFlnD/D+ZAf9GGvD7DbO1wPX33s9pPoS+Qkrm42cuSk9zQ4shJUKivc6lSw16xE80cT62rQHWJiWT+HbUavxXkHN/MilvjpTfIrJgICfrq0nAGOHnwwxVuy9XECBhqefG4NPr2NsUCABKHYT2ItURO4f37ROU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771639494; c=relaxed/simple;
	bh=iI8iAFpUWhsjU4Dqrh9x+eG8M375Lat2k81NIAQ+xtw=;
	h=To:Subject:From:Message-Id:Date; b=Lm9NKiokscK+0WTxtHt3a/F+RTtwwnVqvunv4g+sqGSiccAI8Vr8VjpFSFLluQQ3GX+UZYFAXlxmbuDv2+YPUr3s98jSUhxtVzeFxy6VLqeGRdsbSQePYpwq6W+AJ5NPcb4CG1FRH1nR11p8/7pR/7b/QCzkvnBaUSD1CzvFN4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow0qy1ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow0qy1ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B743DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771639493;
	bh=iI8iAFpUWhsjU4Dqrh9x+eG8M375Lat2k81NIAQ+xtw=;
	h=To:Subject:From:Date:From;
	b=Ow0qy1zeR+ldBn1RMPgs+RdZnLcgDtsMpb6DMZpsjDcQj0PgE6ReGGPas+L7o0cIs
	 Xondbk+8y3vOpMa3otabZl5GzUtn9GK5QsIUS69M45bc0nm9hjNSDoi1l4tckGenTz
	 /XxF1FkdXLZt+MKFmFFTu2HiWMLXYL4R877mG567nkE4ck4XJCq1FDaCCBtRNd8YqI
	 97VLJWrX6bayH5zYaDdCyL/L9RUsLRJpaUoMmWfxAQPKBdd6y43gUCPDlD8J9rkLwA
	 Qmbpb2bN2HQrwZDZ6lgC78ofBHQeOL/ZHQc69lXkdQB5qx4U9YknBQ0NB/FYUiWmFO
	 amgUuHKC1Y3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08D2C5DF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163949361.28805.12761264456453984175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e4bd97d61f477a38f4cebb21f3f523539982bf110162990ed0feceddc39a80
Date: Sat, 21 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771639493
