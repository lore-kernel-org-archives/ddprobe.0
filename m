Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA7354745
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707918497; cv=none; b=MewyDoA9YQi3SPLuJeSU22bM8xQ/niHLIdiTYMtBUhdC4eTkNez1g5m1/FVcUTMG3FDLD0EpLIKpYNmud7a2TNseKGAjQaKZYEOGkmcdjWUicD8A3EfPqAdbtIRzyT4SZsEPh52TD6v2ndSxev5rb+382NjHVVGelGb0Feg1cyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707918497; c=relaxed/simple;
	bh=v7s4LnpDQnfl1te3uNH7EqYG1ch28NrpxZ8mdUCUltc=;
	h=To:Subject:From:Message-Id:Date; b=SyrGVv3jazbijBsE24ZGa3lpTuLKyreImBj1vN3qwvEu5Ys8hDpLpsnQ8sgloNsg215UxbKUQHm1UuCvc5jCVvjab2Xr/g9bn1Nt3KWITuUdersVjSqJ8a/GNjnf1eSoPbYKgzVt1Wzr20KRVdYdwqO8t6Atfk72E68yp5Hc0AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxTQoBrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxTQoBrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DC3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707918496;
	bh=v7s4LnpDQnfl1te3uNH7EqYG1ch28NrpxZ8mdUCUltc=;
	h=To:Subject:From:Date:From;
	b=YxTQoBrPXXQLcCP3lm3i0drup/S3c7rp6SkWEGaPX+8//WPfxA9+nfAX4hSMYgWry
	 XPetIXdube3YEBGVDWvre0oj8A6BRq+PNvX/xEhQaNgvgMNCEpYR8nODczfXtZnCTN
	 UJ7TMbPn9TqzBG0iaotV4goG8BUVJxSQJ9y//l2Eb/SMXiCGEpELnnFuut+s0JUwPu
	 TDsUmPhIyWOqpZcGPunPGdEoe8IbbJmLYXxrRqJf8ZjcrZZhRwEMFDzcVe+9x/kom9
	 raGJ5IusUGsbu3VHO6kHQZy4uFGfZwooHnwduGLlVRsdUZIGHsa/KrAdk/J7UlHw4J
	 9Q3cWnr48Qbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692D3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791849640.2109.4413111809297030051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8756c7d579315779c09db0609524f7bd93ed21dfa6b70214613278f4d56a2f4c
Date: Wed, 14 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707918496
