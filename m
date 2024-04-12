Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7346C84DF6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712965763; cv=none; b=HGvt3Np1vNuz99Ulfde3wtjmSBE3k3YYtzB+FE0fBed0yqY3k9di5rLiQ1zg9VnY5sJyXqjsjt34qp1TgY5EKjW08ho+aVHuFnvm7xC4MbjpPFqkQ2MQxdSsfrjINiia15E1uBBlKvmeUgNke5QOORDtEYXAmxKWK86Nzk5Bfqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712965763; c=relaxed/simple;
	bh=cV1h0nXPi4AID5rCHtkubu1vaa9n+jcvwU8IW62MzXA=;
	h=To:Subject:From:Message-Id:Date; b=XAXs7fCMZkKmHlNwBJRGv+6mJ7DQOvZAXsM3RncyITDusvILcudwQXagwOi8O/4bs7v4cKCW3fxupSoPooGyiD1d2TDi3EHSqySkNJUqXdyxhWYrMMB6sI1SCaufIi4H041/U/tkGYv74U+H7CCbXlurNxqogrM9qrQfv0kIT9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGGLqipG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGGLqipG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE58EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712965762;
	bh=cV1h0nXPi4AID5rCHtkubu1vaa9n+jcvwU8IW62MzXA=;
	h=To:Subject:From:Date:From;
	b=BGGLqipGnbNGgD+Bpx+VdpGOCeCT0jvs2GbKMjPaMWhU1lNxLjvV5pkCdgYcDNWaf
	 hFc+AvsGs2u5Tok0vsLQsEnOtCPJbN0R98bielyOtXfMyKOHx8ZMVRMqFt2k0hvRT0
	 hO28mUBO+6Wi2s/kYeG1Se19qyWNNCSB/sMv6hBlr+zl8/Kt1D/bKHEXFTm2/hpZxJ
	 TwNq0uPaT+SzsUjBlEUj+L4VR/HaBkzAgTk+hDUooyKUS4zbCRKyZvPYXPYd6haQOl
	 AsoakzWkCveiD0J5UeXit8ydUp05XginZaktqELhwSuhv8v/rniZCaTRLG/3WZmxmg
	 7QMJG4SX29jXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A5EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296576279.12147.11843898711862283394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad91464dd8349635dce87ede3421ab0d60684c1510fa5b8a8625752b317a069
Date: Fri, 12 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712965762
