Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D322097
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753325394; cv=none; b=YnKbgOE62xWg6Fdy8ZP1Ro/cle8+aqhH3wRPjlDh7PvB/tdgPjvRmFeyl8tb2i/PRRngTLgohbz6xG2N7ZLl53oxHlTH2+xeaxZSQkBQe4BfJWVSH8u3GIVle12XF31oA8H0OFD7e9JdQxk71uHDkITQg20PxyqH6T+0evN2oz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753325394; c=relaxed/simple;
	bh=7EP6kFGyGHoCYCJ+JybdW2TkC4Ro6I4KfuIYmSnepuM=;
	h=To:Subject:From:Message-Id:Date; b=K5cKcuqRFi4UVnf0HlZlE9otjq5BARbOoadA38EUrDar5z1k/xwCJ2Hye6BSInJ9mF7xV+fAC26HzjF8mrjn6R6qrlQOFV/1piDVU9wKRCPOk4h0lx5jSdQtAZ051E/tGKjYo2U9vyarh5WQzIX2hbeei2xUsg9/Iiu+FoSbjCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEXBsRmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEXBsRmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0693C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753325393;
	bh=7EP6kFGyGHoCYCJ+JybdW2TkC4Ro6I4KfuIYmSnepuM=;
	h=To:Subject:From:Date:From;
	b=iEXBsRmAdpeLZ2dFAA1AjqYcudTP4rlORa+gKKIsTjsMRQkm5yEe83UiDJNMhVp4c
	 A7mCxe3h83Gnx3kFM9rxyCEErkKXrZN76hH9h9+QZT2HohikAnk1Jr+NQcgUwxVfsC
	 +V5eKj+kE4IykfmrnxU9nOQx6nCP7qDFttYFXcp2Dr1hcjNl09GNG4Mmr5Y61mGNFf
	 kY/usxpJ97skziK8WwLlvN8A+XIAEDXkUQYHNRJAeafMrAiUb2l3HwwkvEAboWaSyA
	 l73dkB4iORd9RoeWgvxfOs0LdCDAFBFfCHo/sq4DzBE36/TLWx2Ae3/sKsyFt+HNeA
	 WOqZvQtc439hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92143C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332539357.2553.16276796424111055223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f23852b562224103949ebf924fe369b2402fa1287cc0c4e4f6d5a172f8ff50
Date: Thu, 24 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753325393
