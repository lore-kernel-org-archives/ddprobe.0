Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F94374A16
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786394434; cv=none; b=OClqOFhA5GtuwENzJoMqVAnaDddGFoQBvy8lpp70KJPmN2h8fQgsnDjIr+PUCJy+Ee6nSEtpSJS5LZInriAgAdpQNbEGbWmsoObl4kTB6m0ZMKt3wYun8Of902GFQHhW/uiD/MWMxeJqABoEz7c1+8b3n8WPzFBug5G+ACLEujI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786394434; c=relaxed/simple;
	bh=pqgzHlZSC2LkmkGWRqNi11QW3eKaJj212CaWZvqCy6Y=;
	h=To:Subject:From:Message-Id:Date; b=KMgir2tF9qqewOIwPQ1mpNUGsqoSxbibIjk6uoqVD4Js79YuagvbBRZHjBkJkv/QOHog8xbrR6HrB9zEKVectuuPKJrXrRGd0Bb4AIHmAlk6VXxRzUVsF+20urCHLRVFZBalPFNXpNNZY8hJXVBRRwkO0VvqRiPWzq34VUpYHxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSCyuMO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSCyuMO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C955EC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786394433;
	bh=pqgzHlZSC2LkmkGWRqNi11QW3eKaJj212CaWZvqCy6Y=;
	h=To:Subject:From:Date:From;
	b=bSCyuMO+BVL4tLUcHX/4C4CDrmH1eCXNSfnCZ39xUgkBYGrjsm/aqYLC5PpC/y2KM
	 GXVSqYces6iXEbGovg1fNoNWPzxKdiYrl8jO9NR2IOPbh2zuBW2DP/uzV/9xzDljQw
	 2uBk++t+L66BVvh3+su1a7LWTO8DNuYKGBFjJzoKgL7i86SxNn+wQ5HBNshHEmkW+i
	 gi2HjKfKuPByUNXly6lBpnyxnNxNVmhtr9AgOnV5o7XTDTj9p2lMcS3WZRn9anQCse
	 XVvbqGFxy8wfQTC2I18jSNJPWwfxt7TLDr7ctSP4CbvNoXH7Se6nkkz3/yGIP/kVR5
	 Rhpx/ClM5AkiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A809DC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639443368.27088.13911398052970761276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8785a384d8287c545a07fe51149c35253e06785ee22b053e46f99a832b67f9fc
Date: Mon, 10 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786394433
