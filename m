Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C5139D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736563554; cv=none; b=OC1clGI+8r2eQ/oq7QZphWra00MSURh4SeUGWd6Z+MjJ3DWNS29dKiHr5dTLJ3RNIwNJ/0Nb/eetzbDAi7SrXj33YVrtSe6wyq5RFwNHxKac4X3Dwovhgw4DBX03J7sr0LXgwYLhbLy5vIm5nhsaUVxqzZS2GXiSHseaKMLqJj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736563554; c=relaxed/simple;
	bh=QssCD7FK1z204TH1ZhQU9ZlYN2XR02OOdc4VIlEvoQw=;
	h=To:Subject:From:Message-Id:Date; b=X/U0Lii8f3o+rtBABNZMHZBgAg2mQttcsQGCrsZVrbI6ZJ48Omg7SBVTRvdwm7Z4/43PCEjG+IW+kx6Y025dIcECHQnVCzMx6GA0QQJuyLkFweXV+dCpBdEWfQhhwwwt9yL3XO0WRmVcibcLK93ovppVsHaYAsC2Cjcjlmwme2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb3RaOuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb3RaOuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD67AC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736563553;
	bh=QssCD7FK1z204TH1ZhQU9ZlYN2XR02OOdc4VIlEvoQw=;
	h=To:Subject:From:Date:From;
	b=Qb3RaOuLcnPavVJrV5ATGK2uCTaecPn/qxdFftoXxWHStIZRBbIwcPcn0kWrfZ+44
	 Q/ntwY7VeH6HLp5nrHT0z7KV9FdjiId2qRPzCprpdNHH07ErDc1d3MTbJYSR2ntzX+
	 yi04+gPdPfnKBzo/rY/trzCf9/kfsnZi6By3dlxVy6bGFPZju2EdvI7MjlsitFN1q0
	 syFL3ayDYrekgxjPAnfkQCPFgu7YeiyBQQeNbXYVCr8pcs+sLyPtcFO7rdzUC6ZVs7
	 Hu38u9/Ps2tAqtLsaCbgRKy1/uQJg5CMVfJhTvnAGPzvpyI8aO3zE7+n2dCG98L3AV
	 FYmx75SvEfrIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B90E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656355360.32658.18061125339841979382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1c061198d498722e30545dc7afd3269a72f3d416f292a2231e9f0a2d3c7ac2
Date: Sat, 11 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736563553
