Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5445C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766808234; cv=none; b=PYsmD0WZwjpXcxwY4rRoxJIIROAfBspemh8tfbPKrP4U1jwZZ9pGVkDr7FTFIOuxFWu0WOEdHGw2f5xUMUpRydrbqGLN1XR1NnCmVIwAcZoAjjCzXPdNevDQxItTsS64Z/woKu4Qg/5imhtf/9UgSIib6ij9ynKAPg1TdQJr4w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766808234; c=relaxed/simple;
	bh=d9ri9HSIcgkeNCTz0CZZxRZ/DUbkOgIfkKvAz0ESh3w=;
	h=To:Subject:From:Message-Id:Date; b=bLSw5K5T9B/pI8BKE8UBgSNPC1QUvQxOMaKh80hCcBnO+WVb1Cou7iNqbTYZR8TMBU7tTq1QXfyfqoEmDlXLbq8dmE7WG9JXjbp3oU/UQfqsKkJBso6UFQPfdp6CbxdDLBxT+LKJk9DfjphxtcOdyeQrcUWzIs0PMYZ9Jr9H5bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bApW6nV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bApW6nV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD265C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766808233;
	bh=d9ri9HSIcgkeNCTz0CZZxRZ/DUbkOgIfkKvAz0ESh3w=;
	h=To:Subject:From:Date:From;
	b=bApW6nV8c4I08aeJJ1U3Q66X3xbJdULrAl9fh5k2FUL0ilFqmHEwkaoMYSfIOTHVy
	 jQsTFtbHyEoHdnOIar8q63yZrP8DFghev4BaBzCABYPHQB5mPsIgKNWulVGYxEOxLy
	 YU7EntzbKdO+mvqUGEctJvJxDhQLJ7HG5YGUVvlaBysUbfi67c5IebCr+bm9QYwcSD
	 xXJb/FB99qbiLsi/CNjgqFP7v0YoWfwsFd8jBRgFsqslqwdRK7SK1RbHA9X6yrZpXn
	 oScOQefwNp6CyNgukDzF3Gs5rlJcL9RT+SgqphjnnqXGSyoJjlYZzGrBFSLCfcJey7
	 ZIrUIdp2Vl3Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A59E6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680823358.6679.5772122409952488932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaad7fb8a457a11dc37d03b7f095d7caeec0dc5512fe916eef8835c6935ce31b
Date: Sat, 27 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766808233
