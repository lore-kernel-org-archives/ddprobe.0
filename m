Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA738F83
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725698754; cv=none; b=JneUbAiMt/RuhQr8QMdd7V81gVqOQstUbvmxzPU3XvrF1Iy6TQ4aBPAqB9iegoBPl6PHxbuOfymUQ/FPDXfrFj0lu/zGxEk+LRrsIRpSd9CfrGQbWE58oKQI9lwWr62UQb5bm7WTW5VldmmOHghd8b0yG5j0IFh9Al9rihAC70g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725698754; c=relaxed/simple;
	bh=XGGedKobJEinmsOXgnQZCsXF6L6bxjp2k3scHAHrP2c=;
	h=To:Subject:From:Message-Id:Date; b=Xx7ZtJG50e0IEXzysbace+I2i63LwAuNv5lX/FnGk8FUwuc+B4X4PP5K88kXIy6M9m9O1xrhsBPrcv5n/BmDStrFGXjTa8EvEA3wG1BeGezf43nFptK07YNKKv19KHrLylcNYs5r4ePQX7PPvv/2vpWm6NRj1ORFZp4U5mStwHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPBzZu1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPBzZu1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A38C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725698753;
	bh=XGGedKobJEinmsOXgnQZCsXF6L6bxjp2k3scHAHrP2c=;
	h=To:Subject:From:Date:From;
	b=DPBzZu1VhxHUgA8PfmPmZHMfUbmqZ6rHYopCLq+8LbFBtCbtkFVM/b0N6DbpZcrJE
	 k8Bc89KtN0BGYf0n17UsbdDNKg7MrXA7GCiugK5HlvuqbgZUac9y8h6q0VqQF+guzB
	 yT0XzYmkRw82J+AaO8oN2EbLP66Rrn2/4s2nB9vfBFecurPGfVQFmxfVPW0fakGI9O
	 2wZXm3UqFbKj3157PZ4kiPAzXQo4OWXyWoEib4wIsDEihuEaaCwPlyI7AFalf5HCnF
	 f779E+SwgFKfXIpeERWqivxOOjkFxS7V0lAEuF/VDi4y+4fpzrivVM2/r2S1+gHC91
	 X08tT1jm4Ys6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9401EE6FE53
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172569875359.27585.15321944016130475117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1c43eb039ed4cfcbf801df19887e536c7b937ef8bd75ba1c9740534a5f5809
Date: Sat, 07 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725698753
