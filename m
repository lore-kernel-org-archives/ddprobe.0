Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA0C36D4EC
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763839914; cv=none; b=m1Tnybd4oqpcwYanWMKTWAm7etSLmd42aVCoOuzMm10DgRi6BqaylPmFYvsLnEzm9ZWHf5U/+h1m+e8mE39vnqWqVo+Leyr5IKzL4s32AcMp2cKCjB7apZ8zDKgf0CIlTTAl5+NsRkVvDq7h89B2PyO0UPqq6ipu4VIW0Jq9ipM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763839914; c=relaxed/simple;
	bh=wXUSRae28+4xRNwEHjZjalyDhq6g6qbo0DLPYorMTe0=;
	h=To:Subject:From:Message-Id:Date; b=XjAWdGKHe+DDxEaaMNEjPaK4JL0PoWecZ2zJHt5rtg6WlRCGcMkdgq3U4FWuuVPtcLlPhAW7q532MV8ltKGFGpLOhsce6UItgQLxCRmwEmnbMzfVFktpWB9T9fn2NhfRY2Ycv8YeuOSnNRgpLoRStfDZg3xkBAYOifCSB9a5Q3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bw1rjb03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bw1rjb03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A693FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763839913;
	bh=wXUSRae28+4xRNwEHjZjalyDhq6g6qbo0DLPYorMTe0=;
	h=To:Subject:From:Date:From;
	b=Bw1rjb039pVEkWo4zvVcwvIBPO8BvXg36eh5oIv32FHWp3aEWAodsAGpLMixJPBnc
	 ChvbL6fyG5otQpp2tlkNhpQCJlW/RVlu7B8OeZPPCGXxu9h5Iq5PUdXnkqj1hkJ+r2
	 z7o2o+7d0j1/EfeQtw3tnk8THmKv5SNHmWbyD59Xw/KM1T5a+FIyGyZKHthd5hMw5h
	 TCqfwiD6zN0htO110vC29NWXuAGdJ3KTtS9EIfXP+nbFnLF8zMtbakiFlrtJpBBXhD
	 fFrFelJxODBlyO8roLkVLFb62sOlWqbWcQGklkmeRKIn2b7oDsYrmiSEpvFN9+qspr
	 CKYcG8+5y+SXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247DCFD2EB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383991359.9249.26536040822027122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ec5e70c8409d5088cf7abe2d69c0be846720616edb2ff7d6125a0acfae5b52
Date: Sat, 22 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763839913
