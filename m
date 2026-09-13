Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B401E154458
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789257634; cv=none; b=I56jhjP6PEbmGtZh/ib/OnxZIJkUcxl7apuERsYpWPXWm8wqszOzhq6f6BjQbpZv2IduNdx+EIQoSfycVJegKEWwzRWYJeC738xpPQHaYtgrcni1eM3JqBhYSflf+IVD5z9xe49sIeR+PtAVnBxrSVGv8c7chOCWf+9iVKhLlrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789257634; c=relaxed/simple;
	bh=k0GmKd7H9tki87TNccXqgZuOLKPUp/fkO2MErsDG1uQ=;
	h=To:Subject:From:Message-Id:Date; b=uUIXhlY3SGb5NHX6xuG4mJaruTsXFJT/hpDTrjrKgEJoM5/IJQ8WeLBiN5pWQsppqCCzQxxGBarutIuEWLR5sCXrGwXXVVXYOQ9w+zNxd09km81s9qVQ7MEZ71sKztXeaLUkF9kJfwscnZd/La5y5PqmoBR/utL6lXiJZna+D4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD3XendH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD3XendH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E109FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789257633;
	bh=k0GmKd7H9tki87TNccXqgZuOLKPUp/fkO2MErsDG1uQ=;
	h=To:Subject:From:Date:From;
	b=pD3XendHvRTNrKl07NjcR/dqHi70BDmm1HpSt9t3lY0Tv4vWQ3mBXnDF0VC+PcB7l
	 zByOCyWaLUUdstkCUzYwORrfJfJGiD21YZNWCsm+oO3Mr6EbfJUaTkx8TNiwysATjO
	 hfkd3201x3Epsugb0iIKiclqQjUKpXqaRbHnFkaCs7HeCW89rp8Neypp9q4Dox/48f
	 w9llgE18p/p2AH7lSTSaRxNM7k1/bkI00V3MPMIIf+zoTdWdhZDUoKMQ+u3l13DpHf
	 Lbmo7FAmptS1w2p9z7yqpKYnmvdRJtOhEJQgq0rekNFe3D/KG04Ns90ZxBWeRi39i6
	 nwGac7D6YG6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78E7C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925763374.24077.16682802493277671004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044bd9225e95980da68aa7f54197ce1d691bc9c69e68ee80382ab9685a3d9466
Date: Sun, 13 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789257633
