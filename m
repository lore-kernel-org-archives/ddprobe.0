Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7471EA71
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710085097; cv=none; b=CvJmrxCKUT4walRkLM7zM9gCzi9tRw77T85zwhMVbuSROScz+SH7AbiLUib8k/2m3zEfwFKOHWYU2emvC9diGVw0UHPZX0uqFvSvBrl8gVemNKApdeKUZrLtsHWIlTRO2X3bcJYscHwP6xjEs+HVkRTwCoUt7RBTMlNnXPWih54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710085097; c=relaxed/simple;
	bh=2yWTkyv8J+ZV8GLj3fu4tTaZtGLdEB5ZefLWNWp8dXU=;
	h=To:Subject:From:Message-Id:Date; b=AcT4urrKqfb1hu0P4H/v19pI04zfKmhd+iUlTr662cl1T2z2xy5kwVJVygnOhC3ttt0U4GXNDp6iL7bOpX+gliBxNqpqZhMCGEXbB67DkVeV2VrwPpJVQjykjexRtoN+g2c3LDsoqIcxu0dtktPlpmAehEDCgZtpQbUnZFnj0QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfVzUwp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfVzUwp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3B5C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710085096;
	bh=2yWTkyv8J+ZV8GLj3fu4tTaZtGLdEB5ZefLWNWp8dXU=;
	h=To:Subject:From:Date:From;
	b=XfVzUwp9egP1tARAZWctPxm8TTBH6CKNETNG+MMjzvm0ifJE1cnf+XTeXi32zTEZG
	 01peSUUgeqNtr9RBMoJlWEZP5sPQ8LZ9mgHRRYH7Kva6ROP+Ve1ciC6rYb/8zjQLep
	 g6RDJmdXx3zqFozvFgszgihZ5JzhTQFUcoipZ2eL7ZtJ0royVvBYh+MrCf/As3fpLw
	 tT/DG4xq3rz6a8MGaXB/0DTZwTL8EZDyQHHQ0sDcd5tcrm3o+S4J6fgUs2ECPIkNj2
	 YGRkdImeTqgnkMG/Gol1XPs8ICXrTKD0wZKjaGGwiimvZ9qlfPHNxcILmFPvMWa2MO
	 oBgO4e7s6S7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFCDC54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171008509636.11942.5941072335815893858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea42f0abbce5e46ef08dc0c906bdcd23d578f69dc639475dcd09789d82f812d7
Date: Sun, 10 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710085096
