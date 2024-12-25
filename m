Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F592F56
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735100154; cv=none; b=jSso7+D8TXMWiIMkLsssogp/HBCMMGrQRiBPQjs0TsDRTSz4vAEF07VcvdcwUSas/UHPXft0i8xRu5tTuuAiMdQwgoqVN0zzYarrHcso65iV79vGjB3nAtczAW7QvUMnIt6RZrqBo4Ua2eqk6Dnq+TBbCjctK+pLkotrQTsyHm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735100154; c=relaxed/simple;
	bh=esTZgo3IWFQ3GMCd8pSPu2W0vXQRA5Y9dLft9Q9G2I4=;
	h=To:Subject:From:Message-Id:Date; b=W9cag2Xbzmhfnzohglb9NIigmqYVC47+9KBJ+kwhSwchIDY2projL+N6GApf360TvlL1CHm0Pvx/ENRhcpYAmXUzbTquzVCWiCb2XHhgReHwBhHHczBG5kUMdbS3iwL5dTIfarHZgHfyWhWiU5bEk914dwNjYkPQieAGnU3QJbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMOe6knk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMOe6knk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96BBC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735100153;
	bh=esTZgo3IWFQ3GMCd8pSPu2W0vXQRA5Y9dLft9Q9G2I4=;
	h=To:Subject:From:Date:From;
	b=aMOe6knkj+DGE7ubEf6nC7NcnRMGJ18BcCp13shlFwG6aCw0U7h6XDJq4yvNzaANV
	 JT5nCBY6Ji7oG8vBVSNkGm0j7Nxg07lEx7t4kdq3znkLx49+Ji+CplZssSvJHAjGNg
	 KUESFROipX19lKhQi2MR7QBMz+L7EC1x5GQuZ4+v1lGDAIM74eLfxTXcY5aB9h2IRf
	 L3WEw3dmjV/SKxj3Qb6cRdp7seow7RsPVQz5bkz0wvYgqvRoAyTVuFDMhWDjyrHATH
	 ylhFB0N4BcZcHKZUVScD8GWdWTJz87/tPF51nBTwAjCejE8McqUFql4bofnhd0tW1O
	 aexy+6MZmbIJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2EDE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510015370.18971.4764463562660351803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343b6c09291df8d8cc684161e19fe842262451746e64f7bd05b14ac8aed36c83
Date: Wed, 25 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735100153
