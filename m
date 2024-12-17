Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B0813777E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734411354; cv=none; b=mSWkNB4SIRTAh/WinU8KvymGhPhko1YTnwDILFCET/gj3o89D8c+Gct6Awlt5ds47jETeUO1FZkBlRFy/UQ3qOHaktGtXc+ZDO/dS4wIcoUg680lTdUdHamSe0/9mA69Elb7nj1nZWT42I5DFmEv8PgThnfsLR6bNtjEfsKx9g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734411354; c=relaxed/simple;
	bh=o0QrU40bGxzFCUb+E4KYWfTsstWoVdJ0PzGCKjWWOMY=;
	h=To:Subject:From:Message-Id:Date; b=oHqQBTjZDrpvODPwqwFbublCl/5IpFCBWSaYWS54TI2d+bafDIIeeE395TUwrKc55hypVWflHa/yN6oeM+8WQE65M1V2JAQqlJU2ZnitkF7bINpyatbHC/h7Gx3EFBd37djXR3eiu9wSq5vDSoPwT52Lfw9llsu3undqrZlA93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQX1kWJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQX1kWJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C798FC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734411353;
	bh=o0QrU40bGxzFCUb+E4KYWfTsstWoVdJ0PzGCKjWWOMY=;
	h=To:Subject:From:Date:From;
	b=bQX1kWJP8rE+gT7b/CF23OHioEb2y1iW0iryWttpteuQ8/cMDO0lHYhuBHTW/H7/A
	 YubpetmG7L/ipYujLtbGis70hn/F7w27SHVZWrM+8cfZxGTDTEOmv7J0N4CzsEv+A8
	 vG77rGoDj1xdCA5eH3kXL1gEDzKjnAD5lUOxZxZqIyktB90/x475WyYkSZMzp3DXOf
	 p2lFpeYUXQ9e5TKi8YVhIN58cz1kKDtfcsd7dUWuGUfQ8QO8dI64h8xaCLxonIGY1H
	 NvI0VfnFgd84YOFkvMsPlhGd/cyk9EqZ2wypFhZen/9Tc2/3KtGhqMDJraZ4ye76TN
	 iSmVOjA+1BJdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD181E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441135368.27293.12300877808878120708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bea4e9b644196213edc567a5320615f0c4769055c088747f0b3ce85425c594
Date: Tue, 17 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734411353
