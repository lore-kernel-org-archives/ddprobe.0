Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42776194C96
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753517394; cv=none; b=SEGOl8BBrVyTg0ISZl6FqXFaTVMyX/cKjCsSsN/OFmEGI8nwHIe5+GCk3WiNKHPjkDykz0IgwXthPGV7XTe7mPS0p6sbZewUTh/NPgLuG0IhXAPgmxe0HxJ3NdyfKpSpCf5sdkHkcCN+rh7DPC3uXuRQqAun35SZ2xNTAYHPb6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753517394; c=relaxed/simple;
	bh=6KdQLFLNi90MO36WKYX1HEaJiYqVslHgrwgWl7Ar1Us=;
	h=To:Subject:From:Message-Id:Date; b=Daw0oDPqlMwLCXZKwGY7XX7FFDASbx1Zo5W5OB3x1z/HlDdVZaFnHFHch3oMUzj12lyYb6i192B6AMUKlZ5pJZxRIpPfqfD1GiU3j6hdo0FElg0OgMYopdGNDJrwFJqZhGMqTeSxgAOYaO91wo0Jfh3lgN5iBgXeYsrO+iiDEV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq35Gd5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq35Gd5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753517393;
	bh=6KdQLFLNi90MO36WKYX1HEaJiYqVslHgrwgWl7Ar1Us=;
	h=To:Subject:From:Date:From;
	b=Qq35Gd5d+Hj8Jtz8ZCpJH/I97CEiDL4WjNUf6Ot8vcAonAR2zNBklOnxS7y1D8mgh
	 qUnsKtqye+aDsnkTc49O/Xz1/tV15/PhvkoVu0+k69duEaaLV4FQ+YO523eHZ3SZrr
	 rEsBuT4ap17x20VGFq4CNTd0fnWAt9LGmI0yHePhH5IixMkGRD/WqFz/f1AH26iBUA
	 TwTGV2uJD6O866k8NxiYlBjV221mDwJRa3pMYzXFp+/Q+cUjvNcqyTTs4LeUyMpu3z
	 6rXSKpDC/rX3j1mdoFhmbudtDF9/A/mMhLXmbCjQpIXEYtNtxvn39WtwP0Hkx1rc9/
	 X6k/TV4Tw7JCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF2C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351739357.21520.15360331266062700529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc33b34b22287a283b28d49a630c99e5bfb5b8137a4e13bd0680c92b0d479b4
Date: Sat, 26 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753517393
