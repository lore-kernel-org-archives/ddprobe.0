Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755C3F0AA7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777057054; cv=none; b=t/dxLVHVMnE5LD1fiCkF+fuUT1aMIYTWwrrLJe3kyHCeuW5fqYqLrkVOSK5ugLrn4Bxol6Y5NE6vxpTO7M7RXnOR1zhzmAVAAGZnGdQmh7RN72c/9DCYzDW4dFKGPTTqITdD4c/BexJpype6zsc3k+7wPQYjqZ7Bb8HPcKIguyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777057054; c=relaxed/simple;
	bh=lArSjAHqNEWsTK9IFegzz6FhJJOP+JvGVLiE6HPecy8=;
	h=To:Subject:From:Message-Id:Date; b=LRFNbNN3eMBn5NQxstpDSwwpyF5kbmUqU47GfpJu2x/QqVKFZFdCHRkH69b/PnP7WJDE/5SrfCfNZ4A7MGNaFTO/pvtcowzd6L3o7yTxsCvw3vPAmeD0GgThl+JE2Bw0xuGmFPxTovswMeFokbapzZ8NcuocA1UxVx0kmgMw04M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZTD+blF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZTD+blF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF176C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777057053;
	bh=lArSjAHqNEWsTK9IFegzz6FhJJOP+JvGVLiE6HPecy8=;
	h=To:Subject:From:Date:From;
	b=eZTD+blF3PizsWHm6MdBYff8uB2W2+ZH5M6EGhyX9jhyM0mYLYOe8z3Z/BIYkaHKA
	 +LOB7hdZok7vHgY/aoSWih8tKW/jmfOSLbpUt8l//AdEw252PhBLwk3+vFDHu5E+bV
	 L7CZeZkHoMcZbbX0mz9k0n8AaFHEY8NDHQ2zd12musw3oVjs9O9Qfvk1TdJU3ySWij
	 tj5gpXrYiI531tQOVE0jqcXCJvbUTPbSXQaFawzSMdOuopk4SXPElPb8K9OiAhDHaW
	 gEosl/bctCS7XogZ0oDBGyymavD4C5/3+1kb6a9RbEePnLpgzxZ8KtCMIWCO62q1RL
	 aClHg1Gpy9dHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A2FED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705705368.820.18225634376784209767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847bb388168cc8c47f8f342746f5115f4c2bdffbfc6b908af75ed6d63257132a
Date: Fri, 24 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777057053
