Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB3564CCD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706192297; cv=none; b=Jfwr+7m4nk3mlHkrLlRDi+FSntqjAfg4XyyOgJGxnldXncJCK3g183+Q346FV6aT8dITfpeFeT6BHBFoZuig+00MBxBikpotwsjoDyGaJvsgRM0Z49D2EEVktKBHuMm2etcB24Ptp1oXOYV8GtwavccKuS+WGN7ub6v/HbEZS6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706192297; c=relaxed/simple;
	bh=vHdK4blpadXETyE1fIJq8GoF45q1nEYiRemLGTHPdj0=;
	h=To:Subject:From:Message-Id:Date; b=e9GZmC/YoLzyGyibO9WCNvD7xhclzxOQOCJB+qByGmMuGH2ENXK3F4HAHnYrPiGQOaGMsP3spX+XDOKLBUDVtqvMoRCTrw4CArVeouMDYHTDK99iKL+k4YY1qUaxWKFQkc1q2dCR7cml+Lpj3s/fiotUE+q0Msb2heNdKl0Wet4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQuTh3T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQuTh3T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA12C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706192296;
	bh=vHdK4blpadXETyE1fIJq8GoF45q1nEYiRemLGTHPdj0=;
	h=To:Subject:From:Date:From;
	b=NQuTh3T10SwE3X/P0eGnyIu1pkLw+qouyHjXmPCx+mqbyVKTOyxLB2l0cq7g6SqXG
	 vibRl5k788+VEdWWxzdjdl+0gU4DNmZYCQpQGD7z2cs7g7ixtA0oz6bbyduOAujVc6
	 h2yWIXHJK7WY4cUQdDNig6axJxJWZ7yB5oyLX59us2S+g3vacZeVzeXZzPhG6A1g2k
	 xIT4OZnKE+H0aIJmE4f3EopXCtMZZyk/GuqG1xYR3VY8YcZ+GoBgfwCHliizyhz5JR
	 CJj5SKqbISgcIrgkx0a0I8ZSW8EvJOBoDyZeR6YcmhucdBNR12wbTiqWCYL5EFnWg/
	 gng5WBNrFp/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A07C48260
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170619229644.19063.14182527409130830498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9483e56be706d64626664a27175c05a6042ae13d4e6d9749d44d6ead699d7b9c
Date: Thu, 25 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706192296
