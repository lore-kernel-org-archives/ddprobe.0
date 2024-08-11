Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCF62F5E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723346154; cv=none; b=h2Bf0sU88NXx+jiubhf60u6HCWO2U3T07u7tGyvZ7OmFhG5m+N44IjkYMvIwwte9h2Z0E5a2Cw3NAwwT5js6JcS8BsYiSxu5pavsRVGKTSgkznt5uE9BNDZ6E8qZqF4prns+LgpuemhLLPtOwYgQegl1U7pSdMHxcL0M5ILjgxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723346154; c=relaxed/simple;
	bh=nkToaNzolrFNyvfogyS+OoXmPPdotkaH3z0fvzBM4f4=;
	h=To:Subject:From:Message-Id:Date; b=T83Lz1auC1CMxa8ROwXb/sSCoV6SFRlkmWamO0S6xlCx5dDjfw0Io2Y1n8zZ+0L8B98LbINCMoCAgndy9VHM0oZ2wQIs0KD4TRPC7jnO+O2W7m0aKPAyRK568plxPNfDqNntKltFC1DhIit/niZVL/iCbuMI7jxsKtgSmad0d0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abHi6TFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abHi6TFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91EEC4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723346153;
	bh=nkToaNzolrFNyvfogyS+OoXmPPdotkaH3z0fvzBM4f4=;
	h=To:Subject:From:Date:From;
	b=abHi6TFIPEmA4plAYEimiXOCingEwFKeiKLDbWNOwooe/KZagaIujiP7tadCVP/cq
	 c4y7YkEtxGafkhzgkr/e7fzSVSgkP7oX4vGa0YBKE0rf9SCdFOqX9PUqa9WPIIDdPb
	 wC2R08R8/lBeF11duQEAJY5V8zIWG85+HDMcwaxnYRk3XjWpQmQC9HCP14zUwwZ4yT
	 bI5PTLesWtYJ52AuP61N+CyTTaiDLd/pFtvtxHUXiqM/vyt9N7CC5wtLLEJM9xDqkS
	 fcqr3XD90IreXsVUmUhOK00/xjzu3Lh1YGMR9IiYT2Bmk20SuKkhncTa+k4SDamKJ+
	 RB+rLK3+6eZ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D1C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172334615357.13505.17557266273386839068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aabbd995f7dc9ef0a54ade73947917a7478f210eb056c6ff91a432485226c2e
Date: Sun, 11 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723346153
