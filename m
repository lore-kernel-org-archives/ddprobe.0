Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061921DFFC
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728833154; cv=none; b=B8mc+H7mtjFEDR7NkjJg/yf137yx7pKkKkPpsByarZz6MpJsLJDMtcCHoBMUYAolCIfMN4+hxNIfZ6ta8SirnGXTRfH2CwkD/JAs5VbXtVwt0DnkdvjyJblFCqzqCLyhiBhH4Ozzeej0O2zTyKnSChmr6I6KckV7pXIpqOEmqN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728833154; c=relaxed/simple;
	bh=VN3dhp40xcoc62w899692FPk6rmnjkwwLLd+2C4rE2A=;
	h=To:Subject:From:Message-Id:Date; b=XzK/hEqrAwUb0gUpVt1Cn/Gas2qAqMGjfbXTuwbx1KgjygQvCx217JuwNP0uXvJTwOP7+F9BzuCEGbR8YTl0/otuSrCjrfqfovZIi8ltL1gCO05OjuJ3mYi6DGDBZ+eG53bVfoh7SXkSRYdBoiiEMUKfPJQzIZ9z08FrlvbIyvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlQkypGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlQkypGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C5FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728833153;
	bh=VN3dhp40xcoc62w899692FPk6rmnjkwwLLd+2C4rE2A=;
	h=To:Subject:From:Date:From;
	b=QlQkypGiSeKC2kyNpe4hiWoWI/oUpLMaTyBIs4oZJ9Qtr9NiQYnXQmmoZYGA92kYs
	 f7lNCqKckDY4r2DS6x+hB9FG5ikvl3/fMOkOHiQH6jkgLNkI4BiRRpef8FQFjCpubr
	 p2MIq51EJzE2qYAXoaWC5pWLHCplfCzfOzA6wdBzO89q7gYrpneDlKZNezMgxyWJ6Z
	 Aej7OXHnGavHHdKF28IsufE7vYZtpTN0h4g6Ff8HPq3eICqxNICNFsdRrtsDgZA4Qi
	 BP0eFuOXGXllVNxn0uy47O3/xT9Bi9agdNUFId4J39nLUf3Y9Iyk+ssZ6zbcalUrda
	 bLSubGtzyn1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E00ECF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883315362.5083.10138272449604629238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e6a5dab4b1cb5082fc46356a7a32a5e278a4e640ea4882c3041c998754d08b
Date: Sun, 13 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728833153
