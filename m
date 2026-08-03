Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560C3312837
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785774034; cv=none; b=Hf6Zvx2wKIa7BVkgAxFcwUWNpdAaPA+eQ+HMQAx7FFa57uE0tmNQtE85nBObjXr8nMG3HaroBqpv4Do2cQMKKv5AUrW5DdE/jrjtsBiySrYsDMS9MpndMXnARUj/qOne7Z+jEjeDLC7+zkELaFTlV91xCLqYeV5OwnhtBszBgBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785774034; c=relaxed/simple;
	bh=11ZsrELE0XYTp8XEkdxxMiFnuF6I8zGwejuwNqMpUV4=;
	h=To:Subject:From:Message-Id:Date; b=Jq6jfKu7zpYEqrLgmfeYYPgO1Qx3fbavUXyMh49kZ8IVacQNlr2Nxq7JDR/cO4fH6MSgVOfrdFQmzk8OY407kcayrOqX5trSJYlfnxoIL15z1td6Sxyp995SuUS5L7VR4Z84SFfKvVDV3sivgZWXI5WRCyE9ZX3N1cs5e+y7gD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MG3+QGP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MG3+QGP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D2BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785774033;
	bh=11ZsrELE0XYTp8XEkdxxMiFnuF6I8zGwejuwNqMpUV4=;
	h=To:Subject:From:Date:From;
	b=MG3+QGP1kNTwcyL5YGr0Dj9CgvxaBRLJ7rcW/t1qJuvvM9VO6bl2FVgbvKxnhZ0Xb
	 LdghtJDM2MVFY8l/P7Fnn3ybAHv05uJfuxJZwKesc9RCuzgN2cThkhhxe2H4cqtwAg
	 hXW1dKdmrbuvJzdUGZcuW9dnN9tlYEPQj2Mzi+rPjQ2xjJVbwoKuofsdxlEMGVJGW+
	 EQUw6rOywJdMoNqsTw9UoB6jVvcN7Rw+xGcIWYCzJPzrs2iXIdhO8ItHtoiszp9Qa1
	 d+h/3gY4e1OPIoldim3fb+OmN8Cf/BAxq/hlc+QHALd+6Kjdwj6x+iXOuFFyH1yhfB
	 2FfCqA0p0ga6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB35C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577403370.10366.15342669865738659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea7c2c47d85ae273dbb4e0545af26e909217496e56d27656874a2e65ea150be
Date: Mon, 03 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785774033
