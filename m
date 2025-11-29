Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11425405F7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764378774; cv=none; b=UwCyRjJ7n2o5j6Bd4LSC6Gk7AvwOcGevndNhDsV7rMlIR0EwQeEv8pNLm5lla8o/JCU27CHjWRBZqhp5vTWXfYMdlqffgze8lFDS2ltJTREljJPmNzXcYVtmDJ5VjXXFisQQBqlnkE610DfXDEey4LscchSfMszyAECFlx7VqVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764378774; c=relaxed/simple;
	bh=1rmIrtCa4hpq4qhQwjFB6k7DRL3x6GofDoPN77Pwbpg=;
	h=To:Subject:From:Message-Id:Date; b=nEIy6CabZxaavYAo8p+UaI9MzBY7451vxPw+Hn6PthBEiqATUAQWWVkSOMfK/PZXBGAAwWbet2SWSo6cxZh7rmDOeBaFFJ3uexTv7qLBEKmu56e0WLKT2LlDERLOPsLlqoczboPSBWVLBwInpFGISdM2n+ONXpK0untEKkV4yy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByO9Bi9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByO9Bi9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA968C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764378773;
	bh=1rmIrtCa4hpq4qhQwjFB6k7DRL3x6GofDoPN77Pwbpg=;
	h=To:Subject:From:Date:From;
	b=ByO9Bi9R68Rwtu2GtADrEvx1vHxC7IHnxorUeheaCFbja3rhqAIcv5q+Y248KCwet
	 cyff29PUlXfSjmJ3l5J0tBH3rP2kdoAa7poUXnTo/eueryYMhfR4M9pZh9Wr0zhPiw
	 BunMDOZfkO+hNXrMArLUDnmTEtBDMTVM+TmzkJmBbBb/rU+qDxHxdE/hpXwlxNkMG7
	 tuj9RJx58X2hMrqGoOLlAFu3xUbS+90WrTYUEFJ2rroWPf3b2L3USsZoVT8wBklNM7
	 qY5w05huR3PyNl7lFH6CBCCdRgqAKxzmW0XLQjA73EWE2jBvfmfjVWUIWH0ZNE8M+i
	 GkHcwSfiFdd5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C1D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437877359.21417.17708868914091498101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e9173446af56b10c3878df48104cc0d4ca5f8ca9d4b7f2776a5a4266f3e5e2
Date: Sat, 29 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764378773
