Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC1440DFDA
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778026053; cv=none; b=aCaOv1LRieZQHRnvawQD4b0JDvmrZ9zGh7n67eeYu5UvsSc7pkX4VFr8WcIy1hYPrXRrivcR2lrAe8Il7jrCzH7327iCLr2p88O0XJLBtAhfbkKPurQA8p/CPbwQMleKvfN1SU1lxxmrBTpL4onkB8ekCnjZvyydtK8DLlSUNSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778026053; c=relaxed/simple;
	bh=VXKzPs+doqMPOA2lfxXXuVtDX/Y33HVEhVCPGzX1QqI=;
	h=To:Subject:From:Message-Id:Date; b=ppli7gG3wQn9eX5qKMo+04tOA//cV1JVgFnRDhgO1QHrZ+NTasaa7r4Ab4A5QS9U+lUBGnt+ga5sAq3/u4sjdOKJYw+ToHS+DUd/OYOztg9ouEYlWRbM3xPDU7U3gje7Zm0KDdgwG0BwxYaplZ/Sa8Pm9lR9maB9T5OVIojwMBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9e+Yy5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9e+Yy5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1535C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778026053;
	bh=VXKzPs+doqMPOA2lfxXXuVtDX/Y33HVEhVCPGzX1QqI=;
	h=To:Subject:From:Date:From;
	b=j9e+Yy5RLVN19PtbD+5cmMxQwChsRljvGhD8qDnplfZdPWujXJ9VWZUxbZ958R15y
	 fqcUu49mMImYZfVJ5Rcw/FG/NENJhBYp9PgfrciDnC0YMBdani6qYQBexe/C8HvADB
	 3ZgH4FR0L7EW6Jc8gQioLXvvUAfDz78u6lNRfzPKA0DkTQaIzHQXnvZYuNTqwW4b/P
	 7B0tcwQhJ33MPh12oSCjMFz8ucRcqGHUSkq2NqfjaSRPBioVbLBsjD/AzrZpm+Ijh/
	 PCVJZx6v/g2/aw3jswETjRt82A0P+LXF4vhZ8FsGVXmSxu0K3n6KULO4ameNJtmnf4
	 dK6fPlDRl/nxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0705CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802605370.17667.7645651231202813966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a832e829a256a144e487dd0b606b4512fe29f64fb5c30d6cc5afe1a19781c2
Date: Wed, 06 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778026053
