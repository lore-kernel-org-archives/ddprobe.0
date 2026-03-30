Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F015840DFCB
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774829694; cv=none; b=q0aeyXb4Jhr1x6jkkZkaUPj5eJapQLZfrFK29r2RjLX182fkdA/xJd0OKlofZ7+qxp5DYzzU8cMCdsUvaQ2UJs8LCgmbtdL22I4CjdCoLB3bqhSPUr8K/8weTr+tmD4Q+C8RgS2lanaeLpOBgOS5o394CoHzlQv6tEGZLPBmOLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774829694; c=relaxed/simple;
	bh=o0Wprt64hViYjdCOpNbM3idah7ZiU9rFueiLwktwc/Y=;
	h=To:Subject:From:Message-Id:Date; b=eaLwn/TjBIhohAFNSYwjw2NxBVHfWzR7uQS3t18ZZY4ovjufHTrywaCRwKgnKRgMWxlkH7PVG4oPxVOnXDzDWTwxSkrLgECUZY/BU+QzbAPcQMktjc9MHVcqds5HxjI7MMU2QsmpN0b56SRXlmOwHe0rNSeT63hfWelVlWe3K34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk/X+J+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk/X+J+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A903BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774829693;
	bh=o0Wprt64hViYjdCOpNbM3idah7ZiU9rFueiLwktwc/Y=;
	h=To:Subject:From:Date:From;
	b=tk/X+J+T9fe38S3rBgDBHtOk76c7+HWNv0L40ta1VnFddN6/4RAZfXpLAQY64L+gJ
	 ksLLiwJLHOjX7DxmHeRwRmRBed6FL4/62g2rewqZmbuDhdyFt9V6Gstz3gquZhO0hG
	 MbWmXh9Jvx1T/sfTvUHiWTuuMVERL4KUxEG8SaB/hW0y57IjbKKv1EyruUCNiBCtxm
	 Hy4xFoLAh2RNs2SGx/tEudsQeFism4cHjBKsMuWU1lIFeHgZAEcuUyzefRQj7DfN3q
	 fZiikYHXtm5jLykiMEJRR994buxp/shYpV8gsX1ErwESKV5xtBdj7Vz/xuJg29RucO
	 2O4KGnkx119Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9668DFF4923
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482969358.2290.2478811677570730810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94362e778e5f1cc0f3d912a53422ac70eefd08579e6b3bd2c43e4e7b5eb55967
Date: Mon, 30 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774829693
