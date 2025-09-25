Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685846B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758838195; cv=none; b=ZqgJQeiKq2h0Sgi78gOHt3xoVwpqDGS/H9Z/1jygfpwPpYRLSo7zaItBUtE5AwDkSPCD2v2hzOGsFkxMi+C8nQvMKt8FeqRXTvK1O/OOsJ/TlGgEi62DS7oBzSPOCZx+DZbfOHXA6qNonPws4Bm1bKm+nx2KRshKYlyZilJfQM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758838195; c=relaxed/simple;
	bh=iOQugu6bRvFOH3qhdiWLxYVW5nQEGFOX3yy9Fbt9pGo=;
	h=To:Subject:From:Message-Id:Date; b=en/YW25JDOWk13otAZKLwu3tVsPtNUZLkQuSodhhm2oSk7L27/j1j2RhhTXJ5+z8etvolAg2GicbzhDxYkn0P7n62oGakbxwVZS/r6HXNwGt6SMNzurcjwID9gFT7y46it5+j36yo69Zbb+iysxhc+vxawdFa0i0EmQH6HLMkwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmfW4nCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmfW4nCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D88C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758838193;
	bh=iOQugu6bRvFOH3qhdiWLxYVW5nQEGFOX3yy9Fbt9pGo=;
	h=To:Subject:From:Date:From;
	b=YmfW4nCftSp2O+MVLaNY5g2aUwylxBkURBeClos3mF61Pd78sNRHNZ6EVj941inD1
	 vWdVVFfhyVgq1ZOgE2BOloc/Ybmdl/+Yu0SjUxQI1cRfMzC8t/BNFIovX9b4i9Fl4P
	 ZyJEiCwQJvZ6k6jg1aE4MTTH661Nz2NLruqaX9In2EpHSBHz8yoDsB8zEvD7FhrvGQ
	 CwZubaA0RjzN7orceD70JHiqMLvScvbqscwCVEI2vtKJ46BLdNabo3pKSs7KM2DM1E
	 47qg5WTzgpkImYUBSOK8LoTtvccGPK7clr7Lt6dU36UTHHwp5JlMULoiRtSxLhs5bO
	 tDsTeoLco+NfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C16CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883819358.11116.16480760642826536957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83565e39bd28f479796944d7767db9db24f1bc153d72913ad0029887319ef63a
Date: Thu, 25 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758838193
