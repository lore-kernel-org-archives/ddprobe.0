Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D84F4414
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760065194; cv=none; b=uTXLqXrEuVlJAkGrHpRxiWuaN1tc6cxG4uyLOC8gY3uyIADwl2ohmwFXJo0LnnCdwbufL9vkvO5LEXwrBSlt/4fYVAsIxr1mXpBuMh1Cvj5HHZQpXdDcYfxfGWaa2rW1uZYhwQVp0ZizZHSW922/Z3xr7k9YgJ3XYxbnwM5ulBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760065194; c=relaxed/simple;
	bh=6fUHopVlKFdxvH5KUMrqkz5kwnibXawvtFuRqVbhD+w=;
	h=To:Subject:From:Message-Id:Date; b=qj93peHwYsnCDCTkhpwVnXRz7ZyTP6exGa6+yGV/DkF4okcdvsp1gjshvQ6ItSxTCzLZlUasili6ezUJyZOz4FISiAob0/9WrgAEqBNXy8pLaHzjtUA53bXMgC8vW7N/e34R37eLkKLl6liUE5z1FPuquMCxk1zu8pZdkpmWJV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvKjqWpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvKjqWpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0465C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760065193;
	bh=6fUHopVlKFdxvH5KUMrqkz5kwnibXawvtFuRqVbhD+w=;
	h=To:Subject:From:Date:From;
	b=WvKjqWpEhZ3UJ1yzy5rq9XDoS0klKa9JGiCHjysPmydzjSVapAMS55ljKXRiIn893
	 3VLOVjmtuojKBhpbJ6NLpWtOiDLPeIQVmcnuCkahjTWijOhehch1qQxkwG3QfyN9rL
	 xHmBAmdVKcAOIiXgQ29iMQNFRWTCEtI9GPQsGK3qfSwwH5FD3vzTH/2YeMNKI2l/MO
	 h2E8MesvPjaVM0C/PXrjvQH/ZGLXXhQCJQxEMuzwgunQ7qfdiXBNTzdg2E+L9ocwsh
	 UWJkHbfT4t7LqmcHIixjUnY4sNxrxOkhsV3leYBtHErlcPxsbytAaP5qhXgXdgU1MP
	 0oB1VDTPSqEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F078CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006519357.13344.14335485645700426689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e03c1db05b034d5b36a5597e39a61a59dec912e5ef6876fcf86cd782477521
Date: Fri, 10 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760065193
