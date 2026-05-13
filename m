Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1765731A570
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778669434; cv=none; b=X1FQBOhpsZe5h6KOn70z7rnfyAVOV192ef4xNAdcaGLQgc07iLtGfwTjxFYEmsiaaNLmTss/KHJNZnVImZDMnUS+KgFgjJSTgoSmzcmbmRbEBJ73ZD+qK/RZv8LKl2w0E1APv/pa1l445RCRqkEBc03chFQitgBwic5mD2cve0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778669434; c=relaxed/simple;
	bh=2IOiI4n3E8z+ebaEuGzo/nmH00q2/+Z7aYW82FYZ6yA=;
	h=To:Subject:From:Message-Id:Date; b=GzuOPdQYEgrgjoTylVfNHPgIL6Mr0zLd7Mp6s3pOyvziv1WDT8TVeG/53uyY7zWW3KNG0drzYRg7hvB247BLooJCIjMkiASRgS3yQHF+aXrD9nr/KQ8aPnmOcOlVY4vcLNvYdbFp+9zRZKV/vLqxapW4iQdWjrnYn3gsFB4n5Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doOC2W+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doOC2W+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6755C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778669433;
	bh=2IOiI4n3E8z+ebaEuGzo/nmH00q2/+Z7aYW82FYZ6yA=;
	h=To:Subject:From:Date:From;
	b=doOC2W+MukF2lkqDvjQeh4M6ZX2FgzmNSgAtdJuSt5x/4+5HSdBnUOztPlLtFzwSf
	 zAGweoN55D0C2sGVdIm6PLojKQJcIQgAJt54zp222tvtBWutKsi51Vxx/d5oUhjoE0
	 MnxkE6nc+wDWD88yuj2hh89kvO6bqH0Md87jPxcsTtANuK22lKdeNBXppTaAK80bn1
	 kDergie1L3OJvJv/F8fKKZDCyhj8Rn6RmoYb5Qno+Iqxvozwdr0Xp/k0yE1UTZERIa
	 xvU0m1L71rgTVidlKKXF0DBjZA6qwnwShy+gm6GWtSe9zeo5TwDpAmoeeIpZVamRoW
	 +fGDiLpnI0Lww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17ECCD4F35
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866943371.20558.13202225998531694998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd99a61c9af17bb0ac1c2a3b46a5a2020b340398b35904d887fc1cdcf3807a90
Date: Wed, 13 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778669433
