Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F76225D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751514594; cv=none; b=lzB/pFMfu7EpYrp79i8S06QOI/A/2fWTmgcojgvuFAdMAdCI3HjJOX6gx/KjDxXcZXGE+iHAs+Wuz5FzRhiJXcPyYGEKOFFGlBGJ/o5LcXX0Gs/FHCc8u4N+rvECgNMOH5su1BWEcgGeIvyVXd9I6bkYPNV40I9Baj+r9EzXL+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751514594; c=relaxed/simple;
	bh=6V+AbruAZyFEOOpYw+4dMAUR04o79MvX8SWVJPGE7M0=;
	h=To:Subject:From:Message-Id:Date; b=RpeLT1AjwFTOZfOEWb7ggiMqeWtwYC15EDkuVjaxtOZjrnOLyDKrR80EJeD8fynOxs4KErjotvdcXxLhuNZiXlEDQ0r6pasEbj4+474kIxFQ+wbCUXNbTYm/U2Um/eF60Vh1+nXPS5b3Jf6t7fdLaD73PqlxgmTHikRyaS2gXm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKf4NMcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKf4NMcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A124BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751514593;
	bh=6V+AbruAZyFEOOpYw+4dMAUR04o79MvX8SWVJPGE7M0=;
	h=To:Subject:From:Date:From;
	b=ZKf4NMcRGysT59qKB2Fg0wV/skX5Vwt9dRPB7XdagYXHXAS+YhB0B8mr5WNt6s8mg
	 RKbDSnxoyd5eNbkkr8V65pbZ7HkrgIM1WhV6nSdxsK3AU6Az6YVY85jWiVHHwrzG3Z
	 IZx1Y9R0RJ0ChpODItOldPe0EKhJ0JifOFV8LQEaEQOHmUTOzF27DTnO28tmCeW87W
	 2sFtZw5/+IpCS6MrW5f9ZsF4xNKt06cOYM4fvWiG7odNwYXNalV6v9Im7RUuqMrEoM
	 6pjsvxDZcDQZ6h1N/HZ5DKGMCEggbSchhyxmZOE7i7du8otNXDwYK956T8hPE1rGyx
	 6JISBuKDcGlKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F576C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151459357.31861.6896450505987804150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333fa40e216a23902efefc0a9bf0a272624873943efcba8449e758d417a15638
Date: Thu, 03 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751514593
