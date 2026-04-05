Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B77269D18
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775391334; cv=none; b=aHt6ylcDgyP6bZYGfjF14TNDmb0vIJCDZpvDqBXD9PWdnIx4Wj5dN1X12uSK4AqsU8QteX5mP1iqNEyvujS9M8zt7gVrdmpoc7cWCU+1F6w5F3D98oeVUNyYxTEu1JclXhXPVS3suNvI2nnfAlf+xlCIfmEO9FKzBReHPf8P4eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775391334; c=relaxed/simple;
	bh=MYfOsETW170iXtKMZBGmHVezRBkBi4pHGFdj4syHRS8=;
	h=To:Subject:From:Message-Id:Date; b=BE2R6H1F+3bF8RGXGqKSd0ogEirQKyzTq3GbbEB4ehLxK6kZKeJygq6BVc2JNl6eStfAWDXJVEivp0ZDNV6uOS5wmwPWBY2dzgiQPE+plWBsMySOoq9DVuQMKbTo6RMe2JfhJFz3srvok/fceUnaGiYmuEQcPEh2TVMexN9B+rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxQwxAAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxQwxAAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBE2C19424
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775391333;
	bh=MYfOsETW170iXtKMZBGmHVezRBkBi4pHGFdj4syHRS8=;
	h=To:Subject:From:Date:From;
	b=XxQwxAADYJO/gCmfWMH554aS/MMF1LQVW5tGKjo/p8dbwdPblGleyRwtGBY9M6baC
	 LipJHlGToNZJYiIoCxg6poHieNguwmKBntM/03MRBhexotoHBvSqclNn2aF80vhFE5
	 /yMGg70H1eKgkblGey2diVE+CeLS1ij8OtepJb4BITUQBRXTKwFMPoZCj6xd9bJ0Ql
	 K+nxKK1daF0A5Rga2kYwcFIwDGIBPPNfvfmt3ezwAtCxdhJwQsRlOHWbYHO0imPoot
	 Xq8pKZRbN1vprTvIFm47n5b2w7HaF+WV927xPXzaCJPIdqR6xUFOy8jWNlZJCpQif1
	 LZRAzYkpvPbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79CE6401C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539133369.28769.3097235383914615407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5377f2a023c5a8ba7346e5b7153ef9120a0c2d7191be3530c6bda7b5f0421085
Date: Sun, 05 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775391333
