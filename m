Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C08415575D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736718954; cv=none; b=DVMnfik48HFwG//ev5YNwx5AjcTlwet5SmdRK0UWeBKPh+GUFwt4no9wWpcqt25nX3P0ASSuPrr7btaGWx/4ep6dqZoT+gGU9expdTkGZ43rbTEoWJIPW9xty3+2aysUJzDlBD032Xxc91GS75KRlBKBMmmogAioGpMBM/QAgfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736718954; c=relaxed/simple;
	bh=CMtLEyzofKgTA4wSlOCmcMyahyQKyEzjzhz4fuqtrlA=;
	h=To:Subject:From:Message-Id:Date; b=hXVJ6euLL/RPEEm7T8jgA6ldEmmm7E6q8W5RsGLqHMaAE2n3rsT+dvpXzR/WCHI9a4VLcIWWnoNieheelFtN5PLAtpeksnlkzPVnMreuLyV8Tre41+FABQGW/pgrGKfsJiSIFn1iGbdJ5o/ZKFFa2vgaHtx7XQY3edMSHkmFTtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQFrCVxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQFrCVxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A89C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736718953;
	bh=CMtLEyzofKgTA4wSlOCmcMyahyQKyEzjzhz4fuqtrlA=;
	h=To:Subject:From:Date:From;
	b=iQFrCVxrjraYACxrRQvcL8VRY8pGO6zTvtA4Z0SLCdLKhu8tlZFPcfLaG0rhmDjiE
	 yA2V+5KPjl11iI7CS8XWu9UkqJfLp+1WgYgeH+RQgTjgNvvB9nLVPYyFCre7THpzja
	 2VTR0OYAGFcqRj8TbBfTTuww+f8F4Hpx/nxGGuN1wGWxxhcgrCKyLzrJlyG+uplLts
	 vVKboR4uM5uGtP+BMqOjEscGtiYMsDO9OdCWvahUMoIIjjP+K733OOetRtddsg1En2
	 6gEAAHf579Jbdwj0RIWQkh91VczJmJ1YpTK/THSk/0ZqnR6BS9yxqb89K/p49y/84j
	 buY3ufvOdBZgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95692E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671895357.21498.11698079761747118233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf759e9dba24e70bca25b0c097e53af124f8a3a5bce65e7c974bdc43fe89a73e
Date: Sun, 12 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736718953
