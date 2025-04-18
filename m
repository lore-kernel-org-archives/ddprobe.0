Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7141760
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745015394; cv=none; b=mOxoeM7g08hZZOjeNAfu3LfjYeWx2oirk1WngWG+Dj6JHYQDGBZD1kvu9D5rZhfnlNZk71RC3+lQzY4ue32VC9OORRyrtD1cR7KRiATKxKLtkVhNFiKp1LcGobiVBydsTEaGtDDgmE6QueCTRvtfd6Dqb3hi75lVolIFahKDknE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745015394; c=relaxed/simple;
	bh=nx7scn9BRdkH5Q+fUGifGHkAbLYxKlGac1Rrs6slsuA=;
	h=To:Subject:From:Message-Id:Date; b=ERvp5q0hi2xP5xFSTaX33zjF++vtbuss1vLbiPnXBZ931BExRa6QqjQtv16+ig1toggYdFJHoK6uTnn1np5ObAI3cPaEj7aRte5HoMtIKVlqnagxPFWtSSpHXXuKfa0f0XT2PNBSdIO4bZhAXti3m6xfYp6bEaaT9dazm9f6X2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrul2oYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrul2oYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ADBC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745015393;
	bh=nx7scn9BRdkH5Q+fUGifGHkAbLYxKlGac1Rrs6slsuA=;
	h=To:Subject:From:Date:From;
	b=hrul2oYGLLNQGO2wsUyqJju2hq409uUQ3Ry6tEYv+4+hbe8/UHIEGRVxocfTVVYgb
	 ZzsULvqkhioccozmJ9tsLcFhttBIju9mG2+Momm1z/v5YE10A0LeXPK6yoD1kTZ2vL
	 Bt0dzNaNU2cP1F481mJAKzSNOrmF6LWrceWM/6UsKbBoQkAe7qN/TTdPk1kdiqNeL8
	 /qx0VUEAadj7pXV/59LWJ/fpN0fzDD4i3nAL2vEekmVJ6REQNx2csyh8qLa7sRtwG/
	 CRUo6kGb3+j1+nIjaLEDk4pPSo8ucFexmg5BsWcBgKxO3H18Ah6gbRia20KQO9zuK6
	 2vD+hrXkbmpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C2C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501539361.9731.35250063011577391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506ee069b151e616379c1608cb54d288e3dd6b889518c46844d4905e9eab3167
Date: Fri, 18 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745015393
