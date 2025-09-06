Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D1B1D6193
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757185793; cv=none; b=MYvcBzVjvw+mgh2o37fu/lDOTj2qBzMCmf9/tb9a3Lc24hebO5L7TUFHE0QAmWz7WWO9kIamc1oieAa2LDjNkO+4ep5cv5ynsGhUFYNprrQZnsfTsT8GmEim6wNvv6F6sAJBM2hJJbudpZ0QG+WUspFdvkXJBBhjtFG8gtcNI/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757185793; c=relaxed/simple;
	bh=SA25Z+j4vtm4WsCDKRg/r/LtgtHi7xPvzrJfOPkLZwo=;
	h=To:Subject:From:Message-Id:Date; b=ih+zi2jM045d6AF3hphoquKeEBEi19FI74RqIG2XC0fKUeEAZYtQ76XD6iB+ZojdUPVP/aMMVaSnVg7Iz46NXkSITyVsxknSCDDZ4hdq93tcNZSg6Ms8rJSwJmnxlovmb+U1hsY9VxIMe9he35nXXtGQNBYvTROiSPLDsER3TSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVGZ/CqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVGZ/CqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757185793;
	bh=SA25Z+j4vtm4WsCDKRg/r/LtgtHi7xPvzrJfOPkLZwo=;
	h=To:Subject:From:Date:From;
	b=IVGZ/CqYg3Medz3Wh+44+PpOlPMW4nswo94qlCp6HhCDOnSxiC+woBoHx8YE7fKJ6
	 5ibnsRO32syUdKkIPf8UrzHzmqtgwXwQHoQ/KicHg1Jr2z7NCf0HgfwtoXuq8/xPos
	 JtIjOZTXWKt1o6N7dpMV4ClQCSA4Mb42cN5Gr8noreeG+n/6SjknFUF8OTontTXuXi
	 cRofB083oq5XKiPPOc84mhiCJ59Xgc5rh74TScC4JaD7AOwZ92Dj/grC156aeTHSsY
	 6GV/m6PootiyWBIVK2wVgdWKq13eEAo+RlF3uJDsOIP32bia1oJYs66buUtZ/GVs+5
	 31TVpBYfixHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BCCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718579357.11378.3715169339370651399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893c0673cb6e663781d5882c211b0eeb47aabc482133a89483f0fbfc66036181
Date: Sat, 06 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757185793
