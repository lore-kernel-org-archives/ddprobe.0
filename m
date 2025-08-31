Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5714C79
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756639194; cv=none; b=eO9bPdUJCr7CoI5wmPbrhxbjkjeCLC5LbLYXkvoOs1nW+e0lMCupz6PM5qbw5vERMG0cY/n3uowbFpx2RlNcfaCsiW5+mByINdnnazSp/zhMvtpKWSE0EFND+0ZVdY3w0jqOQp5p+WdbbA0OG+PrVZKAx53osHuTq2ki1/KjQGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756639194; c=relaxed/simple;
	bh=LfFGJUFJp0+kbNIXNaFsaRR9wOup4YJbVhNcH0fBRdo=;
	h=To:Subject:From:Message-Id:Date; b=Y67IB4oU7eWpxbGDxNOXdsTMRlFAfWsJBCzn7W0tscqeRzCXVX2emJUCETwh8QClRjx222aJ5BMwGzGceFf/R9DLameWRWrq7jAG9p1vXPh1bBigNGEtAVLUg7OFkj/Yhs7ZjpsG/EUgd3Tje865/YPFqYj2/YGAUDPQr8RUlDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhkD/Ulj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhkD/Ulj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756639193;
	bh=LfFGJUFJp0+kbNIXNaFsaRR9wOup4YJbVhNcH0fBRdo=;
	h=To:Subject:From:Date:From;
	b=DhkD/UljO7nWHXSWG/k7jBo9FmAA9EuUHfVNpfwm8pl8cKYhQ7GRB5PL5TVdIC3pC
	 yHOTHfm4zKs0hSox+CcnLmnrPxmZBcuZa7/qYz1o2viNskXg6CyuFJzJr1929vzap7
	 12rLaU6fhwYrx6Ephi4oYmLiw/Op5HQRYJiB24N7BENvqDGMgRPPpNfFyBoAH38rg7
	 EwGv6DsxP4t3U9NenSruahfOTNtXbBuAyhO43wefYrrIa3Nb88Yih7r6y8ABzXKkUz
	 XLv4BvnoqyY4ilwLego87CNE6yEjAYavGPJFIwxla3p7K+4YwF93HC73M73b+MKxON
	 HbjeIBXyVKJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25BCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663919357.19107.12370918736711544239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21242b4452a3d48a22ceb7a4aba457eb8431b68bd08e5344b9250b8345cf5aa
Date: Sun, 31 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756639193
