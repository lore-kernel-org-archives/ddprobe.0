Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC3318137
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756471194; cv=none; b=GVZcv9E5Fxe81hxECQf4uiEPKfQEtMp7jD2w0lfXJcM21oDBR/1FNK1ED7Ey50LHv4BreJY3TEewP26SYUW2VRxV+Xc1eBwkZZbpFy4oftjheWn+Te5wa7UzCOwCyZw5JRKJbwcbHtFj7y3xq9cLBFWZ2tSaFBG8oWdWmhwsTuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756471194; c=relaxed/simple;
	bh=pvB7tU/9Et9rSeg0nHbc2J5ONJtD2B35ldPJ2LUO9zc=;
	h=To:Subject:From:Message-Id:Date; b=jCA+j3W/7ZQumG91H3ENcTlVroemZTxQyb9BKVEbk++m0X/AXB9FVoDfl2Ebt7ZlzJblMlDNTKbtmI/nKDF8EGOdFGNW8tYaHBwUcCoTUWtaJmPpg205gwTzlbr9fFkKmJGmVREFfTatJDkc7nzpGtqmTKq1mHl0JppQzERVXOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2EEXZ9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2EEXZ9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A319DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756471193;
	bh=pvB7tU/9Et9rSeg0nHbc2J5ONJtD2B35ldPJ2LUO9zc=;
	h=To:Subject:From:Date:From;
	b=E2EEXZ9kudyj2ikK4LZoFVjoUbfB4WkDg6WIM98PCzRW65+b4oO/IzecVpBAiOfW2
	 qQXfgg7I83mGsBTrfZWc2HRkJ4Opk6BWDFs/rPSKJcIqMIQnOIBkrhLbWZeKlpZAdx
	 cWZ0npIcBAGLbqW4IU2qM6nUH1E0WC66oQo56ZJEdkz79u9kWKe+h32rc8/cstS0T/
	 ohwoFNfDdby6CBak6poNVaEXC+kUNyXCrv0VYKZ5YcrxKL9OjgCwqkIDipwfOxMMlt
	 3UE1bCCpwAj2A6gUrQAj01RbmtRt0auoHuYLNSYHc/ElJVLySeBYgWL4Jhk1+vjjY+
	 hwMFXmIYQrkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F230CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647119357.9699.6478099700758640971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323e0ffccef04b4942dd2f0f26ebd2237d37662dcc5e72c503c798f19bff722d
Date: Fri, 29 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756471193
