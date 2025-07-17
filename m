Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5AD2F85EC
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762594; cv=none; b=UuUdAtK9B+f7nXa/kzWuCGaQRTFbtxkbBmIEKy3fR265yOle8/2oQuomxzfvoKV88IARV3Zz2tUoyVdrgAskWKWYel83fpPdSevZc0tuzbdL/Z4nIGMS+wVAxC9d50vFTZvto2SJD8ccqctauPnGY6nEBhzhRQNZGG5me9/QhwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762594; c=relaxed/simple;
	bh=DV/nFwGqioO+cXmJJ3dZqVh+NCNFfbI5OSaMq7ERH4o=;
	h=To:Subject:From:Message-Id:Date; b=CZ9e6wv1C0gvm916yX9bVnfrUe77UzbXtPzzM1AHYEQj7mInTGcw+OjEKc/yZTFmvhFtjj/Fa6UpFZMH6Piinuwn4z4KsugjX04HJVulfHu296xpuaCFoP1+LVUb4nYS1Y1zH6xWsT5m6iQYKZWY7q9Ozs8yBTdxQ1xAyvuNdCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivcpXeIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivcpXeIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BAAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752762593;
	bh=DV/nFwGqioO+cXmJJ3dZqVh+NCNFfbI5OSaMq7ERH4o=;
	h=To:Subject:From:Date:From;
	b=ivcpXeIA5RcNa6+x0kX7cYEgV64gGLTtLb+vgR2IZhaapvYSV657JkoFPuAwPr6KH
	 TimAddCet5TUsbU+VaWOzLC9gxVJnJ6rLDPUeo6+ECg0KNUKwQxn1S7OH21BulzEqW
	 bOB/R8e2nLxjr6l5N5Ah6FH6wMRJ/eyAgiCpByzh4FAfTrtqTI5YsjcGGydyUz23b8
	 HBnfj7VD44SvsAMx7kfHT9E+whSBw/8jTCBTuyeJ8ilh41B3NeiiFzmZFNU6u86c4q
	 XXt2h7N3Iv9ch59cbwEs7sVsk71PXbij+8ma9dJ8ERXMXovmHc4sJFQBK6pYUBr3Yw
	 CS/uUOdWSzyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933CDC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276259359.6666.14799245947394695786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fca96d46fee952ded07e3e68a4082162d99edf568b02f78e42e4ee50d2e5271
Date: Thu, 17 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752762593
