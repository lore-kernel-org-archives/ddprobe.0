Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3CB18C008
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752545395; cv=none; b=JD/1UgOJU49Q1FeSz4FvAQtYFiQLHuCdRMx+tw26E/KzgB8USoGnVBqY0UWxbTytZUy6Q+IoybdYM8Zd3ixTDw8FN6eAfRKtYyKcyVRL8i4KoMwwyirPMK/QIM3Xp8Wmk4VIuFOzKsmH+1s2pAkJlfRNv8K4pZRCEuXcJSsVlcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752545395; c=relaxed/simple;
	bh=CJBddi299SqZh2EPvoaE/rtJbSJC/k5/WinSsTIwHGI=;
	h=To:Subject:From:Message-Id:Date; b=jBTFGv8Dw9NBPFAodorqkBi1vSVfq1JIHhFEJ/G5hNLE1W8Ew4ny8sI+owXfWdVSrT5NLhXqnuS8DksAhWk9P78/1RnCtBADTpg7/wLrsZluqsePOpIwGFjLd7Rl6GsJCWc1UDs7OFN6grYu/n6W/D7EGoV2YQbPx5qDDyxpJaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6MCSOeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6MCSOeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D002C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752545393;
	bh=CJBddi299SqZh2EPvoaE/rtJbSJC/k5/WinSsTIwHGI=;
	h=To:Subject:From:Date:From;
	b=P6MCSOeX/x6N8cOP4CVHqsHGBmgimN1NVvkNcvsTL7Z9gOocYAHBch0m+5fTv/eio
	 FbMUVkAkTMax4s9AL/20Aj5L0yGeJw4cZCVIwiOW/XXIMcS0Ws9LR4JUI33KZTQopt
	 2stdjnUDn0rBoA2ortBgJlMUL1q0JAGeU1oPQ5ql/sZWIxMJXEOzaQZlyTnm9nkpa3
	 KC3X90RsZQ3hd9AnidMp5d8EXCdUMZdUcF4L+Xtk1q4KHECwy1lPtBNu89GcLq5SLN
	 mBgTepQmL+qOErBxPW0WAM7VyxWltwAQmmPV9pCmiTCB6XGIOo9oWCeCGhq7sAFuli
	 FbZr0VIF0zh+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC23C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254539357.18441.4886514550652905238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d9fd58b62bde7120acc90727f2cd6851de32af25a968fac681ab099690eaaa
Date: Tue, 15 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752545393
