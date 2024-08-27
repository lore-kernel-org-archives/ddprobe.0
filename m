Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282201CDFA7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724780754; cv=none; b=OLPq6Un9kWMrJqwRjDdBglFdskIvG0RNFXSNW9n/pzLLsnhf30mW6hQr71mxTCIWczvIlGZjrCARqmr57kJw3A3EHN2XIAHwpMX6YSwgLg/oeVxzUHW8ZmLpTmWQ+o51H0cSQGAijs4LapfPZbT7ZMK4qfJ3pRG5h5EofkInD/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724780754; c=relaxed/simple;
	bh=iJ4e5L1CZSyYShF8kfHR/fkg9a//bEWG50J0P9iczcE=;
	h=To:Subject:From:Message-Id:Date; b=F6zV9PA9KrxVYJX2uEDENFAZASPAvsZ7qbvSdxInaqDqtkYHiadOIdqbuZkipe95ducdBtEHfCsjUw3yffV5hENvyf0WPafgWVcMEPivyUKr3+ZS38TSu0KfbDu+gABKDy5/mxEzkLdO7RKc5ybZN8W0BMTIACkR0vq7to9FBJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4ogk7VV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4ogk7VV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1AC5E89D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724780753;
	bh=iJ4e5L1CZSyYShF8kfHR/fkg9a//bEWG50J0P9iczcE=;
	h=To:Subject:From:Date:From;
	b=E4ogk7VVjWByeMH0qgjaAUiqQv9+O1TtUNQH4L336Ot4N47rRuEuCmppEKSMmBjzN
	 nEwJH8JoJqhWCtxSe+91PFRxz1mRUhknDy09a0szxOZCivk0FD0VmHIRgq4PCPBQOf
	 vn9SzAjbxs2L5TaCm0HBPAHFqzabUY0DXNSfrcoxAUOPXurtxyinfMfV3LySg2L4dv
	 CxcwwfRvW2wOUUxJ3pa6YXOWJtDp/BHlJvs1+Sqzz9h1AVtI1aXWCPpzjWLUFfgok2
	 +ReCax+PRdnUSJbbUw2jqQ6fKKl65FM4q4vvNW7os0qMWmtndwh1m2t7kPfLsuTipx
	 jqMAWMB0OGQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BFC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478075358.17322.15655886213804045274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c832fb84d3c955d57d7b9b169431c6db2a1ab1e513c3f0f31558a7308b58d232
Date: Tue, 27 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724780753
