Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4718C11
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751505594; cv=none; b=fvSwc1VbCOZK+HZiy7QyK8FNN36/AdiKcdJkh+zBnTxCesaSTuMDeR86/6Rp4if0xXh854OLJDHSuFLG+b53aydkol1+CLmyhY2xhY9ccPmyjTMxfr3xtRDgMIHI+4zuTbLU8sl1cjF27FrL+s2QnT69FSuZfB8lREq4Apa6WP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751505594; c=relaxed/simple;
	bh=gcb2LKXtUSJtXblrJRhhugJLBL4FONdh5iP2B+kCmt8=;
	h=To:Subject:From:Message-Id:Date; b=Oi9i81+lX2dxjhWm+1HLttP8/att1uhKHBGY+yeps0K87qWbuVAJoJUdM3AwCyPdJ9RP0aMkpYfPuuzOM0ptjsR6p7SCRjqnytxT3RWeTYHGyobkFOec4QIPZzMKUsh6cjgwXTfLXbkAAqcudtaQipDVr6RAg4epmwHD7bAV1gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2Lt+b7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2Lt+b7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751505593;
	bh=gcb2LKXtUSJtXblrJRhhugJLBL4FONdh5iP2B+kCmt8=;
	h=To:Subject:From:Date:From;
	b=t2Lt+b7w3tcpanFPzSafjXyIMA9at8iDUCk/7l4R54aElwvmMCd5FlCQYGadCo+NT
	 0C6icHsBU5M4rhvziG2n7zXYdyI8CkR1F84u7nEYuAEIANk8zgSW/axkXJIxqVv2kK
	 V3HBMrVELcw9mh60HXCe66QrvuNMNPrAk8DCaGDjC9MgTxv/cs8jhy7PuzMIFez6bi
	 TnDyTsVogUztAOZQhY+Ih4LpPNyKmF7UJQMujyBGliaDr31tUpGTYgdruYTbjwYqeO
	 4hQ+2C+1jgshl91M9r7QFZxz3ejptcj8jZEyRO9bgwbWdLdt60x6P+sNHQPt5ZrBKW
	 tmt/f/yX+g+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99356C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150559361.1503.9126450742145590740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe205fae7d982b15e7d59dd5f78f74f8cd1d1604d7d6fb67754734304416df5e
Date: Thu, 03 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751505593
