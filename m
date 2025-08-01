Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116F9188CC9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754016594; cv=none; b=lUi2vMJ6uJAEzTk6R/i6nDKZIzmFSYslhT7h+LQPeLM6hBc2ITT6NeStdne9wxiblZGhc9wGBbFjOPVMlT6DzVOCYWAlJN8LXQNGHWGCVVrYwpkhnO5qVsv4i7SCXPkGMBilNHOwPGgBnh+CiQEgvaipdwThCP8pyBJrG63lcFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754016594; c=relaxed/simple;
	bh=DaYlJovMnUUCrjcPnkoe7L2pmTr5LZRt7YilNGf+3wM=;
	h=To:Subject:From:Message-Id:Date; b=PeYRezpLZh4FoyhCRCyKvqWl6sfDBfOGGN0BN938aBqVg+dsYpbYsRd7PIoDsXyOoBVGzjNatY9KZKK51yIkNyeqNi0X/CO0b9OIuTUDFvtoXwetHmm1F+I2hhirGCa1rP6b2lQ1F+ruuvcm5cfpaxtk6oZg+xnZD9ApC2xSrN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+48qOIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+48qOIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F753C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754016593;
	bh=DaYlJovMnUUCrjcPnkoe7L2pmTr5LZRt7YilNGf+3wM=;
	h=To:Subject:From:Date:From;
	b=t+48qOIqugrVviQyVxdEkCplYl7GZo7jp4DNR9jTE3eEr1fIOzJFtFX8677kr1MXP
	 o8bNxppLFTxAv8rz1zSU/QVWWpTXtQ/3StXDamETRXyq5rBt1k1lOCVGWCWA7gT/rd
	 IPXuWxJ24UNvYODMxITjNcfE9vLhLIEheBjzgTNWENga9jkICH2zkompDCKSF+WyUd
	 KszDRs/dM6yQSGkQB5qOBSf1X0oOihKQSHhVAi1n2Jshr1JL5uRUVo4/WV7iL+MPCv
	 17CA1aEyDscRkwCPi/pTzraMRPsP//lgtUeu/7Ir8tmaWsM9IAcel5dfdLbiIukfSE
	 MnOEXY+oKd/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F2C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401659357.5494.14174387645478787481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4c2eb84d14bbdcc04c2f3774ff742983a9700c4011d1235c382a702d303c0c
Date: Fri, 01 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754016593
