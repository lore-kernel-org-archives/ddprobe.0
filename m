Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180861DF261
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774486494; cv=none; b=RmX48z4RT+hVEsNdtbtGuhvTzXPBBAKyqPm5lSibD1hQKXR4eRnJIRN65oTWrLM8nn3kR6P4GtxPH/4DruDMJB6s/mS44nQjxrxoPHVkzM5ONaQQn4EgxAhZOGSw5gsQsHl4Dpsg3EnFDuEKSdvR+Tr/DC0ByxyKlbAt6rLcAaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774486494; c=relaxed/simple;
	bh=qQyd5xFCW3BhT6TN3Zm+u3LBda1APVwEx6x3yvG3Vsk=;
	h=To:Subject:From:Message-Id:Date; b=pTiGfPN5OK/CucX519zJkl7+hDEEnkGIalHEEmbv7LsPL7cR6PxlIYIaZceaFTGyR8yAepcgXY/VePUxyhTjEcBEB4j+q+W7nUN1QPkmOM6c8YBwRyhzkKNTqedXDWzDuKBvUzLv1Bt1JvVi0pTu6PqT3QVnOGT94gLSuEp+QAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDRJykLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDRJykLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774486493;
	bh=qQyd5xFCW3BhT6TN3Zm+u3LBda1APVwEx6x3yvG3Vsk=;
	h=To:Subject:From:Date:From;
	b=LDRJykLrzzTFrFHZB5iJi3qD/URb+uNFbPuAF0g60cxCdE8ZT5XA1FHxzgAJ4vHiY
	 FW3SMjiclLBiq9O3vKnfRffOtu9zXwL7J/5fx7q5Dzv1nC4q3tQ78mXRh1GdkywdmU
	 jZjuOSJ99z0rQAlXoD5I4AoOIFmmUiwCpwqcc+waVE719Tk6SpfqYnqzccROOa8zdV
	 EPbUBFIwdyo2qND7diRinTbKNWrOe/pZEdnQPC4JrrW1JT1XyGxg/6KpB+zc2X47TK
	 xU5dnevLZJTEWAq++aSzGHGRwkWy7VT+kXpKrv6qszOoGMppluEyxWSbofeR+GfZBn
	 JC8XMe2tLHdBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90796109E530
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448649358.6141.17513460097007248930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833b2757c9cd7208fe2e8ef8093b2c771a86b53a26a4e3222d66b7d95e3c772f
Date: Thu, 26 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774486493
