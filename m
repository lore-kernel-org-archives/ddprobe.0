Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6175413FF6
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713764423; cv=none; b=d4zQw7zOBqetpJwItoSqW5C4rGzUzKndk9Byikzk6A3OlFBBixIKsVHGfd1VTdOktffVQx4vnhVzFAX34MP9hIcF1C0TL4fki+0gny3T6ILhFGU+QYXQkqU8KvFonVGWOU3h6i+mwVB16i4cw4eSkAiDywWpjqwdhfOlmA9Wfdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713764423; c=relaxed/simple;
	bh=pvfzHlvX6NUh10lmPhuLpwne535agDrqHy8BqdH24ts=;
	h=To:Subject:From:Message-Id:Date; b=OL81GKnXWb8nA0swFUQaa0OKTupHyValmyO09uN++/pVenyKSEOizAN0NN3jJFDDX+GWJhRdIV/biY5MeVJkMsgiylaeJRCz52zXb6kIdJ7vXT2rWTKUY55YT2qFAqF1yB/F2p5OvLe/4YnlOzx0Ldx9ROyLnLWnJYvxoJHlNUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouz7EDdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouz7EDdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBDF2C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713764423;
	bh=pvfzHlvX6NUh10lmPhuLpwne535agDrqHy8BqdH24ts=;
	h=To:Subject:From:Date:From;
	b=ouz7EDdxMPw1MBTYUugi3jQ6odBWvH2qsJ3/2PcazlByD78oeiuF90thl6YAIsXHj
	 6EziRJYn1F/yRHnWMoCXX+ilyCPwZdGwQoaaRgG+mLLNsVcZyzDaugl10IqtCli3XH
	 NEh7gWFwPBXjp09sBSaKNTQECrHaguj/gmV743i+SN3ACQceoIDHkEC/vs+DOk99Ny
	 ipeGggHCSZf81w8cbL5/GM13UmXvUi2O/3yxMGaXis6Dm15sWJxwD7zlIiIzQ9Z276
	 HPvEiQSEC/Eh08Buu7Dwk5uO3R7xPIsIwz8zv0XRf8oZ9fzsixkxMGi2IA1mVY9KjX
	 oIsIcVj/Q6CSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8B7C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376442283.30763.4228245408340815661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef04ff41a0b195d4aa628558e88283f669765490d6e446c8478adfd5305a344
Date: Mon, 22 Apr 2024 05:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713764422
