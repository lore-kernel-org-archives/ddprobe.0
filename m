Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B858257824
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755620994; cv=none; b=tPKZSacl03Jz/8q1qGTkHVmgiowOplI6Wg3CMytXJCfuM/4qXI+fHMFW9VuVs+A9o3xvGHal/6Pv9ohHNCU5XLvGr4/qNSdT0sePgakHytMkofia6UMlXTkjwoJwDwrUBdWnJ0q+BemlJzBkpSoSRByFSLMjBx8bdsOG7Llh7Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755620994; c=relaxed/simple;
	bh=OE+Xh/BsbmGwRuHLVex9KTUjKFXeuQIs27R+HcrOpEo=;
	h=To:Subject:From:Message-Id:Date; b=qfAS6tmM7k78GiIiBE5AGjzef5xTB50iVAR/t8tyFRCgkBaCHxL6fsQx07LQ0ZA8qJAjSOM66Bne9sC59CUk2/gI8gY1Opb9+Ss8fBkkKEFNXOclxsIYZ4V9sd94cslkdwgpCHP6rcQBZJNHgmcZFfgyEpPZequBD5i0o0GdYoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/K/rZ73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/K/rZ73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC0C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755620993;
	bh=OE+Xh/BsbmGwRuHLVex9KTUjKFXeuQIs27R+HcrOpEo=;
	h=To:Subject:From:Date:From;
	b=R/K/rZ73qTZtfofXZS2B390SiqnJpuBPHMScJ5DjF1gZ5flqGRtkhTFs/zGXrq097
	 Gs8nLs8XvSjRq9N0xrIR6BTPFcfc8pds4pS0QrGw5ELU1grlX16BbWKvjfwvlA4Sxj
	 XSpdp6a+QAqDU6ihK0aEVNtXL0t0eHAAhzMpUTMJQWZI3+FQuHY/HtZMpWnRm62BHy
	 k1lBp3aRfi8ndPKP1/FoRXsoIZqGCXpSmK+M0Kym8jDNeS9LZ4y+jUWyhrp+aS2sJE
	 lS7X2sjTjvfvJzsV2Kw/cSaPMTGKoboiuZsuKa2w57KVax9CFdaNu9EUN4k8wc0oiE
	 5l6MTffG1tc1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F562CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562099357.27044.14127597533431538598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d089df700f1cdafca461c879cebb839665b1feac0d68bddff8e8b3d8888e096
Date: Tue, 19 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755620993
