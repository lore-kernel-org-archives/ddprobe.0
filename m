Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A20222F08
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715571743; cv=none; b=gnUVHG9OUIx5MV1NojoqpwyhhxkdT8YyCSHjQknZkqr3UGsjF+W0IRmD41VrcgG0V38nrGtDaqrvElpLlWb6YrdCqdGsEKyqkvZGDa27XaHZRq0NJOKRkyYSZT+dxoDKA8i01v7ugAfM9UOhiS+NKj5o7QhC13vxInEM2uPIT5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715571743; c=relaxed/simple;
	bh=Er2mDNFg2FZ0blyV5KZKVnP0ESuOcR6yyy4CELy31KQ=;
	h=To:Subject:From:Message-Id:Date; b=Dc6N2niA797FfSMs01myroN/fpRe5O5aMz+/YRuxWbNkWv4dN7IfTjTe2AgAM8ASWBVMCJKGXD0ICFJ3ZvA86W2ds2xOYznfqz5BeL9Qt9cKufFtqz2iWPnwE7hUzIaOZagJVS+Myw2dWFn5G2k6KEtQfUbJuluCtirnlcrFyZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntz4sJpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntz4sJpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7095C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715571742;
	bh=Er2mDNFg2FZ0blyV5KZKVnP0ESuOcR6yyy4CELy31KQ=;
	h=To:Subject:From:Date:From;
	b=ntz4sJpCQtDlm973uH6D4Lin8qwRSox2R6wOOLK5oxLtbMMT7CjPzCdsQPGJs/NE5
	 GmhD3/upRCvtSUP/kDHJ2on0UWtZQcmTWowkDrASXRn1LupdOy9z1M2ZpR5d/irc5H
	 vqhGySevaCSlwS4UeCJF72U6waduTqqw9CfElPJoDVrfDiKYT3N53tXJjE18c3IejR
	 wqLiYtPaByOWNFUR+lueXx8TrmSCUJOn1j7p2ND3ec36TGxh44O3q/eEeHZAULmgjv
	 xWPYIwvELPhH3epVuxIJXRBw+nbgRqhemzYdq2ck4dlRQGeTMp8T6T74lOw6nII44p
	 EyKMR9teOU1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEACC25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557174280.19227.2652690032504232317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174116c56169bb7d72266d6f469da0efaed85944cde83a7cd448b9f4ec1fcbb9
Date: Mon, 13 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715571742
