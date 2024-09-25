Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D928E8
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727295354; cv=none; b=n7Pik5gKKs0FBm2vJJH0rzCMFBsPj6XrE7+8soMbpvbqFPREbuxCMalUqbA9O68Tf/V/VOMvacoc3IyKkirBfWEEqJBXkZGSllHcxLSXmaiyURG59Lalr1GfCmnQXnyON/OY+8iQNB8ROyNFiwVeAeopnGDi0ARohGPPwldIKH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727295354; c=relaxed/simple;
	bh=XlSd2O7nm7FpYzhUtEjLRLIsR8Jgj7n7YNey3ctrpD8=;
	h=To:Subject:From:Message-Id:Date; b=Z1CmSktiGW1/p26e8aUV/LiNaeZ8T9wdwZlfvVlsnXZX30YaMitK4fhwAiQIJZW3ySrB9sX7E26+JV3DnLEtrp7uAGltX970TV2/ITr32o5BST5D5TWxB6hs8HRvc/U0iJPK3prs+OSpPs57mx9Pe2EcwoT9NieMIo1DJkWcsX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL4ax/JQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL4ax/JQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F74C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727295353;
	bh=XlSd2O7nm7FpYzhUtEjLRLIsR8Jgj7n7YNey3ctrpD8=;
	h=To:Subject:From:Date:From;
	b=fL4ax/JQLUWqDpBoNLo4/Tghr/RnNPArHCizyek29z9P4oXIXqhxCjzDU4sIoz2ha
	 E2FhhRWiK4CCVA4twxqZBlVpfGlKLLgBa5Q+9YDlD+oqgCsRZQW7ULBPskhngqG3jP
	 Scaqy576+0i0qgJ3A4ZzUyGR8XSMYepOmiDuqM2QUSRVjWeXM9wswXdlnHUdJJkjMO
	 5vc3X4lLmTrk3DSL2CRW3bxXRO0t76Ql1eENI4ajRnZjRt3mj4ti1jWExD8gnOYOrE
	 aaSgMk3KbqeNvgxWzQXKqvLn5im8agw+CmrXGuqGq39eoYZnpyUs/5s7xIyD52M4rB
	 AxcD7hQiUZPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC34CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729535363.28539.11679971714034988446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875d220e2b935e7379e67e1be9885180d3ac66f44f9a3906cfd4eff7868772e0
Date: Wed, 25 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727295353
