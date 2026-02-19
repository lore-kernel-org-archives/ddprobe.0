Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5243EBF2E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771460693; cv=none; b=bH7SR1zln0IqjSgVcVa5XjlIcwpcU5k08tEZIoc3MIkOieLowcdwP0Se9eWafGQEkrWA142O57FUB6gnPdWPtIafxbfijNFiun/tO2elKYe/KbDNhiMwL+ir9bIKlXHGkYgOkIfO3+JpgwHed94o0lTdBmx33n0cfo+OaNNEzrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771460693; c=relaxed/simple;
	bh=HX7JpWef42V6vU/GIBrxmEblgtitbXOdL5FOa97HVW0=;
	h=To:Subject:From:Message-Id:Date; b=BvUrjJ3QExl4qGERxBCOvCprVHvEaDqQUFNe8IKj0hdVZWiHhrJD6rRg86WEk/L+mFWhapEPaURtrEp2WYx9Ira8FnhMcO1VjRg4jTI1vYmvG141CCEN8Ye41slbTyFfWc9+l8qTgL8orQQ13USer+8xtHdUsGaYgzcZnOcrwGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC9BgqiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC9BgqiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EE1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771460693;
	bh=HX7JpWef42V6vU/GIBrxmEblgtitbXOdL5FOa97HVW0=;
	h=To:Subject:From:Date:From;
	b=fC9BgqiGFDFtXZoWL3L16CerKo1MZDFH0zfB3s3a3eNdIBPWUTkROicftKTzpzVSj
	 XvQxZtWqR1+DhAbhv63BnuK2BsCMPOI+cHx1IPDonmnLGHlnjR4t+RQP2ZGfukAm3g
	 ZiCq3EQMXB2tYqOXv+A52ie1NkChNGE0hjvhcBDlJJlyXiIzCYj82yTzNnjl+LfwP0
	 gRjVbD0xJKmHrng4MmhiF+carh8zIstuWeElz+LromVCmQ3lOC5NR0i1C2ZntBmv/B
	 m/2zBYQCqFpRM+3jaYApHzWowFaYHa8v2chjk81n0J8QuFYrvQ/jBHtVH872HSBjR8
	 uOO90v484jlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79A5E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146069359.2457.5986467207310823716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930a8b56b1922ce5759014992b4e5e43dc9785988ea95b92fbe9ba4a34a5cc04
Date: Thu, 19 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771460693
