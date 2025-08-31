Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B0025F7A5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756661994; cv=none; b=YL9h6QErG/rEFvl7oBZvWj4bl/o1u+IGIvUx3GTxBQN0gurT5lknwXpe4KSjcbyFgsbsqEGcz04rxT/yYUARGz085Mu4fwjO+m/uy0AZwTI0lFtv1MPsxxrmN8uVqdCwHEyr/+ZxnkWGxX2DE2MTq6ECrA0A0V/aPV3wvrEX40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756661994; c=relaxed/simple;
	bh=VIAq1wA/8lJ3tr4Q/qOixITaXWs1D75Ik6ghajOUYy0=;
	h=To:Subject:From:Message-Id:Date; b=Ot7f6qnbFC8MWPc+3AGZV5yxqAsKynjmSugJSpejA+GZw7/I32qtvgBIbn+sOBt2SFSK09qN+G1w5HUKaDhurl9oJ84oz75JBsQNx0+tw7hdaNeep/TKQKthNtN3aF5m/eJjD5k9P2vw04LJE5k+g2fLxbsTzEgKVduI8YxIKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN9XnscP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN9XnscP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756661993;
	bh=VIAq1wA/8lJ3tr4Q/qOixITaXWs1D75Ik6ghajOUYy0=;
	h=To:Subject:From:Date:From;
	b=MN9XnscPJcCFua/Bybw/PHcWsoOrVPw81/YfIPbvoJ3ZBWX3nrVhNB17A8+B537LK
	 S9ODmzIWopYnDViPG4Lrq9g8M9N0Jb6zWVxhaiuIyFPH6l7q2PoOaBpshklhwigrD0
	 GBUv8Av3FIavGbBy8+YFFscaYQFR923zxuRdIqphtJmNjQ9GilcVHE5JGC+7jSUHLf
	 y+D/VAW6+sSdlceWq8y1DyeYt7DimOUYzimM0FsFL6VC8VRP07J6p7LiRCeHWggO7o
	 RTmKjWCID5LMx1/nb9F8GCPlvp0Nj2DEgjF49tiDwswv5ML7u/4yc+U/aHqfuXUbb5
	 Pd9nq6oMCTWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448DCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666199357.5731.451046867914314349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a056669d2a7abb8dee9e7e7c82d08d3f132e03ab945635dac3feb92c14d1ef
Date: Sun, 31 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756661993
