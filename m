Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498555478D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769241234; cv=none; b=X0PC7cAwOGYc4XVtJZmmpm+dCJX4uuGERuObAzkfiJcuUyYBO2UaNRkaLSELysNkFzgLlPe4wnLXmP6/F/JHb0Jqpzp/MT3kID/OZhyW7s03SyZqE/xnjifJTb/pVjHYgdB3YTXrI+6z9fvS5lcFk4pSly7hRhD/wlKMc49r9eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769241234; c=relaxed/simple;
	bh=7JNoWQi3DfAEy2yUDYkF81ElwqCOUZBLNjjPYYUAjhA=;
	h=To:Subject:From:Message-Id:Date; b=s9Pryn1E+eyERmULEgU0ujsBNNbv60kfvVBF+obIPQDlantbgf2e7Jvt1ldEnYi0tAfuPqCCeNpscbgYM+KkdQSY42z9Dbq4509SHpgs817XN2w5a9vUQP7clIvema3TwOrE/2fUI0bePkKzwnp3b0FrGdMUvxiZpGqm/WRjfcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMzyooB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMzyooB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263BC19422
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769241233;
	bh=7JNoWQi3DfAEy2yUDYkF81ElwqCOUZBLNjjPYYUAjhA=;
	h=To:Subject:From:Date:From;
	b=tMzyooB0RB1MDwS/mfPd3S2Jgo7QVmTsTC3I3rklLWGRgIxWcrrAuVzT/fMDV0EF2
	 Co7h2ua/8BctBdskRtiw+MPFGAzhehfUCQqSQTz2/aJo37/K4Owh6Fz0n+QJkhaWvM
	 0evuDN9dIuE7iFkzz8OmTpQHfmbCy2xX+XMEycrBCG2I+W7behAnA5582/dbs4t7S3
	 2aPi4VxoFqF34SN4iNZxDlkJSiebAGZtlgeZkWWtvXhpvbrJGSuPXDmikkPKCqhgXK
	 HakMaEkSaR3y2Cb/cp8CVLOfFiIrrH+/c/uf3knbLJ5V8R4xUIE8kyUeWHRyNXNPGQ
	 7AX5HLgDa105A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC82D715D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924123358.20809.5590057740816247865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad069084b9366d5bfdaed1af126174d8d0f5da228a80ea17396c6e3036d8a157
Date: Sat, 24 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769241233
