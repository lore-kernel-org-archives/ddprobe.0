Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FFA2E2DFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760947194; cv=none; b=Bs0SiSrqJtjeJ7kp5is4h4nFz0vfTJgiXVu6rsJm591bdoaPJtl3zipSGNOWIPutnNH+ftrYbXY3m9ho0+vEVUHT57fYHbbs7PQ6WN6GlIgWLccUfIjeO+x/J/SICZlEAHl5lsgs2EeRH8ZrYz7yw7u0zxWtLZSCXJzT0Sjiofk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760947194; c=relaxed/simple;
	bh=SsR3xDVZRLhEKFQ2Jp4UKCDzTNFkmKQVsUuKmmWKo+I=;
	h=To:Subject:From:Message-Id:Date; b=oc8H7VrTyXHtfUHS84KjC1zC/tDFBYkg7xOH7fNLbJQpGRwXgq+vBaJkRI4RlPAHZbK7ML9EL080p505f7dWcTvkrqHPJtg7HzZ7xDdEZZEVAfc1DjRav7GInRrHFyEEPUGjnnDg2SVmNOP7w7GaC7d1ALZXSxg0IMWFIHtD5/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtJ/BLtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtJ/BLtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D1C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760947193;
	bh=SsR3xDVZRLhEKFQ2Jp4UKCDzTNFkmKQVsUuKmmWKo+I=;
	h=To:Subject:From:Date:From;
	b=OtJ/BLtGMHwd75OUk1Ir0A3GAo9O3G+cffDtzJKpIxAsJ6sWK8h+ien2/J/CiwNzS
	 YJps5owILCNS347j2s7hcu+Hrnz5vgTvcTBbq7tQgpo04YD6G7EvIngX0CWZrybAB6
	 qPF9En0h3KT+t7RtjA55fJ0/lgyQHLunnRBXGp1pQD18sZU3Sr7jhMUG2rdIK0Ihh3
	 lnvYU8Oj/pkolq2eSx6ulfbKRDjZXAyLXFv4ekQREXv6MVkpi1a1at4M+9WCv44mVE
	 nRymowoVo1xkdtgdGX2ZsJjfPxPHrJwe7YNnJ9ZDY3AxjQRFF4X4gakkiDTjnAGQ8G
	 lhKpzXtlTpj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615CCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094719360.5058.4370446126690843387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed08b38252c064f0f37f95652672e3b8448d687c182c1329148f37c24a6fa070
Date: Mon, 20 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760947193
