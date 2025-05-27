Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383293C01
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748338194; cv=none; b=leIW3lToz4f75MEF9MqMcmKboHd9hP8sua1QA9GO1j7HKILpEjmQvagL0Lg6/4UTG7suHtIFxPGwzEtjKykr5jePVWV5imlmvi0S8fxRCMWhmTfXkD56CYyhhb5SA5osqyKBO0uDgqMMarzYw6Y4tAHU0H9nXaG2RtEQJwfxsEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748338194; c=relaxed/simple;
	bh=khEck2cTbBuMKzflCDvGgCQdstOZXF3NR7SZYtS9SEw=;
	h=To:Subject:From:Message-Id:Date; b=SdxBZxVqR6XABcPs+IDpPan7U4mKCW0bQ5Wfts3Fp4EJrN4/WuLN67M4B/bNYuJx3euHXuFuMYcG6MqGUA/4iqEKL1NJY8wVifl3DkXAu0ZLkAnYtQdF1c9nzNXQy9gCeEVYJxlYH7uOr7AYTRGm9uJqmDwbRq6keCAVpwJe9Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2oQXjhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2oQXjhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748338193;
	bh=khEck2cTbBuMKzflCDvGgCQdstOZXF3NR7SZYtS9SEw=;
	h=To:Subject:From:Date:From;
	b=g2oQXjhCIckm1Q54ac80zWYc7Mc4J814tn+OTUKaKl5xf92Q09MSaNll9S2+wC1ef
	 xwpFZE7bsC18hKx5s2PnusWda+Kik7SG6uvgOJXQouBWSMJR7R+oYXIXMYMPdORNgM
	 xrOV6b1Q2oQjidt4qzGvInlIguFQq6dNMTLGyjB8nodFCCwFsTLfCUpw2xV/cOgIBj
	 8vvEHCizsAgslpT9DK5ScU02Y7Cl8mAmBB1g/l3PtAfDLyVlmjutfJgVojfZuBmvH0
	 81LlvQKeVoaAd0Wb7nmsvEVW8E413RmE+qFt20JFvRcTiXywPxcWC9oTAXrJYykKYq
	 +kb/amat0m5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C6C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833819357.13681.11682864562694443933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a5c66498078f35eb5012e8f5c2933d2c334583e11741a5a42d7a99dd19194c
Date: Tue, 27 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748338193
