Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2CD171A5
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718914223; cv=none; b=rZcOHcyJlDdvcDDuP39UztUYqhsh256FbxE9D7+4vVNczXzxfv4bZRFH2WT/BVz7ilPaShzLoHjIVvdOQo1rMJm+FbQMk8DnrzIOWYsjY/K4YaJgKnQgHAWNg3fHHfyB1N5dlvwqYfeqcxErEhcAXhC8MPQAoGBIeM8dnuWlXus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718914223; c=relaxed/simple;
	bh=tAREdw8l3FhPXE1awUYbqyvxaha8UpIP9biD2+jeyE4=;
	h=To:Subject:From:Message-Id:Date; b=SkhwSXrRaT2NL61v7GRZpXXW5vgexl3m0EfTDT/ARoITA6MZCGDK7gGfwo8PujudRM0Jj1KfgLQdgNsS39FPd7+AK3Lt+ctIPA/pq03ROpPPLEv5UZBAVQe47/CXFrUS5xr7P4qvgIx4JSYfC+Mw5fjzZCWXxsRSc6Njy/vVNiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6a0JKlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6a0JKlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5931C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718914222;
	bh=tAREdw8l3FhPXE1awUYbqyvxaha8UpIP9biD2+jeyE4=;
	h=To:Subject:From:Date:From;
	b=M6a0JKlw/o40OmElpddFSSI0HEnBkNbr+JIyHCUACxfoCwPFVqRKqIP2ZFPJ5bf0Y
	 nKGYtokuqYxw4RxxQiU9dGZeR618Zr4iAEe5Ynw/t8w1Bsy8U9umfvj3LgM+Bw8gTe
	 eUTUhn5jgTqfqycMWI5yxbrd3eDFYdkImZHf+J3zOv/GJgGjGkCeWyoB2nG1vhDuEB
	 e4LyJ8TRxyRpE7Ak+4juejws1G52lqrYvy3foMRiejTuJI7c1B456B0+bQzd7mfGtM
	 F1VdvYRYNm7XN/vDwLfKnOVky/W6uLyRvL0qFU9iLj98lVY52/6T2gax+RwC7hMqNI
	 AhDomeGJuNKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20FAC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891422278.14196.4390828432497039708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bfb0194ee136cb2b7042b1c3016c144f322115612d86d971e66697a15907ee
Date: Thu, 20 Jun 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718914222
