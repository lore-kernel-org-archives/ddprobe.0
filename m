Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A118DB35
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773572694; cv=none; b=nPwce6Wn5rffnrJgykTUq8a42QnAB0UJ2R/17EKzYWs5jAnNB096qEj/ud6GV7ijiFB7a6zuKiXTDXMNCuSdHvSQKpTpjjROJUbaOsNrmAokWTpGZQ4t5MzHWCL/pjzr3sSidaPTniAORNCcvCE1d/4TVO3yROb6ATdWOxNLLpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773572694; c=relaxed/simple;
	bh=nYw5DbDwNLzaL7VLlYpF+hm8x6sGzIHQ7qjX+gB0dWM=;
	h=To:Subject:From:Message-Id:Date; b=svTk2kwdkLa3lqUnDS9MkIT+o4AZYh0vk++mwLiESWI0v49Y7rgED0VdHsfwWB5mplao6uJ86WkENKIWcvdi1mDekQru0Y1ezoxvNfs5goyggGgvm+xOw9ENBJGA4nSH9HbsuCE8+zmffroNmporzg3n+TpPBIJ2BKx6XK9ir/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guh50CE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guh50CE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA69C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773572693;
	bh=nYw5DbDwNLzaL7VLlYpF+hm8x6sGzIHQ7qjX+gB0dWM=;
	h=To:Subject:From:Date:From;
	b=guh50CE3+Om9xBT4RWQv6jccPOoaD+daoFioxF2bL1iGQ7QGIbK0cXO3bcW6nYJts
	 cH/1RAo9eYtDvFYH43TB0/AD15y/R2I/Ma+8RgiD3AjvCU61orYarJptxQfqUriRYr
	 B1Ucl1jKtGtmLPm0++but0v+D0uftoHW2HpqCSpDKMgOEUqNdU67iOBmGnqSS2y+O1
	 9uqbZE9j/MoebuT8alzX5tF1C0eMHTX9xe1ErHmuNBiJ9iU1xYHny4ptCV7HNLLAJo
	 wBFLIqYQBHx8HTZe9Yln3ir9pu0pa8tOJdFU//YgfQP4wOrHEHe5FJZC2mk/1tWLOe
	 /VG9uZdjQAetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94081D58B18
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357269357.31198.4140800267782809578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c9763175b9c62636a53df40ceb0f98b4e40612a08fe1966131212feb848f04
Date: Sun, 15 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773572693
