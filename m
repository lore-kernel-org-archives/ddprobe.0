Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E41225419
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736535353; cv=none; b=DGPnBSzINQb/K4WzXRyd8/jVEcTkFc8OIkqHLO1XcXBjYbMJMVdY+fWN1z518OBSkUvmaNgSQsqDtQZatX2WA5s+N7M7FEDi8VaZmpj/gB7iShm4d8pDwWVB8YADlLYTBFccdKCrX5LB52vQN38RGUp72Dd5zz1ETyYnZ12IwXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736535353; c=relaxed/simple;
	bh=GPSbPOAaW1OKaim838FcxqNpRxAFOOd0zRge2dcWUfE=;
	h=To:Subject:From:Message-Id:Date; b=H+WN+VsJEpvBYrosv41W1tiIJ/zaSGJlNgZpG8LHhYSwm+8lObZiC4xJK7UZZTT8xis2ouULFqr5Ajy+ME9+WRRS6+qPG78HRn/dD6rz/+awqQF7mvc02jRTiNtEvQBMtgqcLt4hyAoLHP3tKUQQ8XGT9f6nG7pmBkIVc7/12TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdBZ4EMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdBZ4EMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736535353;
	bh=GPSbPOAaW1OKaim838FcxqNpRxAFOOd0zRge2dcWUfE=;
	h=To:Subject:From:Date:From;
	b=DdBZ4EMpn0btrjjvPR5G2xjx3X752YcQhUgT3P9XPRSTaysd7n/UpyPF5N5UpwOxX
	 /NR9Ee4p/DjGsWzjFATsqPivr+F8Z12cnE7DBkodlbvTLoJpRtmPqH2PV0OIV9md0w
	 qdVyvDz5NLB7ADDe0CVn+DrgiLICkv/am+HfUhoCgdPyqROLx1nUrzdYQdIJIZjb/t
	 elivAiQrmf9poSJDF0SAZWMvBc8EKauZ2WZQ1/4vwrRfHcBNlWg5R3Dx3Wkk1e4DTn
	 mVRASR7l0XrJ9zaqtP6YQoEOXbymJt2tN9pAxR4fMOB0gTBGsbXCW0u/F3z7+EOh1F
	 5u65tcDvmF5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F205E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653535357.3984.8866782521406913175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c18fa7e2463490c3ddd1f567fa8bc6b2f09e7814b8e8aeebcc961798e291222
Date: Fri, 10 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736535353
