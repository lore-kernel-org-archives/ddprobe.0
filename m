Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AF37F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715474543; cv=none; b=C1u0ck1lYd26RQdfkVx9w/ekEgsn9XzLjFisJroILBSodEBCmtIj7Gv2KbRhS+iIkkogoNk6TLEH66q4yj2HyxErZ54mNc0Crmi3rKpUAU1O1WI20dvbifPRUjY9Isxkr6e3LiQf0DDAxwZ7ZtTh31Ee8ydqrr+pw03zoY6QL6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715474543; c=relaxed/simple;
	bh=0zd4ykHS7w5Y1j3gQ4u9m6vMYAiiiy2dEmBjwVz1VAI=;
	h=To:Subject:From:Message-Id:Date; b=JAD1znK7oW+bRgn4LuyEqPPhAHqrZodq203mw9+HnqR9kFErR5xlxlthp9itQGYpMQ+ERR9xOPmyTb4LGEQMby6du9vYn6C2E1CKNdDirE6y+WKQSgs9ZZxEn0Cv9H8Dto24GV5e2zrmrzAmiKTdX9hWsXGp8j/K4Csbzianh/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3mTmODK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3mTmODK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19DCC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715474542;
	bh=0zd4ykHS7w5Y1j3gQ4u9m6vMYAiiiy2dEmBjwVz1VAI=;
	h=To:Subject:From:Date:From;
	b=S3mTmODKo3thQMcXPI3Knd5fmNU+p+FlutHbhVfcENuxh8Jet2sc/1LLdOHNrXY8l
	 GmHAheJBN7dRD1Or9pAA1WHUOHS1Fl68EF5vfbuvP2LGsgTqhqMua/A3aAvCZ4Hdc0
	 PsMFsXanjwVMj5ZBG0qrGTvO5x7zXMZp2nv8WHnVpNXJt0qUcSp5WRHIdJX87ohx4t
	 vOT6x5GIInxEoyLskcIL0tvkmb4ELI8j9vpVylZIUWNLlHaXnpZ+6vuFmj7IyLihwS
	 YfWSRVgVdORyMalIqHvhSCVNjo9/wrmzwOOYbT6UN/5xElrj+zEVU9s/+Qo6LwtgDP
	 VGazqWHbgHTSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD690C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547454275.4169.6910979997927922394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755b364f3815c59547efca68e16d74b95fa1443da5c81bd5b14a828b27762922
Date: Sun, 12 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715474542
