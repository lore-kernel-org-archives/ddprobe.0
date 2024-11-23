Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382048F62
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732365354; cv=none; b=lCMjpVY+w7lzKxNsuMw/+QOii1NsN8ZBLQo8I55tQyeJsDICgSOBn3aQfAvaPxYGzfZW/LXCxwrSx36d6xcMw849xCRjR7mJ6FtPkn6Cdh0I9YMg3NC3/MAreehMVcuu3O3WniaDmbOdeJoTrU+M6DMHmvarwZ6FKdmOg2Ql1XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732365354; c=relaxed/simple;
	bh=NTKF2Q/csJtG7jBKNn2UlDehkixwVSpQ+6k2+7pA2Co=;
	h=To:Subject:From:Message-Id:Date; b=V1LFHNDaIL3lPn8dxyM24KtYzjjlbiSuntsehJe8EUN4oRySH8cw7CaKRRBQ+6TjIapnQAoTMd8WMYNHPY/UK1O7NncQ4iupBGHZXacrty1mzy20XSkUXdVbGWAgT2tXZCth1qYgR/GkDQt55zX74jcGTa8rIuMyevi08RK9Djw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2OxThbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2OxThbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD166C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732365353;
	bh=NTKF2Q/csJtG7jBKNn2UlDehkixwVSpQ+6k2+7pA2Co=;
	h=To:Subject:From:Date:From;
	b=p2OxThbDYryhaHBp1kfMR4OSlpCVsZe4eId1P5bCMSKiD/OVbUMe5jStD8b5Hs52y
	 OQ9nmC4EPLxEnmLPu44kQZQiJlJdCI9Pf74lrV7v9gcAfTRM8P08qB5Zj2uNoO4dN2
	 9C53iMJdyGtLARLn6x/ZY16qeBFzhSNuXXp7yQmeoni6SttN8hMCX5raOWKqSS5ofV
	 u5sEN5xlQi8jijjapuc3OWlr5VJCAzmUewEEAlKdENA0umX3BDooQAi3H5u3RNuFz1
	 aA5fx8X1MagdKBMq+3H74mSBzNMDasdb/eIU6tay9aqdMJXPFWYOfE038gBI08M9be
	 dTe3k0iLOxPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630FE6ADF8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236535359.27266.14199168050349827585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fad063a82399dd4c2f24d167b1508316c79b7526eca15597ba05278bcee719
Date: Sat, 23 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732365353
