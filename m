Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0790931ED7D
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778722834; cv=none; b=pAsyrOOKvxiQWy43ZaEs0g4QO5F5HRb/lLVVw63dL8gnccfiRBIvePe1ML0wp3ElnsnBlRA5OFFuGLjgITeAq3LrosNdqjtrEsV/TKU08qMQ5LCEjbiyp4BCNRam2FkDwrj9HF50fuHUxHgVkf8the5KcI9ych+K2BW1+2Xl9Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778722834; c=relaxed/simple;
	bh=dzmgewNHRiD6fd9O+N1BNQdNSnlr+T0bkT8MED+Eg+M=;
	h=To:Subject:From:Message-Id:Date; b=DvF/FglUh2o00ybQPCyhRs9HGsY4YhGmSrjJHDXqRgTsiHKGLGuYjvP05ZyVqNZ8xwiQ/P5ajTl8662DYUggY6+rpZSL4G21LglDCciY8vaggv8xbr3Csk7HfKVnQskv7hpkTxYUSLuGDlFX6qULdYXB3rzdFNQgS4wX5EUQ1LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+TY9vYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+TY9vYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D6C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778722833;
	bh=dzmgewNHRiD6fd9O+N1BNQdNSnlr+T0bkT8MED+Eg+M=;
	h=To:Subject:From:Date:From;
	b=l+TY9vYtMpB401KaLLFGZjPLwcz2w1Oh2lMIz4jECSv+NA1YLsmPTjdJRyBo3wnwh
	 2Ei6rU1J0QKQUolHLA5gEALfQY1aNQH/qldyszLt4UwGEg51e9tTVE1Pk30L6IRO9e
	 ep7xz1qKWXcs0MP3iV6pndpYbEzp0LmDqLSj/4C9jLvA/42p33GS+FPhFfA4bpXrRH
	 ooPuUyVjIU8Qfr7dSNjCPqlAzV8iIla4gTmEZPedJb0fV8W/IL8Qeb1cWKEFHwHDHD
	 CKQR7g8QihzbY0x2wRo1cGblmow9pb8sDAHC/d38ATqogBfHPEK1egshBFt9qTBZDz
	 ollBJ6lv8cKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA56CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872283369.29219.10748618922047725893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8fdce5b274349ff2c4aedb346020746c53a6afb3ba0036f4cb38876c5b8dda
Date: Thu, 14 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778722833
