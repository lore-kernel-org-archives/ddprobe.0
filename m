Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348A7523A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760884794; cv=none; b=XATFhog5gGXjRwsWLQe8zBKUQH/YlifsE1j0bR9W/Y37xHOGUjZJsaXo6252dc1aY3iUlqRX1ChkiTwMiI5mtHQNnYo/rDVG9+59et6UUa7XsXoMGPKMOb0EblWJJbKO2GPRxkoilejxG++kT3l8PBPUYNdsjdS+KTMYXBFnI4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760884794; c=relaxed/simple;
	bh=GBOcoMPmWN39kDyTalKFuJu/7AcvfmABD2UMu0TkEvw=;
	h=To:Subject:From:Message-Id:Date; b=s+++6alN87X42A7NP9njt/k63j+S2Q9GRMRWzaUEe/9aMStW5zaedFzMfvpTCrYSn0pDp93WvAAXdCweZa83M1fa5NRZRA9Fh4//nxBbEsuoDF68Ybmc4xdJK9wrvGFv17XscGEwP6cDj9DnbfjhLoeKdKp53JZhXbuDkaCtc8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olnwItHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olnwItHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760884793;
	bh=GBOcoMPmWN39kDyTalKFuJu/7AcvfmABD2UMu0TkEvw=;
	h=To:Subject:From:Date:From;
	b=olnwItHO/rnMaTdseuR5XZWIiWT9Lf5BvD9tLDKMFa4HAO7PjjEOWvjpkaXhuCQLG
	 fF/WSczJejqXrIlApUt/dhdIRxLGmGJ44UJT0/4ce1AjBnWdgS5xADlvZNRVW6TAHe
	 1KTBDsdZ7LBw5IQxduQFtqhQbpNtaTQtzzXL94uGJXNhKc7Ds3yTa1pB2mJtq28Vy4
	 YzELrXAIVm7HIJwOoX4tSTBNDhRd102De7LMKe5vwuATzbyouM64lFaztV1vp7KYjx
	 8a5wxb0SWULir21Z7/V/2M5CPz+e826FOeoBd8XNuvHheRUG5ulnC6IvJHvqHJ/MRI
	 BrKMQ4mbvAdig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977FBCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088479358.10468.3491561271513331287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed854109700c5433e60e5c0da5f7a7bc3776dce793a440ee4b1246720b8e3c33
Date: Sun, 19 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760884793
