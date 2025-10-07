Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AC81F4606
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759863594; cv=none; b=VhhjpFplXZtkaDfW+cljfiSbSkmB6daoUxyUP9Qtflew7PzzS0PkNwfAwvemLY977r+2ei2yIHWf95exqJZSY4o6kPT+I1KVTRqiTklA3QS59BhoeOAuDMWbBA+EQLwefGJKwZcHjT+/QI1Qt2JLtbIZjrNO7byQ2JT52CLbpXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759863594; c=relaxed/simple;
	bh=YM2UYmEy81GG4fFPiI81qfkN3IhN5eGSDEogmSIhcDE=;
	h=To:Subject:From:Message-Id:Date; b=bBg1zxnQn208sJATC+RmRX37Gvstp+UrlMZn/OTbv1eKKetptO9f+Re/1WNAbhii9k7u5zYEthNVfGP5jQtlq+sciHNhUv9kDQp4GjMmtDGVkVt7CUlFvyFVfUdvSdR4cmxDxDle/rayCl5hMxzUbJQX4KK305mQeAxB06rbrDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYUsPFgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYUsPFgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759863593;
	bh=YM2UYmEy81GG4fFPiI81qfkN3IhN5eGSDEogmSIhcDE=;
	h=To:Subject:From:Date:From;
	b=qYUsPFgBZusKHqkWoZIpO+9yboF5S1kfY81GFv5nmvjPoF6Xg3lcKwI2RV6OdnDAa
	 n+WpZrR9NcnMkul/rDdPDD2JKZuwGv8CbveoAI3xwWTAHNP9CUp4qDQ1VAEnGhTQDM
	 Z5HrMu9Ye7EZsl/kPNcvdTml6AhZeVLAUqjBB6dGqdOCiVt50exwvRYeTp2K+8yUoN
	 mu44VNzTOdQmDfnHkAeRh735fAsiZx9EzoGJf5IdIpsK2pdtYDyXGGL/Am61a7TbLd
	 HXI8fNppguFawnFgOOevWNG/oGkXYpGXo7p0LBo/dMq2bwfpbpIRZDQPviAJg7K9AG
	 K8Wo2BIPVyR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB57CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986359358.3147.7615563088965778083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119a7ac9c91095dcbb21c8650c90f80e3da29ea80544175045e23b6ec758e903
Date: Tue, 07 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759863593
