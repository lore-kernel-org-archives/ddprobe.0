Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143CA18A6AB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754496595; cv=none; b=mP3s+wNigo/CNb/rYsdidghVJpV2i6+3Rkpt6CjlCffC4QMexITbaq+kvn8dCp0A8yQ9acBNHf/g11Dg+1UUG1kKnhjC4KKrnyg4guXuNd4Vou98flnqMNfimD7jxNKZSzJI4O0J/eAqukutyh1LldaEUBlbLz38/rYlYY0YbOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754496595; c=relaxed/simple;
	bh=jKbkwXknanRA6R5w9aaYXWcWZkRqOgXIQdYp7crERv0=;
	h=To:Subject:From:Message-Id:Date; b=VM6TMf1pXpa544xutfVR8LCwDF4aF0mSHUcmrj91MegSO/I/bfNQYPMZjBKXNkYWRdkEWEnUDurYbWsAcwvpeAR299s6GGPTe9ZBNtb/pyaXRSOpLn31F5DV4l50BDxxo+LTDragAjFFSgUe7sc2OslJYKhOnBL+B7qGSgv/yUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrynZSNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrynZSNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCA2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754496593;
	bh=jKbkwXknanRA6R5w9aaYXWcWZkRqOgXIQdYp7crERv0=;
	h=To:Subject:From:Date:From;
	b=YrynZSNjhvlyfk9khsHH+zIPyVSkYkYxiAlZk3SVdtqH5yndOymb61XGqoGDisVTs
	 RLacpYFzinnrclAE3EmAkgIQN/v9Wy17Os6ufvaM0MkoEnyf2FyaPONjPZuuizTtb7
	 1UVfQyHZ+T/77xdEwQAon8/x2jpXZcJ5sjMp6fqDkMyj6icGO2qcVrUfhCYqc9qbWN
	 SstkT682doS0161MeNIyZhCnd6oj7g4tjNzAcnVBBBWIrqKjcC/abWbQV9W0fwMYZl
	 N2DRtMIbP93XJOnGQ+lEZW3uAF4D0v7W3nlIK3ELPwrPr8Khw0W+mAZdtrme+r366y
	 iP1+eDlQM3kLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7CAC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449659357.6625.5955474487334276988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2a52c7c5934d84be8fcc8297a94ca6319fee3a478cee6e87074719b536b2b2
Date: Wed, 06 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754496593
