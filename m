Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B06290F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738067155; cv=none; b=JYT7w2+CZvCr1i3+/oBBJPMzBAflrd8xj9vmVThx0LvakdbFoEfDFG72FOmeYJBnxdXzHO6kFC808NSz+bPLpUIsL89XrcmG2n7FrORsN2HKEGt2p53kYmA/DYb/tvxhPQ1qdly9iVdSh9lPKYZrDACimBNWWzZ6UlYaLpyFcMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738067155; c=relaxed/simple;
	bh=wqFCam9bYPwXNPGV2L/k+ZXXCFuYZG29VShB9SftLIc=;
	h=To:Subject:From:Message-Id:Date; b=GZlbj5H8E/6LGNhbwwPNoWHFdzJyvRqc7JQISGXP2i6BJOwVfLCsfMICvoEqZXwH9345xjKU+likc+SAJFY8QgaIo94c0FNZ1A3KFWQNOA7NXZUGLm7eOgipm5qwQt8ND5Q+/12hBDyjXVsFAEdkAAuA81Y/jM0/F0vg6x+3s98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3hwsH1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3hwsH1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF303C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738067153;
	bh=wqFCam9bYPwXNPGV2L/k+ZXXCFuYZG29VShB9SftLIc=;
	h=To:Subject:From:Date:From;
	b=c3hwsH1D1gF7tKFfZUrdaQULwDmoglvGX2uYXQYULf744dWmbqu//cVE+pIlN7I+V
	 aVfq7Zr97ejYhInv+ynkaFJwZ4HahvVjV2QLtqlr/A5ZswSEkIjFPRwrN5IaLmAuIY
	 hrb45EXqn8/66R8PSRPePiLXB6wyACOO3ONVLsKMopunG/9nvwA/lO2QKTDogTcBuR
	 3G8sR7ojm6zs1o6uulHMg1fyUUEOASvLl8fIJHMtbNOJHRtlgquCFK4v9OtiKAbThs
	 AjwUPUrSieA59VGBWdfgt0/oRxdK8fuKKrg53HNOij1XZedGzYEdsK7m9tq9GcLMsc
	 I6coJfzjAYnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1CC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806715359.10178.5012320114126873847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce875a2e89117af9b2363b6a7e548170f755c57ad836cb367595882d4f87087
Date: Tue, 28 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738067153
