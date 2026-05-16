Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC371946DA
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778955034; cv=none; b=gmiUhrRUWa0XeX9Ge+g7lGEYOHGI1liMAJ38AtgNBslkrED/9ffuWd6HWlrhLnY/d9j0WfFOpYtLOITo3ELJm5K+5Zx8QH09PT2++blrfT8ufnAm9Ylumn/35fL4Xb+elDvM5Q+ROx5YWrFJMFMzr0UIwGA9b35xCPbvO4EYuZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778955034; c=relaxed/simple;
	bh=dAMTaJYrVi0EEpFZHyEK3WoUAzSb+FpEq705uM2b7V0=;
	h=To:Subject:From:Message-Id:Date; b=nBFwHHYUDPOJIz8orvxwECIZj5AgK5DAPkXmU//8iZbs+xs/V68KAP3TIYyG07F0N/cDscPhSjJiGAzhZgoVhTaxZRcvW/VYDxAQnrCTy+F8OukhYaWA7L17rwnKo6ygvVQWigTmlpxlw8xF3ZI72431nyXgUrQc7I7QoAqaJsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND6jLRWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND6jLRWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778955033;
	bh=dAMTaJYrVi0EEpFZHyEK3WoUAzSb+FpEq705uM2b7V0=;
	h=To:Subject:From:Date:From;
	b=ND6jLRWDLWxjygIldUyMmcR4Fy8pveN6ooNpKq9ePaJNJUX0y2NkbDaBV6Q3PpoJB
	 GKb1ejWfhckEVWAHr0MpX0ep/G7ob7qT1QC6HvCPhbSyGPjRPVLXJJXqorOd67OfyN
	 i8Po7ganpnwZKLALTsVVnYocFZbtSdjp9NZUqFqu4J7sZ7aqpKBPmDwXLXKUS1b+hZ
	 +s9d4HttVmdoYh8W/DK8A03StM7sYRtQG/6SRea71Ps8kVbG+Fwz25OalmXCd35n5l
	 CkbDZBRZM5chN1Qfz2+R+5doyFe2LKD/6QqB4yWpC1/lmCuvvQUJdV/iMVD16OcMpF
	 h0CEjsN8j/nyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1401CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895503368.30177.17621577385894701086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12793fbc9061b6c596bc825e202ec2fccd95b56b851f6a0d10a0f906f7721d59
Date: Sat, 16 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778955033
