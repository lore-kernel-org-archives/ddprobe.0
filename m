Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C71EB9EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740953936; cv=none; b=trU5ziEfS7+GLUB4gEBGHJznr3QR29hGTirQMc1xABH4aXM8xnQJXTQwJnAdk40E16oXbtA7CSzVibdh69sL6s5SkR+/zVNriD4WrJczoPdKDVFiO/I+UHMJbv/EvsCFnGkdM+D94M8huw2hC2B2hmPihhCg6dsm6exo9Da5uNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740953936; c=relaxed/simple;
	bh=WT+a6pHX3jVepwlYaWyU6tUhGwlDcObUEQNKYAVJnhc=;
	h=To:Subject:From:Message-Id:Date; b=iICYeMxBtdXQR7qUswRX/X1vhqM5QfuHZzsNdP3QE/CVFT92OgZVbApyvLoekGz2q07QhhDzPaAJe0dzSrhp2bLnwmwB13qlkXaXsi7Ipzio2yJ+10MocjgktyxP7XW1MVCGJC13UvdDNCzR1XprecB2Csk3/Fwk4+UQRVJDwz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALxeaiDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALxeaiDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7370C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740953933;
	bh=WT+a6pHX3jVepwlYaWyU6tUhGwlDcObUEQNKYAVJnhc=;
	h=To:Subject:From:Date:From;
	b=ALxeaiDjL1+Xxjn5f5FmHgnp6LVAEdxaUNC9X0ZIfDrOFLsceISCpHZvKNZlWaZ64
	 DabEfqR/Oty1YaGPr8+kmmmDHJM7C/+KquaKkaJYjDutFh4LoNWG754sBmXMljKrDc
	 vUA4SCElLTbJtXm4APY8r4Tv4IIxI7T2ZO0EI2rc6mbp5zu22R3P88xQXjZUHfebKK
	 prCYijzv4XL6oTGBj7uWT0w1DuxfjYZIYuR0eljPsZV7r4h/9OeOeDPcF/4xH+ZUyc
	 2w1ex7DLvzsvSKW06xu4X8lAru/uZ3V2MEALK3KaeNrKsTFHpzSdQfzcASGlagGGVG
	 R8a4h+3GQfmtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92567C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095393357.29784.1778515752445264955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b368283119b18da899bde81d78515264f5865961d43964920d268b9196d1df0
Date: Sun, 02 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740953933
