Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C52F1A0721
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720104923; cv=none; b=k5rkBwk75Iu/OjvUqdPQyro2FRv4DMsqWy0EJmBZMfon+CyU9YM17dH9XZtqvAfYV//cP5JmorFhPxhBIUvXP/KnJHMm8p5qwUEBovFax2IeCBOOh/htw1T4aYJ8FWXTLi4bl0vBbDar+Bw4UaehbSMj6myTHMnQBFdQ11TytQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720104923; c=relaxed/simple;
	bh=RPxkixjnPfmIqGoPy6/I1Br4EmuFKKPh2hwZtnACAXI=;
	h=To:Subject:From:Message-Id:Date; b=adHDP1mj8iXoZpw7pA6cvEpnH/bpiBK1xRZpiQgnDd4q1gQZXRKYopt8unTo9srW0wA2n76+3OZ9eaVUE8CtFCWwMl1XGOHCfMzQxSXHlfDpflARhCBc4j1RJD4mH2XmnYEkOmebXFl97ZaDMW8gTyfgUamH1Ga2VC4R1yemAJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX8ahCZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX8ahCZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED03AC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720104923;
	bh=RPxkixjnPfmIqGoPy6/I1Br4EmuFKKPh2hwZtnACAXI=;
	h=To:Subject:From:Date:From;
	b=bX8ahCZwozlNrPpCGCUWBlo3bNWZOCJdcLQ7gWpae5gKYPkJBRMpuY07ZqGuGwhbC
	 ANt3eefqOa79T6c5VCBELkW7uHEDbmsufbtSpbkW6n3lnBB5IJkZlHRujWGFuO9Meq
	 ZSUwmCuPpLIPF2M4utQwHRTHtn6h0KYsgD/tbAGsuUURZZNpojdSQHFEVMI0qo4W1s
	 B3m1R+aW9jaKCCXIPQCMebxlzgAN39HjK2sMKOniCtDBSZXDcqPOZqScqE8KJmlfVH
	 BsUBkjft44Yo7vqQyrF7a5j5ymKIWMolHDSDeYFS+ctSrk2L+v/iyhRKPpKmIBnSRC
	 CEJC+UG/urJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50F3C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010492284.5904.990223601201838841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7281793fd8c759a567c8ce6e120f334b578f59283ab9e1db43b0e923809d524b
Date: Thu, 04 Jul 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720104922
