Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0824F3CF218
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790673636; cv=none; b=nwa0O073Sm0Axma1bTpkF2mpX/cTfhQq2oujoX5jjUYhbbROjSRvgOn6T9y6Zwu80L5XmhnZfHZHLMKM5X5mzT60OzY45gN1Sov8/l71SevaGcUHIq/51ZWpMdpi8CELfNs0TwjE1MhTO0Up7hxNxEgME+9mzGDJi96MkWGJkyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790673636; c=relaxed/simple;
	bh=aNgRpOGcY/34/onJGTvI6+tnDBLrqv6p8hc7sLeeHEo=;
	h=To:Subject:From:Message-Id:Date; b=Pa0g3ozr5x26U9zScn7onrPBpH3ycEMUBNolvilYIRqVPeHdE6NgrIcCACogGPyOumZ/YJddVGLSJjaoGnXEBtqIxbrrLYi+McexBggsf6opOm3EB7LTmJ8zR/jpZgRvI2jTsrX2p8jXxrQ9iyGWaGZVVWfUgTKnpRny5dSNR9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkfdlYG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkfdlYG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C454DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790673633;
	bh=aNgRpOGcY/34/onJGTvI6+tnDBLrqv6p8hc7sLeeHEo=;
	h=To:Subject:From:Date:From;
	b=WkfdlYG3ZYaWvLEIJ7BZzaVarPICCcDR9617p3XoR6aYsEBjdAXdbs+0CAUBY2tPo
	 FaNBRc7q2ONiD8ycCWzRcqEKDik+N6DuiXl4evpd8FaDsot7QTmEg+n3KiIbnqEBQv
	 IRKoifLuXO94D/KkUZHGTGjmR/9OiYqCNlaCa8DCz4iH4mCHt9x/W0nHf45W/Yb92x
	 fub7m8pDyLvLv9bzHyp8m8By2oH0BOW34VQ1JSM9VYNMt6Wsl4/NPHP6HvoZ3YuN5H
	 6sPpQRrrMw9PmRQ8w8LdHoGjjbBg+BGRjYhbiwu3Q/yeFwTfJ03Z4/PwZ3WrWGjP98
	 QDLpvE64It60A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE236CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067363369.9415.14091984525515439136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c377146d36640b57554f7a1f9539371d651bf9a281e75205b0bca413f7eb4a
Date: Tue, 29 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790673633
