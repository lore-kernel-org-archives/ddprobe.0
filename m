Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3FF1DA35
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706393896; cv=none; b=or3SqWMYbTv1Xe96RuRpfMapOMvvjCIWqB2ftr9DaqJ4rinOFCvFaS3rfaZwctK8k7QXxBj7dxqDin59Lpe6AyEsX6J0JY9EXRGItHfHQS/u0BFL7HsH3YRZF6a8MtmzzJI/EzXokSCzDB61TFL/atzEUumiXjuRkKt3cFsrxzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706393896; c=relaxed/simple;
	bh=VhlqraPdsKcH+RbBUkjS6o3cQXnuSJVLwcoM0p6TVq4=;
	h=To:Subject:From:Message-Id:Date; b=ryOtbEQ34hkHEEOXo6nGuCHjbs3VeTa3GXp195N2rF6CIpuuWkQh6VOFoP/2/nV9S9pHj4ZsiCNJPDZspoqvHKI5zKvAVZCR3t4ExIkRs87VX51gEFYXDGW/UMBTUYD596ullfdOYuggt/P7Yxhg8HvYqnU0rtYJcy6YdL8+yE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao1+jkhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao1+jkhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7385CC43390
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706393896;
	bh=VhlqraPdsKcH+RbBUkjS6o3cQXnuSJVLwcoM0p6TVq4=;
	h=To:Subject:From:Date:From;
	b=Ao1+jkhxkziGPh3ONFurWmGycECcs3wzhLlhLfTj5Et7GrB7WnzDf1kWAI3x1Laeq
	 oNt+ddpCPAQv3KjnQH6EkKHERLQmstoFIRc22Cj/5I3PhxzbGx4DaPJxFqgCLdT2CX
	 W/ITDrFu87sOycID6dE5sQc+18jX42fAF/tE0YxDBQx/F5nQ8m2G4X/UFpHUM0DpOG
	 mz0elgwrrYndMC55OIE7nfGBKYLN57QLjitKRQkvIF59tlfPxutu85a3bkmp5QV75L
	 2aEWaz0BnpnijSYXv2UhDYezM3lZqXRhLLait8XZSY33fp2kmqW+6eY8eJzn0EzeCi
	 E9KNxsWtBhxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE45C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639389637.20895.15730291489203734126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a965155451cc738e5ae6c1b24a91028188ae31bf43c35c5dd6fbbdf3c3862e3e
Date: Sat, 27 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706393896
