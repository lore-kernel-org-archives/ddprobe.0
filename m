Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC5302CC7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760460594; cv=none; b=cov29vLeyzSdk5t7tb2Ks5xgV24ZajNoBT2vvxRXGvMqurrpykHyCoeBvR4Bgw80slzl3x+Y8XYiO9T7BDonQTOWWg4D0Yi+3TuPxEA5ZS4/7G0hsrN6D8389sH1tCVCCNaI+0L8W55sDA7AGoSfuGGNs/aCEuyD+50CH8QB9LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760460594; c=relaxed/simple;
	bh=uwV0Wf9Aq6gE6KgT0MX244tIWEWsyADOy65CiMcf2dE=;
	h=To:Subject:From:Message-Id:Date; b=FgdUkjyroFGR2rwDF+Yndg5LdWrOfLha5J9Gyc2OfWHx3Nnuaze/sqtAbO9qfsHFAgr/o/o5G9Vt7mIuEQ6qKeP7KJdSFLAiZVbMDhcoiKAAXuOY/0dkviDAjUaBJ0Z+EjHMmhqLVFJgPKDgdExSSlkrHPRO51HG3grVightipI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQsPJSCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQsPJSCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B89C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760460593;
	bh=uwV0Wf9Aq6gE6KgT0MX244tIWEWsyADOy65CiMcf2dE=;
	h=To:Subject:From:Date:From;
	b=XQsPJSClvtKsHg9ayuLp6674kaJYGl36OUkPaQGnunZF9VtmkUPbm12jYORxkGZ0u
	 VVbolMsz4GhhBu7G315BMoEXAlVmiVhLlOkcyrt6YUtkeCFJapDOozNZAAGwsSjIH9
	 06Iax4CswMt+4xmHTPQv3rpW6lkfQ6pu/Xjo2k4Vm+P03H/BxUqK5Y5uEuW8kItuVR
	 mS3b0cGhwcDT1/Pff15B98o9PfqCmp5UHB7tsRJmS4xxfCKKy8BeXJL94d2n4TSZhh
	 BzRAPR4CkcqxkrNYM9KZj0HnT/K/ZaWKNuoqQYapF0LqGb4b0ORjTGtnNZL1aavS6Y
	 BPaST8xnwwGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC02CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046059357.7582.10725994671765190292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253249fd3a45ca7d0b1c1831d41603f14d9ca0187ec10ad2d958dccad5c5967b
Date: Tue, 14 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760460593
