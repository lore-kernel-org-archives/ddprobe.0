Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB636B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764115974; cv=none; b=hVkqoPEgivauD1KL8QLUEYuXeLy6KaqUO6YjpECX6+qOgqE+MWWc+5rxv+oTpXqM5sXT+JpQS1gTr0Yuvsx5tm66b2cZHmBfEfK976qHffLzkD0nioaRwRJKdGQOjDqKaT9Uzf1+z4gKj2TcRMNjpONBLDn5ClgfvXMXqNc1mjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764115974; c=relaxed/simple;
	bh=8ZsQZvriTuTjJuoIjdakgspEl44dBryJWDnlwLSb/w8=;
	h=To:Subject:From:Message-Id:Date; b=sn05ZuQOFh5xLPwPgolSoapybJTdtjeeVv7WFGDY4FGM6x0LwekprPCj9oV48ihTjkYRBAo8V0SNy6y6aSXsFzthuzrOgPWmWq6oapAvuFoAGhnlOv7RnSBsS2d30iOcFZC+kieZGrX2FOq7Iq+p8kMYRnBo9sl5np7vu5rCpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwns92t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwns92t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B17C116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764115973;
	bh=8ZsQZvriTuTjJuoIjdakgspEl44dBryJWDnlwLSb/w8=;
	h=To:Subject:From:Date:From;
	b=Pwns92t0Lm/Fg6RcxIlZzNff4BCtga0neMZc2A7hwJ79gGwwbnBugh2TCWXnXvwAE
	 QzCA4sEkeQ4BXlQ7OcjAmRjC0mx/41jQ3yt7VPwSKhKnYPshjX0nbvH7/NKDSGF+qw
	 mFvWI5gRdGRp6GrmMo+4iYU3s+4RAYuZzJw9s0b3IwL+JSR4jZwTsDHey0gnkQyXc/
	 NNkbRZ6mciGHsPpmUausAcb+dNjl6Dtt0inLaswRKXptGv+WRjJzNaESBqtWQMs11k
	 ffESKjQGk0NEaUSWy/oi8oj4nuovfN23Y+uCheiKgxStTj+n9mSRT4/RTdhguyd9K1
	 6cdpfbn5+4yPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1CD1036D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411597358.13979.5523177756520802382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c219035f2b14eba9e2c49fdfc665386867d80dd5f49f2fc7effc092f0c3383
Date: Wed, 26 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764115973
