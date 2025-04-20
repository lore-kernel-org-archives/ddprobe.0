Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556E191F7F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745184596; cv=none; b=FOPymtmdCIpqXau+REPIS8W4hLazOyNLt5/ssJhoNrUS4qdiFK85WfAOzAdgkTDZLM/JkpxCA9gY0I4inNi91D5o1jKaiVmuRMj/A/CqBP/6oVsLEXTXn0UpEKCXkGwITxMPkgQll2vJ2wjl12Z0M/lGP+Tx1/5+aE762RoE4gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745184596; c=relaxed/simple;
	bh=XWW4BcnbNBQmd+/A/tTlBG4WUZBpFlxjtxYJdQFqS+A=;
	h=To:Subject:From:Message-Id:Date; b=mARRQsOemKvsz87QS6Ra4V9NWvO83Vss60lfqleMlbeWLIPP6r0H/m+UCpTzmo/iOhM3Pvn6rRXyJROu5/2CBIvVav+IVMX8bJcB0vM4w2NFI+oIv9/wXJtDysUhbhmjF86H5aa0fgBLw50AjtZPZmGRPGMBya/4hMzIUCPp1AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV4wAYkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV4wAYkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2232C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745184595;
	bh=XWW4BcnbNBQmd+/A/tTlBG4WUZBpFlxjtxYJdQFqS+A=;
	h=To:Subject:From:Date:From;
	b=IV4wAYkBZnfHAilN17bQpZT3Yu1fVihVZsqt5fvLpTePpM9wBYBaIJQrfAKyFXCZp
	 lYTVp+5Xueuc6hPtaz+OZMXFsYgpaYZTYyziaErhdHnmcJm5YTCn3+esRwYymaHGON
	 +3Z0ipt7NkrzIDg0Od6htNtTpfjOjPvwRHOE6FB149zZInCh6ooAQlSepPGhvyZq4A
	 eYv8vaQEtQGIRDWYYYARqK50w55gxLp1poQXfT2usE1Eld5Sp+GHOy4cCw/b0JnLIw
	 UWM5vQ+RpSmC7YF5CD9ROUrdBoI+fk6ZNzN7pscLvXmrREN07vSXr4cGtRgTIxNpKK
	 RmX1MiCS6sczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94251C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518459358.11261.5590839597240245684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf4eef582c366d9108f685e109befbb5fc8754c73f87d37a9f65ce26ddd90d9
Date: Sun, 20 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745184593
