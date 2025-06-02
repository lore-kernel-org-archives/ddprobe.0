Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B8EEA9
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748861394; cv=none; b=PginrWdbT+m7+PeERFmXrc90vIE3JcZSto2I2a3jREryGSvsrpID2FVivf2dCgLjE/vgd1YyBbS4cf1Xtswb6CHOShT5gb+4BgFjjgvhC4B0/Okod3Gl0GpXHXtg6iFxfs47t+Wal95B0aQf9ijuMHDcGOgbGTJH4gO7386FnUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748861394; c=relaxed/simple;
	bh=d7qKGhR9I4uYVlPlH2wrlltdGEba8ck7TUquFCzS1zk=;
	h=To:Subject:From:Message-Id:Date; b=NxFSzbYlNSyFmNcBdu6Jtbcp0Q+cx0KfKPC46XgpiftfLCYUUCh7N/121jZXNWPYgZ5sQZ1JCpQ5nDdxwhGDtWGq85Xjiysq8CEHWIVQCj0PbNJGI6f/E8/PMyk66nKvt3ldr1Mk0g6etE7zezXuSR2k1nyleDIn2VGIZv3Wano=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwHN5pUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwHN5pUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748861393;
	bh=d7qKGhR9I4uYVlPlH2wrlltdGEba8ck7TUquFCzS1zk=;
	h=To:Subject:From:Date:From;
	b=fwHN5pUFHG7pBwJnHUdYmqKiE9y1CTNRDwXh/sj21clJdRK0N0Vl8+fLxSKvwr6Bw
	 Q+qfya0CX4KrFWJS2OpF7zVmrHBhJA4IGFb37HgbyEhKLV4M98bgmMc6TlKUp33zs/
	 FJMbVxCuOgWE/lYHBmAqdPowD4B7tj+XM7sdtHnBrUYbhKos4SreVqilDX3nApIR5H
	 2M+dvklRc9fvQdLInQKAJYrnnW3jJ+rKO9SuFY/W/Glv61OgOr8gmQ25rv7BbtgAZ4
	 pjy++BkfEGh+mSTw68vnpIjYM+ZHPNvvga87OtScaSUzDXnq381eAiETHqNObrmNBE
	 aqQqWFduqsV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4FC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886139358.1257.9457761716822557475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f85ef96d076ca68fc70c208272813207f2c5d1d519de395d19e56df429313d
Date: Mon, 02 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748861393
