Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE9A2FDC53
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783387714; cv=none; b=fZeAmB4i+SZaMm7den0PiBgW3E+213XGHPDEjHTdbKGCm7Dtn8s3vtHx1FU2DE05oo1KIvJV1fWY4exPVsQ+26cNTXoB8sBk8yuOYmxhVbIOFCJruPqzcz97lGyf5LJrwo6Am/UxdaZffY2IrcOvkTmVsZH+ywrbiPt5TmSCcyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783387714; c=relaxed/simple;
	bh=74gfZprfZgBtKmS61YCXZk34NnbKg5VrdoROiVCVWAc=;
	h=To:Subject:From:Message-Id:Date; b=pGst3bLKCCvGxdeaM7PqzI5Gt4Ibo9YgEOMURO5J6LNF8Chygq74zklg3GCxH/NCzF30i7nmoy1oAYr9zh2ZxHLTtUWE8hk6E36+CCUHOLD6slZnj7MfgogrfXfO62NuH1GFhNO3lQX50tR/yqnXNis5wSkWWY6jPGVP6tmvVxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azb4puym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azb4puym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783387713;
	bh=74gfZprfZgBtKmS61YCXZk34NnbKg5VrdoROiVCVWAc=;
	h=To:Subject:From:Date:From;
	b=azb4puymZ6/Fa582ADU56Y1LeOiC+lIWHEJuPxAb2oo3WBlifXBm79qbT//YTvWRR
	 s35nBF/Dx9P6Rh0X8O5+Fp16NkLvY413w+b9P2ccGTHgdZIfwxJrPlpVh+C5zPsuEc
	 fgKynPVmf0hp5iwHHNpz0aKHQAm+GTKh26iBYBzH/Ez8eZEA/4vEIfOGdimJTuRSJm
	 trX5a5CmEjWmkmR/cu28gydnRHrZpmTUB10ChPCQKEyMQawOEKhLCFyXkxiEaw5LM3
	 i4zSzcnBM+mMOnRpsJce5vg7rKSzTglEKlsu47Y3Zy92rHs4S1BV79RQUd6maosQmE
	 44ZRGqez2Senw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8547C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338771368.12048.17760794464676266948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c93c662655a1eac5c095f5e7ae378ebcdfd4aa546a09698291be93951bb69cd
Date: Tue, 07 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783387713
