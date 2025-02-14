Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34372186E40
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739531334; cv=none; b=DmO1A5zkEMY+T8n/Zezl8CHoFsiwhpe/RwugZNo+DdWvtgfD6satV+sHSziARsU9Iax25mteYGt/Smj+5iLBWxuVICgGSo5tm5eECZ8+WH/sKuJgMIKygxcJ8pEDlH1kyzXXHAZKAWxdkfiYqbLZCiUsAyjzWwJ2ehBbgi1pjdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739531334; c=relaxed/simple;
	bh=R+zBIazqvxyS5c67GyKfg0n7QtmdCXX5xuDbvDqs604=;
	h=To:Subject:From:Message-Id:Date; b=J2KIC/VMN6FEhJCXbTElJZVoMlHXHmYTr1eLh8Md4qwMzvC017cxXn6ueQETIQ8BA49IXtLzN3ZyBmYZR2+JsPRM1+8dy60kMpU20iaMnd6XcFCtB8tL1/O7VSyzkSpYaG2e/gwTBqTWZpn9BCq5IKkCV+3baLPGI9tkJlEVCXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so6bk5cY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so6bk5cY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2155C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739531333;
	bh=R+zBIazqvxyS5c67GyKfg0n7QtmdCXX5xuDbvDqs604=;
	h=To:Subject:From:Date:From;
	b=so6bk5cYhqPX6/gF0Z/vzEXhcO74M/Pd1LyQT8uCHzLd4FWOKd5DA4KQ87WDIuCo3
	 mmR4WK6D6+TziAs4lAQIqCqWUx2NGhwJIDuCu8HfVnjxhMJj4h25S+We80wyRGhqnp
	 3Z2KdRbMPq94kHg5F5hbUUG5gNFf3sf/7HEjkketZvEtz1guBkrl/uQ9n//ewDalHZ
	 BkgGwe0yBcdJj19ishJyMVfuMVv69Q/9ld/Ga9eCLcGUWJFqL1bQpmv7t/N2I89XuS
	 gJwKv9JaSIHtPoJLFI2Uc2pjKaJcT82WXb/7tzl5XtIZA4pDNHSD1SXZiqc7AyywQo
	 M5w2+xjZ5XwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FCC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953133358.10352.13424827633153549726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af8f6e3b637cb7c0f426af944e69d7122aec1635b004f5fecf9397c6f87a22
Date: Fri, 14 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739531333
