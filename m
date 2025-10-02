Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175811758B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759412994; cv=none; b=p/VMHQrw49gyyWK/uWqNPsfZ82+rLnEeg694R/cP5NW2/q6fD0u3Fp2CI8Flq2vSQDiX0atgTC2zMXvHzoysWepVACZBj2PDi+dGMo7010bSczc1/P/iI4m0PXjN4ytCKL9VPw+qb94FUh2IVpxs+OTGsIDGlXih2hh9kvheml4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759412994; c=relaxed/simple;
	bh=FmwpiWyuHSTN2EXUsOE586P2Kcerk6bQ1oGCUKnaOxk=;
	h=To:Subject:From:Message-Id:Date; b=dmyCAKOtjsGl37kicdpDs1bndYanJ0knoQ3NjjOt44jlvnkJRjjtcTEnExqtXV+eeE9reSRk25xC5pLv9hoYhjy2/PBV7JJdAEKwBcVLKU9NaJP3uE3QeFkJ4a3seX7rVhOH3loXnB6JcZXsAIm1MvFGhyKp4njodR6lHzDH2AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMBDUruw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMBDUruw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1F3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759412993;
	bh=FmwpiWyuHSTN2EXUsOE586P2Kcerk6bQ1oGCUKnaOxk=;
	h=To:Subject:From:Date:From;
	b=vMBDUruwIyDb8Dc/puaX41SdkubLbuUNgdlqfOqBSehqbi5Iow4MOqurbo1LoYLoh
	 Gei2Twf5hJZNxI+hXWoyWMbRaaCYLSh1fvhnR17q+2dBIT92abqLHgFtDgJxirBryP
	 cYENBf0lpgJ4XVY/qtux1Yvny6n4ZC+CI8Q2PTl4U1YkPzqvWG4iXjv/MqWPxS61sM
	 eO9T278if5frkPxgWnAEeouvXH30IAhhyVT7kcPF/iFLcSDvxZNwPkyGB9eZeqAF8k
	 yjUCbuU4a97Ea4fRswKZ5rG4nRU7hLG1A66fQmcgUf7P1J0LBykthMFrxqpn2zWiEp
	 ULWnjUG2Y6qEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE5CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941299357.24906.6304509858348674714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b997914497ca76dc47ee0aa4293fec0959108a917834925b086a794565f82a4
Date: Thu, 02 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759412993
