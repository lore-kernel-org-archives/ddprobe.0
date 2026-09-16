Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA85D53D0A3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789577435; cv=none; b=Y69v/wvF3MbH+gqn5jQfEXc/NGumqiliiXwgyPWPbxRnfLApYd6eGc6gUXqv7IhqNkWHZM3toKVuRmg+b8xCJCcevBV6mRpSKv1PNz0niTF8W1DqkijasKZFgNQjs8VPY83Y7Ai+OeT2K0XO7hKbU1CopyRr2W7VCpQO+fR+QN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789577435; c=relaxed/simple;
	bh=eA1PUqbGuDPsMhOGE/y5WbXO/6BmS/kiq+AZ/adfwZQ=;
	h=To:Subject:From:Message-Id:Date; b=DyZsXQISS6fsBEn34oRux6Fk5/nrdl1UD5vrVH3EAVrleLwNxX6t6k/qgXgLNbFGY3PlWI2hr99Y7oV45muSQWahLRUlmoYk07LX6vESpL/bN+0BOZF5mSnOuDTUZkhhUVmhS773dUhpcm240KzWsDyaa6AWWZ7DICO/AkDUy+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3f3r6lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3f3r6lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB516C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789577433;
	bh=eA1PUqbGuDPsMhOGE/y5WbXO/6BmS/kiq+AZ/adfwZQ=;
	h=To:Subject:From:Date:From;
	b=e3f3r6lwxfhwnVLZ2BAKqH0Y4mugv3yYGqUns7BrygOpJVkkGC857dJYjhpTBcaiu
	 xUQV/gWS5tLqsUnE2htZKXDieqgYuuh7YKlM8LZ1fOfw65ViPX5K8tidCOrx/fbl3R
	 Ndl9XwAIgVvHF5IVtPbc51OpnSv9lriqKu5c/+3q6nhn3kS0t0YSYmmF4h1D50XSQP
	 2l1JBImH9TcQ5kACn1cS+PXLByQ47X4Ij1SvMVofCRM2Gmv+cejdHUd9RevBye56zJ
	 MpWef89f6ygBHywp7pGECfmD+lMjeSj9xT3f5FYd1wuFvSJWFPpB8cibktuzJKveYw
	 bH/RNqPx/wjHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA793C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957743368.22203.3604994334163899307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46c3670e901fb98a77826ace89b1dd2102022ee86a18880e80f72faac3b1d59
Date: Wed, 16 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789577433
