Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDDFFBE1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783479514; cv=none; b=lqiSHVwu+ouylInKg3vrRQG4DGFRNA6ldEg/2NFlN+qrmNQP1Q4Q5AHAMpjx0MTtBJ5+C9aN6SHzB7tYCdzyMP7UgrwW1hRz9R6vONRk4Mm9YPWnIQXdYkxH0ZTV38T9B+xIWV5T+sWPjnLERoPxC/R+EFh7pn45sHIFLvOKqPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783479514; c=relaxed/simple;
	bh=8gzfmf5QcvkmjMC82IwiS2O87gCrpxKko/n2NU8KH/A=;
	h=To:Subject:From:Message-Id:Date; b=uovec8CjqW9R+omoQf4hLLrFZNaXXZ9Mq+X0UTRce+zp6BWn732DjL5rxlyN5BDfrW6qfEGQYeEMk2CCy3izxmUaN/fW8HG+MJu51ktYQv+WQMXyiyxQkmRBM8kc0dG7Z+6uKtnlzgYP4wXj46Scx1W4+WOOjasW5T/IDieBduw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtmIuz0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtmIuz0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF19AC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783479513;
	bh=8gzfmf5QcvkmjMC82IwiS2O87gCrpxKko/n2NU8KH/A=;
	h=To:Subject:From:Date:From;
	b=OtmIuz0u/K4z8tLzgl2683ozeEWfqFYB/sDm025lCBrworUKTlOHLkTao0QUkMHUE
	 r8Mhb5vh7FN5ijHbpEgFj2e4Is7y3H+Nqw6qz4V2sRouFFunRAOl7lz7djcmWRv/4o
	 e6X80fhaGMqodA6mTRhZhzU9g2WWXqKPGbyfFLHn85FYcDqnkj1HzoN+63TFFOWWdw
	 A3aHwDdMaUOUzJBbQwe8yb77Xv1KsF0r4/cILePhUFEBh8ERFeg4oqgEXmWzrfKJ5V
	 OyNrunQqwI9ExS7qHDOYFK+Ldwnhd3SkabzorD+dyvyl6D3REaDWUWOtluTLd+bb2n
	 1S02ZwByD7/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB2C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347951368.3807.7984792711644570098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3492a631bf215e97801f68b2b4e5ba2669f8cc7082c147ed3c7139a35ed18184
Date: Wed, 08 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783479513
