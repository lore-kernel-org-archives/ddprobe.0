Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D622DECD4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756781994; cv=none; b=FkkINoctYMGEARc8lSXzPH+BPUy3nXtnCjaV8oZWVaES7LQuk9OiA2atBpktCiPSI483xu54PER3eXletG+00KbSqkgOghc431O8FXU7aLmBpvPASCir7sW1uA0EWRcaZpoMO906cOwewWKH+e8Mpo0amsq49VFHhGU22JyOP4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756781994; c=relaxed/simple;
	bh=z+FyeGwSdILv1Q9+yVDsd3/h4UApglUce6d87kVF2Fo=;
	h=To:Subject:From:Message-Id:Date; b=N5Wabg/4zhiRs0IhsojYjnNOqsjL7YLfZ2EF20TpgtYGsaQpEfkEU3WTnhEmJXI9asI9cpa+r6FHIYdwO+2Q5u9QlQU7Wch0TrU2oc91zQNla1ulojg47LJqR9l2s5lrm5bAYjkx2FAKV1HK8+GOCYBqc1c18qB7qcwC0VsZylQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbW5TtLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbW5TtLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5661C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756781993;
	bh=z+FyeGwSdILv1Q9+yVDsd3/h4UApglUce6d87kVF2Fo=;
	h=To:Subject:From:Date:From;
	b=kbW5TtLlTaE50IaklnQV0jeQy6UfOgUV7ZLU5T3aPxKRdP8kTfVquSOmanDYA5MiX
	 uEri7JcDdcDbuGx4w5peZgZO6Dnny839SjaDqRv1AajenGIKF9D6uajiD4UfxBATwa
	 T4arai8Px+NUBK5Efzj8yqU8idRMxgYxa/ypouTayqXO9JvnTwGAL4KAiNfGPm1AkS
	 00bkj1VDwyPIUCwvMXw87r5l1ISIX+uPs+7MG/zdwvLaZLQUqj4mDxqjzYvYYFpdK5
	 rRGVJkoVg9lDwYZ3q6bIN/hvex67hXIZM1793/6uArmBUDln8wgXwujeIIY16SVqdu
	 4kF+kG71S1kuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB68CA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678199358.21264.5821866363521070235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da608eb80c2f12b73b192ff252595623c916f9bcaab1477d37ab936e4eecc129
Date: Tue, 02 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756781993
