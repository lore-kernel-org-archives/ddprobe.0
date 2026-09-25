Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F6339847
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790311234; cv=none; b=mwhluPTLy9LgZMYuafTJ/Q+IBb12DxuBTeTknN6VQxvnJmohkaZpi2H6uul6tuv5AeCrHRsJUfJsaYXsueE34yPa7AJd2DMZfCY2PU4enwiyJ+pGHUax623mAu5j9yGFk6JNoQQTZ3NZ/T4fFHGUdQX6gdrg6m85UAR0L/aA+7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790311234; c=relaxed/simple;
	bh=nDRXhY4jvQ0onimEy2CSncSnGaBXGKXjVfMUq5wIAXo=;
	h=To:Subject:From:Message-Id:Date; b=NcW75QP2mi2OnBqigcXPV7Uf/99IkNq3md2Sz/7AdDtP8Ut9rKw6Y4ZsrUmWlWcsW9Ib6AlW5qUqWuYJmtWyWgCjL6+26+BMP8Tju5YSluEdUrwAmyIeU1FtZ4+L4b0v+gXRWh2m2p77VRHqVbhbYf7oGd9ftvDD34AKtf+eN2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjmePM4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjmePM4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A41C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790311233;
	bh=nDRXhY4jvQ0onimEy2CSncSnGaBXGKXjVfMUq5wIAXo=;
	h=To:Subject:From:Date:From;
	b=XjmePM4sUKFR5/RlbYcU3gjCQx/hDW2rrZsZw3l+J+NMYDgit9UEoBetp1QnsJdEt
	 LjnVwEPIlW8fOmMBl4NW+Ze3or7CpZ8zsqjI2MZT+DR+QVPTK92oVYgypqlUMMHvWb
	 dDiMip4y5JKI8s+DgMhNEC+Wnla8BAodJkUuxXR1E+/CMsCYrFXkgFmPq0QVc7vyTS
	 5lUfmQuUyNeYmBy8AHQ77l60pCKQhqw9yIcIwKiw1QgkDxA6O1VGPBFP1SZrq/CT7/
	 j7x6mNoHEu6NkkiUZjagZTg7U73J0qOi+i72HU4lv3xXlGpSzN/DHdkyN91baQ0ng7
	 PqPkvwOA2IYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C56C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031123371.9493.12219899329194095692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb005f2c0a749be9251017376b423640ef2c5053cda086505f5cc4d7303f0b9
Date: Fri, 25 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790311233
