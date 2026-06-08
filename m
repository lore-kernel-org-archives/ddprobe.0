Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEAE348C46
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780895674; cv=none; b=EYlmC0Z/PnIR18KD5pKyLgVeEH4SS3zNekLS8omOWqT8GvuDKvrRgsLHmiz0q7IPUVgLsTixI0KkR07uAL7ZuRq9WZq3VAxpyMla6ktvHjtvCJMZCICL18diyLM0gj8gEJOxaWiez95eJjfDr1SzCJCI2EeUAqEN0nZH711Qg7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780895674; c=relaxed/simple;
	bh=GMDDL8y78jFN1q0YY6vFes0oSWLeSMHx5LRCbGpAaIA=;
	h=To:Subject:From:Message-Id:Date; b=Qfncs5RCf2cy3spgsU7yPhFmbl6ZbSOc2P4qejS2Do7THg4p88jZQ6BNbFRRdQUN9D/PBtzPNFNsiLmQuBMGEqbLETtUci9GzADe6q8/X1aJYZMok1lvKvs73tM5pppw3cF7crAceRVP8VfGAk68j21aSG08C9ds6TTV5NUGEnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsnVy1Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsnVy1Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3771C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780895673;
	bh=GMDDL8y78jFN1q0YY6vFes0oSWLeSMHx5LRCbGpAaIA=;
	h=To:Subject:From:Date:From;
	b=RsnVy1Louh/qkkdjggPsPj82llxKxL/yOWnIUar4quHM96xNpY0LzBNH6x14g5gdW
	 Ldju4M0R0WQcwOy8NRnBjp/Ak0RvmSSgW52wQ4hV9f7RaD5sNsVAuJptbYfT5ZsibB
	 VliBUz1Yr8rmpBdN7pgLN8n8TCSaNSFCZ0GcJqcGXnUlAgrP0BcW+2lS18yBpcZInC
	 5haFZ96I1sh388SOhWmOAJrq73oiX8UtE33vpLXBy6rAJyYoZQIcbLC2Q8hccvL3gF
	 4VK5HOet/vL8vU+jWl+6otOFXWGPzMc+0Og76q2p54SDNzffAYFS5URzPxFMK9F9oP
	 4fPmoouhoSIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2B8CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089567369.7306.18049729152832140475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e616b152ec5c718e2968e49e66d423f6f5212728ae89a17ba33f74d1e82e1d3a
Date: Mon, 08 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780895673
