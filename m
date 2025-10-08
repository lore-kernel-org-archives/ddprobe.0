Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145A92F0669
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759937394; cv=none; b=rZBLDcfCfc7wTbtSpk+vCoyyElLPa1KoUgAq1x0e0/5tbIKL8W/+MPCh8agPRRIlhAwnfyfEYLddoYY4yTS24cfKeawrSMNY2+HmE2JBNKhZhnELtzbsnFGFpr/cm7fyJml0HyxLAN/wyBNaT0CUOMILmTbU+ULy315+reSp/Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759937394; c=relaxed/simple;
	bh=GXMdTFEy28HfguR7xEMGfL4IjOZN+Qo9/dUgAWWDHME=;
	h=To:Subject:From:Message-Id:Date; b=AIar/sZf4f8+BUX96WRC4B5hTHIXX1F2DlJOpfB/n2bvUIynGGjNXA01DAwS7mISkjAYg83kSzfVPE5IgwACO8l42ZXoGC5g14uw3gS7xMv19MA+Ka9Kn0A6dgBCPSFyfNgZKhjF/PZw0ICygZVphq0B/uoYcildn4lsFXf1/MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7WN9G+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7WN9G+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759937393;
	bh=GXMdTFEy28HfguR7xEMGfL4IjOZN+Qo9/dUgAWWDHME=;
	h=To:Subject:From:Date:From;
	b=c7WN9G+GsJPmz9Wgo9nCFMQz7My6swZ86E5QY9sJyYTJ1djReNubICw0BCUi8Ld6b
	 y53zxjoBu8I5w+UbI96+2cvCjrCktPUQZwOy8aP9xUNCHLNxkoREx2DrCAkDQfcBky
	 nuBPWQHo4mFMbl5zW3AsXnX1XoR0ZqmcoC6f7UabqTvPQEzhpswvun/v8ccc6bPoqA
	 tXeO3XtEpafCFNf4lBeXA13gQ7QQNqEb+JkBvpsuUcB8CgTXRUGV8h9KESACwzCpYw
	 JWy73ZzgqyxnsWF348xpT81tK9Spqy+suV3IXk/koty3rQKOgQPRU7+x11t2vNes+X
	 ziVJCw0HsYUKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC9CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993739358.31927.8152320515041050475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47a57a18219c6cc114feaf4949fb6966465ddbd9a969f6a8adeed89382d8286
Date: Wed, 08 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759937393
