Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC7B3C5DDB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420294; cv=none; b=kKmieJuZ93YZEZth7DLmpqtXmjJQ81+HM5dGn8wTBjawaUATo7TowF6zCU+pRamufoFvUGxg4M8wlAveHNBGcPLNX+23h5Hyzfy87V+jugYQybACNlv41BbXfD1vXSPjWwBsUOMFA4iMm3rjdyMPk7GIOnhDg+MYZqxrYGbzc/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420294; c=relaxed/simple;
	bh=4tfUjjFCnwT1Cum3w4FRjvsSIyefJA8qrec9rMCGdBc=;
	h=To:Subject:From:Message-Id:Date; b=B/ceMEr7qRrvYI8K8gK0CTqo0r+Tz5H2DBlvSzuOwucgMukQ0a2Zudb2MS6KG1BGknpMrKvJ6wo3kxybqxHHymPywLwR1zy1S3ovxn0QVDYT6RG/mgJT3zmK6mGDzGv+e6qU1beJU0Q2vzUsSRNfsKItr11+fxstXt3smlgnbPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVSr2R0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVSr2R0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB70C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773420293;
	bh=4tfUjjFCnwT1Cum3w4FRjvsSIyefJA8qrec9rMCGdBc=;
	h=To:Subject:From:Date:From;
	b=aVSr2R0tSVgXiMkueOkFhSbtqBwLEWR6l2EAbSz/Is+hscf53cSBayxLpjVMsY9Z6
	 pB0lfUoatthgpPDfMPqArb6YcE1P0qPSmdFNqEZ0Jf0BH3GsRhOmUkfM1xxNrXr6hb
	 fudFqGihVIC0Mq4i9YU3dZ0ewiY+sWUwKdQ8EzFppePxpf4sIH99iNRu2t5upI64ST
	 uXQBZQ6sGlx5HGA4Dkjesw4hzndQPuAVz6uf0NTomCmSsWBZSYDxTnUQGciYk4/YC1
	 kXS7OdAWrF7QgbBnAFw++RNPI/v9+6/fWRZIZbRpUdWu1imU95KlZga4LNZKuX6+AH
	 jugGOYIaeqUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90300107BCCA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342029358.5428.10377448572114162549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9004f3b988bab49b6fd999e6d7651b1ae85584fdf32bd567c59a5d3a84b4f2
Date: Fri, 13 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773420293
