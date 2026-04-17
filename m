Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D46399002
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776432454; cv=none; b=dJrP/cVGZa9TztS3ImcLnpxF4IuVq2CmMv5+qowgaEC1t5okJILtSrnNLPuO+k5Z0prXMzn4vboYkGi0+CAtQOUAY19WA/j+cHbn8DKhYtYXv/SU6y5dpcG5jN/qthw2YBW81KE41kaHt1Bk+ncukoOhx9ScbjS77EUwjKSgE+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776432454; c=relaxed/simple;
	bh=xMyBbjJwNgdQJ8uOlU7fCLjPwz6ymyo3CNvJb2Xec6o=;
	h=To:Subject:From:Message-Id:Date; b=emXAYmCqvjkWE+PrePgRUv5aO8k0lcTMJfJCT3ABw3zIiUc1pmRGaMZbumWShTtUK6wNoOX0cEkSCenKb2la0AGx8i3a0yNOoDCyR5rimUlHq07Kjz7Q/gjJRFLxCRA1tz2/qktzeURtTFNAvQPgL55QpwOzvEINHuq6CCpKIGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUBY3AH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUBY3AH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FF4C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776432453;
	bh=xMyBbjJwNgdQJ8uOlU7fCLjPwz6ymyo3CNvJb2Xec6o=;
	h=To:Subject:From:Date:From;
	b=qUBY3AH5LVy40YObCZFp/CAhrbnSISVCE86hBfhKmEcj3mz+pxBhHH8ECy3KkSjnE
	 axjP5L+2+AQxoIzxkaPgkATcBcz+Zr5yHp/617QCeWXe8apUzyWT/NTw337NDsVs9n
	 HgvXSUitOKAvKoaydl+x9bwtLVMB/Jf7yxZdXMMh/577PvDs0/f/YHPRllcy+zwatv
	 0UBhD5Sg4iWDWPmfp4GhpZu01SOOodqhtlMC0dReyAQzwugAaIZ2xxrMyiLtCNoC5U
	 n8/ymTIlAV1eyqLHjCuuKNNt+ueUVI+p3mk7fQ1XkTtKwnWK/aGRlDjA8Z0irFI7G6
	 /4nt5bBVxRACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA018F4369F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643245368.31687.12612715529927024454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648e9afeff034f87c8c032c9a5831cbeb51c8d6ce95011355c2caa42ed823ff8
Date: Fri, 17 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776432453
