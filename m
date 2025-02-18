Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC211DED7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739864934; cv=none; b=YbfKqbs9KYnKmQZOUa//cS0Acyi3AT/dkDNroLm7+e5DRs28VLs2QLvAqz4E0wUUnDT4UN3mY2kza+ZwCFt3OU37R5UD0Lc/GbSJWP6BcFG6HeMPbtCm8ViB/P/zCTqLUT03V8qpdfLdKnf78PdVCPowOnubRkZT/Y09zKv0VYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739864934; c=relaxed/simple;
	bh=SvSDZ6qqE38oXDlLodAewDI5BZ64UaYpmLd8ycQQgd8=;
	h=To:Subject:From:Message-Id:Date; b=op5DMNkhunzRmuWl0f2HOTtZmxTvk9eUvsc5hSGBk+SjXZ4LKkmx23mmuaXfdZpSlU5+TU9c0svGPMNdMDzRuB7hwBpJbXBi9h7EIXFI6rgV1F5VdeXzZDdE/Rogh94BM+IRVO/JAkbzv21R8BYHIJRyrQguGOnQudridPpjdzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAL8ZLQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAL8ZLQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5189C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739864933;
	bh=SvSDZ6qqE38oXDlLodAewDI5BZ64UaYpmLd8ycQQgd8=;
	h=To:Subject:From:Date:From;
	b=rAL8ZLQ4vtvE/FakvF7DR3o64S9U+nIXXXE4LDWdP8B+kbvniWWlyCAGe/0PvzWfm
	 29Jh65AH8i2aKG+QLSFGoyVKPJV4bj2QFJpmw26IcTcRK9EWBh5aSrWCejKfI6UoJ4
	 K3mBGIuQ3ZYbR5gbQbfu4WuVe486YVn0qqDIwEwPrwJv+qmUEFZWhMXh2i0Y1EccEX
	 ogYbxOxF7XKePAPifv6S5NQes6G9VZ7qsSQaHc4Z9KWnY2yQZlZ1uVdF/BWG8kobUW
	 7WkoI3wWxH+iZFGMMC0BjZ2pHEVD/ckyUSVxZ2Hje0euRNL9o8TFbt/EPmd2cq7P7a
	 hNuFcAHZLVRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA8C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173986493360.18534.18171960315396466845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d881efdf8fcba3fd73427d7c02b1d23c5a7391b2fe2c4eed9383e12cb49a018
Date: Tue, 18 Feb 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739864933
