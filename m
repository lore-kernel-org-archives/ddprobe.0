Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5E723BCED
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789260034; cv=none; b=f/uKnggI/OoyB+03WWgJJNlkbfa65Cm/UP1kz8H80n24YHycm55p9elzlSsFGvSstA4OJUpBZQlyM8D+5scLtdBS4tjgrUtHci7+K4FTH7MXZGNv+DUk0V7cdFUDZFZJfPRHnfq/7aeSZ/0RaJXLh96U+iZK9g6wuliEnKzOH6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789260034; c=relaxed/simple;
	bh=kvBydljnN4qDVHMNg8cwhIcQ84tU3GlDxPoqPt4qMg0=;
	h=To:Subject:From:Message-Id:Date; b=g/IoxPIgkGGRwgYbm5VT/4ySSYziaOh0/h3t+VwZU1bXLCuAqlwgMz4eW2eRN/nwZVTQSVNkdLeP7u7LI5y5lR17WbT1A3ky88bTLnyA+yPxC3hbFz5HLumvRwdnLb/i26lvri6jx9sI8/50B4Sw4hA86WfqUpNj4gT0RifLokw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU68FKDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU68FKDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CD2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789260033;
	bh=kvBydljnN4qDVHMNg8cwhIcQ84tU3GlDxPoqPt4qMg0=;
	h=To:Subject:From:Date:From;
	b=DU68FKDp4dO2Re+VaO8aTH9NRN50SsWZKavTa6c9Ap6xbEVXLHtqQD7/CjzCFpORE
	 CU7gQTsXgf/wxA+2NmIXQhZb13tSnOYiiiY2c1eelZDtW0UHC6gmGcAFtlwWewgRYj
	 8ZrktjUYLMGnr4BV95clqqRHmuutE0DgSRCF+xXTNhbYcpzbkdinByTZbiVR0TTRzM
	 FDE+cLFYztx3W5OdmVTQt6Ddka8Knh7KgonanwXCkeT6utVgrYUCjaWH3YRA2Tz8Ji
	 om4NP5bfDmMIRb2fNB+r7IkP+Gyn4FSpYFc+MwYWgponjFW/IO9RFdZGPztU4Q2f+2
	 V2kTLQFOGtJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B064AC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926003368.12297.7932412924282164600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cb8d72c1609d50d6d749e3c7b0e3ad6d7a2e7cb8e89704ea158ed2c6814262
Date: Sun, 13 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789260033
