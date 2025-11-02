Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1919912B93
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762075194; cv=none; b=N88IkytQacetaCEeEUMTS9KiJGX/31Li6Kd9A/7E0EKwi6I5QoZQ+PkV3Ha0upBOCrkSyRIE6apdE3/kL2GINw19SQf3DkSACAE78DLBh0nmxeqUBBoo9aFlzWzQll5m8kmFAHwZMyLFXLNB8FxgnvlguK9AkC6RTPrKd0zSD20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762075194; c=relaxed/simple;
	bh=uJk0GUCwzzIQHsBqixLHODRys7t7oiBhHeqQy+84GJI=;
	h=To:Subject:From:Message-Id:Date; b=uPrm3K/zC+b6ehn1hA4MBfQYPHMP9GJ98OEfFleqGggh00wQ+cRMGj8lmuhkKix/jmkkEVi4coQo20+4HyosyYmBrXa702LcQiRn3EnqVVprNn9Jj66Nbq7Ozga+/bL/ig1jbeZ5xSO35cXdofuxOuBAAe/pC9wyzRIHwBC1r44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvzTuT5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvzTuT5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B729CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762075193;
	bh=uJk0GUCwzzIQHsBqixLHODRys7t7oiBhHeqQy+84GJI=;
	h=To:Subject:From:Date:From;
	b=TvzTuT5w9NAxB0/6FdsGTbNPDyP+fQSiMMTcbfQrcaZJduNbu+9QUXEjLREyGS657
	 /3pM99ubx7knLMAeHdpOulb019E/4yQO2/FrcvgvqMU3k49z1a9YRWAZgiUhYVNkO0
	 fOfaBxzyBHtDjaHeD5ETplFO1KjMWtlPB2wIDZTSjhLkxrGdMhB7I6oFlvsLpbQ89p
	 OXR+tcz73lu4FAuxZcOcp8ovYBlB9KQWVjCkyi4YH/Wq4XzssrLU1tpGgJ1PNiLHND
	 1y2X5cVAwRtvyhtTqd0Xsg8wa/pc+2aBQ6Bwe7FEi+RriP4MEKkBxV5AUKIw+mhbcj
	 61AX09bvb5T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0721CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207519362.2918.4423539325368455339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406b0aa6b747d3903a5eb31931bb34b91c8cf340774108b80f6521bd6c9e8333
Date: Sun, 02 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762075193
