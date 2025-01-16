Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5872F15383A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737011754; cv=none; b=YU66eOuJ9Za/YRJ+2AjsEurvq5EhwGWXE8ucOXMVebqVHeMss/Usas+Phpt8M09ooK6mZuCg35DbfyvExAoiyqKgXtTYxSXgyNVyCTym9Jnb49RL1FhO6sHZASqHGavaxLvhua6a7bmo4B8Mmf8Qnqebno2zdFxeLMA3sdehhs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737011754; c=relaxed/simple;
	bh=cHfm9uyCZrsk5gEfVmdbB1ZFRde7y0ZRFtmKU+d7YCU=;
	h=To:Subject:From:Message-Id:Date; b=PSbtoTMTOkTp1uKcjc+NMnoqHSCyqQ7EA/5gpM4QMEQX/784MOzBTNICNTk0ANDDaxiZTxa+QsVTNdDyxkCI/wPb6/Nj8PpdG6aSmkbkyb1wfw5crUYHc2zle1gYaUS49GcbLW1raB/7oxQEXS2jhHq5XHfMzk6yk1zhg0Lq9HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gnkf3se7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gnkf3se7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3A0C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737011753;
	bh=cHfm9uyCZrsk5gEfVmdbB1ZFRde7y0ZRFtmKU+d7YCU=;
	h=To:Subject:From:Date:From;
	b=Gnkf3se70W89UuMlH9Omnd2ZIKBjP9jBlJPhF8ow+o34YHC3tDUfzAKwXiMrcUjVm
	 JIFDXrbABgMTbGt1/UfOqlD+B9In0n+ScozV7g9hjxnztUqMRHQ1rQfOr0Wsk+sfo7
	 OmRSs+D/RA0eM3pHjekoc5M4N1Dn6LfFIlc6CoiLwGKQN3QD+dfD6DoKw711pccmIw
	 O00E9u8ChdiBzmdW5HMP/8+ONkznJd4Q2e/SWCKC5PRsgQSI/Vg1Nrdd+7wnw/9g+A
	 OdIv7mxNCM3MLZCVmol8LPZaJqoLwVXPTlcBTOQfxFsm90lANqzFPB4eXRkP0klcrJ
	 thqfL9afH1nvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53DE77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701175361.11811.3663751998735142947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555170127ac772747c20dfbf09b2d838728b0b8004e0f1d81f70a3a9fd9a394b
Date: Thu, 16 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737011753
