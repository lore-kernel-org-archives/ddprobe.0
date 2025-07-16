Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF962264F99
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752658193; cv=none; b=FhVo+1SlpQvQQPVkpWn621aAY8RPPxnq/igR53edl22sWfwQHvbF/b4hQVw8LPBcEVU4UXqKtVzupEAfeMUCMuZ+mCCDvabaf0l2LiOzxePJn80o2vsJJSGa8XbPz8T29bm/7X49uCVy8J3+DrDiIbYdssX9HvEzSON16KR9DdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752658193; c=relaxed/simple;
	bh=idJT9g0r2rwWtqt2L7GkSYfThGf2spcl0mkPz3AaHMM=;
	h=To:Subject:From:Message-Id:Date; b=mvA1LSgCYQVCW7H+Sqpkj+UtXaOTBkILJQahaQzJGde7p8ug7MI43DkfD3fQGo1B2HjotNpUbBkNwCtS2MhIqvG/rvW81cN6EG3Hzu3EuXRXXQm520X2cHqY3txZMSU7+W9kHqJm8/vKBC9k1DIfBqgrKT2YNfq1pWVih7lYK0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFB1kPSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFB1kPSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83EBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752658193;
	bh=idJT9g0r2rwWtqt2L7GkSYfThGf2spcl0mkPz3AaHMM=;
	h=To:Subject:From:Date:From;
	b=MFB1kPScLOWEK51aCc84fp53XCkRlnrP5MEDF5SUD5iS6jF+GT2yZggaNeznvXSPM
	 DPOWwt7meDdEfJ6jLrVlLc7SEKgiNwfVKq6+YR2NN3q2srd9LFMegFK2m+h9FOdTpb
	 yhukEYcr6LTHPVklLLOxeFTBWLKCKfDf/6PbT5z0Qb+g2XZnlNvMLIZqiAExsZyclO
	 bfGMxYpdHYUCpiLJ1pAeMlnjde/l3taZqApD32kQAKaTPH3gGnSYvqwqiUgTeqINwd
	 g2vaaLepOIU/zUBh7e/nAa6783+5f3xFltI89iXdJr6PPp++TncWlFU5PSOWpwCnVt
	 hDsPybvSxr+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B283C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265819362.1864.5396289317103500524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955afbf22a0bbc24657064c5feb9eeb546126a0817b54b97bc987233c654ba12
Date: Wed, 16 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752658193
