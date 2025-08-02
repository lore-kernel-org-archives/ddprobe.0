Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7120E00B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754131194; cv=none; b=Urw0Ould+Krr0N+LysZB4kkCHjSkRmW5CuKY8JrEkzhC/eRgnpZhvrDX9a9Fof+p4wQNS7zlYJH1vSnc5s69x1vwvxzuTVUfU4OUjyWIDVvyikuE97uxX+lSvLQSCwvnQ6/JZ9fV/N0GFuxuu3X/eHFND/aFQk9gLmNjgeVcSmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754131194; c=relaxed/simple;
	bh=Az74PzUlV7McQ7/IWxfW7PhzWBtUAFwDS6sa3X3I3mo=;
	h=To:Subject:From:Message-Id:Date; b=p6PNcJ0a+++FwPrtWZfyb+3wRM6rVpI3v3imcpf8a05yMzSDIDQLemeNEHqQnYS3zRrkkioKlNiIJTEwRmMMwkMOmW9L8JpeI8ohR1WnJSffcNyVlDCo1+XenXt8lVXgJXWt8dAp9AquDZsyplHRuZCdnQiN/hKQxJy3z/PD39E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvzAD+Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvzAD+Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754131193;
	bh=Az74PzUlV7McQ7/IWxfW7PhzWBtUAFwDS6sa3X3I3mo=;
	h=To:Subject:From:Date:From;
	b=mvzAD+IsQTWWhbESPObWjHaZVDHO8x1DkFMfxPldEZsGq9PNrtj7hoRpv5pLPxLnl
	 eKLUFghpH5ofraYN6b+a1sZTITp/nX+kcnRQS1DkZIDTQCTXs6/mAhSyjalSHeZ3DJ
	 0Na+zq82FcJiXB11CLfmBbEbgDtK+5JhX8kzEMk5PaUtwPZplTtEqNgtn5jWGOKTm3
	 wjQcegEhmSmxc1k21+hoHHEV1xM0BAhO9PS5pbzOhZ6RtyKLfYyUcAwuGksbHslY8D
	 11OPaGgxmnyse8jU0WBOsmUP6n0Niq94o0xVVTFy+SrypLAFzB/dqqQ6+xmHfbG7yG
	 VRZUIAWhcNxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95415C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413119357.14668.12558419510320382327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318ad080d05520790ee10b1347cdac4e3afca2e34d062b2ae9a6ebe16b506335
Date: Sat, 02 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754131193
