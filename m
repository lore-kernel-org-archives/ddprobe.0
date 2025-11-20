Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C63199E9D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763649114; cv=none; b=VxehfGZ1DHZK0N4sZsFCk2JCx8eJKmSx+UgT6kNzFBp04Me03tOe750gRWuvqQilSpL15C/dYwQPnPYYNviBGphAoYYPyntwqwdlYlLC4hjn6Z4EcKGx8W+ZnSxsugVjk2zV53zlZWz/ZNI2SapDBzmx8awhcI8J/rhTDKP6w/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763649114; c=relaxed/simple;
	bh=qWpdH12bLGpug+Mi5vgNHoEo5ohy5kTwlVclwCPxluI=;
	h=To:Subject:From:Message-Id:Date; b=QW8MKVRCG1NtQ1H54B1wNysf30AVn36n++1AI/L0SedCorpJo6Jhp2b7h5A2irurSc6h6lBa/KIDfnFBHS4S3oxX2WUX2o4CPI20ac1zBSNqn20Hzw5DIhnwkO12vHoJIRND98wBOxZFAzCtBJHGf0YRs4njuOA9xtPHSVkCq2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWZhRpVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWZhRpVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763649113;
	bh=qWpdH12bLGpug+Mi5vgNHoEo5ohy5kTwlVclwCPxluI=;
	h=To:Subject:From:Date:From;
	b=HWZhRpVwNWRJM3wGC0GVHilCdzbhORbMafU2OdAbWsbUjH6PufvZKbp+w6j/xzzdI
	 1cL/y5RJkKAfkEhiFRvGlEhiv2VuA81Wu2A69fbYOxUs39PPX1H6MUmvI17N5Z8Okv
	 OUQ2mo2q5piSXH/mRCo0TINFl+qgZvBMUeIZgr5933yYC7brYkv59OedNmTCQByowe
	 0QBwSfnECG2e5kpFIYU7DG4dMSlfG+5HYftaGpEXueZC1DBV+ppg0DLxho17SfFE/X
	 Lkxirdez7ph8XPmuzOMqM9XLyY+U50vCpktK9Hs4zzTNp3KBcl1SH9y1cR8nwLM7z0
	 L5wYzohpxqyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C1CF8863
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364911358.13946.15291778147248984417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6a31a4e4df31a96b4923c4c25d5ae4736b699d49f7fe6abcc12fe9bca207da
Date: Thu, 20 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763649113
