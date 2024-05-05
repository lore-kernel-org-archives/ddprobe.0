Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95C1E48A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714918943; cv=none; b=dz9yvFctAdydMCOA52WwLc1j3mJKjxTiXD8wp0v0vknkO+lldCdoHUnPsZn1cZLmu+BNNkW6FPreX2heKj/z61oPeuqLU0khxokqvlLGX4juAMlqLsQSncZ2MdTVh++yMgUOOIhOPA5LYuPSXBOSwCVL6ISgh/7ZrpdV4c7GhK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714918943; c=relaxed/simple;
	bh=u5z24nS/19DPpbDK0cwkhJ6PmWVRxUrT3XulqNO1BEo=;
	h=To:Subject:From:Message-Id:Date; b=h7nzkaA0d/dWyZRy1n/d9iiufe2Cj2MjnuT7jDIuuJU6pPxkiCay1xPHPlTGdBYxrcX+fiSWzYiy6aq5pq9gRSQ8L6kuRJ2hK+BwS+dAbYLuNn4/F45Lj6eksSoZ19losp/qVPd3CMg+/piDh/YAhOhH6VWRkLQ1itfmtAXaipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XODhA/IG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XODhA/IG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A84C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714918942;
	bh=u5z24nS/19DPpbDK0cwkhJ6PmWVRxUrT3XulqNO1BEo=;
	h=To:Subject:From:Date:From;
	b=XODhA/IGLJzoKevyEK6d4Be3XYOYQprBPD5g1ypi7L6oitTk+fASgcgXGgZv68FYP
	 VrZEFY3soAE83ZF8udh2upCX8uSUi3HzotQABrwRyP6+JSszi0czS5M51rf0BCwLj2
	 UsD2AeDn77FxgoovYOk0rtkmtPNUtTIj8QIkVAkIDTEdDDDHkD7jma3aAh51o3CUlc
	 b1kR23GpDKQeboMNcb3fLo7YhxB2dRCu0ZEVK0u+4YzLtuma8aWYJR0DgHp346IIgS
	 KbhKzLMp4/VvhjKnBFYs0Gp72n+HfdHv8i9JqY+VmKqSoy1sCbeiek8Z9Tc3j2E35a
	 H8F3Snl6mLehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE578C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491894277.23159.13403095447824467357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2386c2856597839c766cdfa33ca9875d542badd8cafd1aef3afae7247ee4cd
Date: Sun, 05 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714918942
