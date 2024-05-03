Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9214F62
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714701743; cv=none; b=d95F7s3IonqVi1kYAjIFj1y1HCH20rdNHtPhbNcZvGSsuXxXrhlCAHTpmlQCzFyPtTBk3wtUxRXBL2bkYfqqn+rVIeEqnowT99c+OZkfhUUm0GTeU5oIP2+bcemO9fym2Sv9D2ZTlZJYJ5HFoDQ+YoAMvHne/mTiXUGmalNC5KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714701743; c=relaxed/simple;
	bh=ysLgfePzqDfmTMOtghW79S5MhdETCEglqUqUzfdU4WQ=;
	h=To:Subject:From:Message-Id:Date; b=PkgQL7uUqLLTMemHim/5clwLZPmCCBYXbEqUXwAnIN5Y9yBOkW1YN7EmfugqQoDfbinSP4BGQ6seIQEHNUGrLO4tBLlWMhWUpCelf8GxXz2LS/XmGkgz2EOwU76dkO4G8naQhDPtLNFBJv85jfphjVuAnXRxuoPAjpu+YxV7MFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR/rpD5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR/rpD5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB68C113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714701742;
	bh=ysLgfePzqDfmTMOtghW79S5MhdETCEglqUqUzfdU4WQ=;
	h=To:Subject:From:Date:From;
	b=GR/rpD5PMPD37jO21vLH5KR4HvdRAx89Xd2zKOdMxN4YLcLTaE9njAfBy2GSxMucJ
	 w9TuDApreu2hEBeOx36Sq8S+L4DdkURi16WqKyiCOroUIfZtoYnyPzMh9ioEVjyZqw
	 PYQTWLb2s0WH7gghWwf8YIcoC+Xba6PHx8vzE62XrxHTyRefCsqknK2a8TOHN4bqti
	 YA/Av+ki4w+8TM0G70pq4fSS517UNCsaoO1wHzA6JI0R9D2VGYMKpGq61mRUE51/2V
	 2CoEsditdNclciEOZc0UnTH7QJCYYpSEYgwMi2zkbhFAfvyYkviQ1PWYifBEQuBKFZ
	 OgX6uSO29htDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C812AC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470174280.27978.7390891233833410514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bc63ee4ae314a5e47a557230c8a5895892956e4dcfd8e03ce3c7b31c113c7d
Date: Fri, 03 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714701742
