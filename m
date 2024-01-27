Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFDEC127
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706324897; cv=none; b=f8+bfkcLZ1xx12CzgfbZj1rpXvbjL+NaewmLP3p/D2jjZT1BIuLw9qR03A/c2+DLm+J78eJaP/ny+rRaPIYm2etP0kmMWlrKt3Rlr8wvNATnYUw6fEv1od9lLaVJiPd2a2UJH5vKBr+fP1Kq6eve6xA4xrR8ZSl0ul+d+HmA/Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706324897; c=relaxed/simple;
	bh=dCOmiTdH+o0BQ/YXQyI8rkTPrVjeocUIbhZRKQ8cBCc=;
	h=To:Subject:From:Message-Id:Date; b=IIEev/hYPd3ZHVAEVHxFFGliU7/xafOL74XlD+GpZ5P+xJ+Nxwb+wCWSg7kZOiw4ey0uUP2HCefi7LCgBgbBfXg8Zn/2cHpUN4QiCZiTq+/CCqa6zEE5dTX/WqcuAKmxl4F/5LSYoF424t2v+nVqY4MwmIVzpZF0YatqtS3WsTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inNix79g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inNix79g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1A2C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706324896;
	bh=dCOmiTdH+o0BQ/YXQyI8rkTPrVjeocUIbhZRKQ8cBCc=;
	h=To:Subject:From:Date:From;
	b=inNix79gdBS9rLpnfrdK75yLYk5tw0h1vRhK79oVJxxvdL5RJOBE/TdDSca6OuRF/
	 VQx8jJwC6ooDaV6EpfH2VUOCf/RowkmhLqWrtwBrfEWerJ/IJqmHpiJc2pggD3RzdJ
	 yvA0cxRWEM29h8T7jqV9i7nVDgL8eTHY0qXLrS6jQG/OCVMTHI7I8p70topekphI4P
	 +1gxeMnynoR6op0QlCOZNfbkRNWJOiM4pDG0N0LRBzDoNwoZ1ZUTjuyKV4pnAPoC17
	 ISslUrfWdEp5URqB8nen5SeOLZYifFExyLQDZP7tg3hYgd52S0P95KS9a3P70tEGGp
	 RjNFQvWwiiU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9EAC47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632489636.1320.10871428187558296699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7331322899af7cdf8a25defcaf9618979395de11e1dd6798d8668fa1d151f9
Date: Sat, 27 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706324896
